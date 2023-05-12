#include <sodium.h>
#include <stdio.h>
#include <string.h>

int main()
{
    // Initialize the libsodium library
    if (sodium_init() < 0) {
        printf("Error initializing libsodium.\n");
        return -1;
    }

    // Define the plaintext to encrypt
    unsigned char plaintext[50] = "Hello, world!";

    // Define the encryption key and nonce
    unsigned char key[crypto_stream_chacha20_KEYBYTES];
    unsigned char nonce[crypto_stream_chacha20_NONCEBYTES];
    randombytes_buf(key, sizeof key);
    randombytes_buf(nonce, sizeof nonce);

    // Allocate space for the ciphertext
    unsigned char ciphertext[50];

    // Encrypt the plaintext using the ChaCha20 stream cipher
    crypto_stream_chacha20_xor(ciphertext, plaintext, sizeof plaintext, nonce, key);

    // Print the plaintext, ciphertext, key, and nonce
    printf("Plaintext: %s %d\n", plaintext, sizeof(plaintext));
    printf("Ciphertext: %s %d\n", ciphertext, sizeof(ciphertext));
    printf("Key: %s %d\n", key, sizeof(key));
    //printf("Nonce: %s\n", nonce);

    // Decrypt the ciphertext using the ChaCha20 stream cipher
    unsigned char decrypted[50];
    crypto_stream_chacha20_xor(decrypted, ciphertext, sizeof ciphertext, nonce, key);

    // Print the decrypted plaintext
    printf("Decrypted: %s\n", decrypted);

    return 0;
}

