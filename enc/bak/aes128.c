#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <openssl/evp.h>

#define AES_BLOCK_SIZE 16

void handleErrors(void);

int main(void) {
  // Initialize key and IV
  unsigned char *key = (unsigned char *)"0123456789012345";
  unsigned char *iv = (unsigned char *)"0123456789012345";

  // Initialize plaintext and ciphertext
  unsigned char *plaintext = (unsigned char *)"Hello, world!";
  int plaintext_len = strlen((char *)plaintext);
  unsigned char ciphertext[128];
  int ciphertext_len;

  // Initialize AES context
  EVP_CIPHER_CTX *ctx;
  if (!(ctx = EVP_CIPHER_CTX_new())) handleErrors();

  // Initialize encryption operation
  if (1 != EVP_EncryptInit_ex(ctx, EVP_aes_128_cbc(), NULL, key, iv)) handleErrors();

  // Perform encryption
  if (1 != EVP_EncryptUpdate(ctx, ciphertext, &ciphertext_len, plaintext, plaintext_len)) handleErrors();
  int len = ciphertext_len;

  // Finalize encryption
  if (1 != EVP_EncryptFinal_ex(ctx, ciphertext + len, &ciphertext_len)) handleErrors();
  len += ciphertext_len;

  // Print ciphertext
  printf("Ciphertext is %d:\n", len);
  for (int i = 0; i < len; i++) {
    printf("%02x", ciphertext[i]);
  }
  printf("\n");

  // Initialize decryption operation
  if (1 != EVP_DecryptInit_ex(ctx, EVP_aes_128_cbc(), NULL, key, iv)) handleErrors();

  // Perform decryption
  unsigned char decryptedtext[128];
  int decryptedtext_len;
  if (1 != EVP_DecryptUpdate(ctx, decryptedtext, &decryptedtext_len, ciphertext, len)) handleErrors();

  // Finalize decryption
  if (1 != EVP_DecryptFinal_ex(ctx, decryptedtext + decryptedtext_len, &decryptedtext_len)) handleErrors();

  // Print decrypted plaintext
  decryptedtext_len += decryptedtext_len;
  printf("Decrypted text is %d:\n", decryptedtext_len);
  for (int i = 0; i < decryptedtext_len; i++) {
    printf("%c", decryptedtext[i]);
  }
  printf("\n");

  // Clean up
  EVP_CIPHER_CTX_free(ctx);

  return 0;
}

void handleErrors(void) {
  printf("An error occurred\n");
  exit(1);
}
