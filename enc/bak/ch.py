import nacl.secret
import nacl.utils

key = nacl.utils.random(nacl.secret.SecretBox.KEY_SIZE)
nonce = nacl.utils.random(nacl.secret.SecretBox.NONCE_SIZE)
plaintext = b"Hello, world!"

box = nacl.secret.SecretBox(key)
ciphertext = box.encrypt(plaintext, nonce)

decrypted = box.decrypt(ciphertext)

print(decrypted)
