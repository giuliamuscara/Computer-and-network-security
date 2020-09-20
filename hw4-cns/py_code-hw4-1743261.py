import os
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.backends import default_backend
from Crypto.Cipher import AES

print("Encrypting with cryptography library using AES in CBC mode...\n")
backend = default_backend()
key = os.urandom(32)
iv = os.urandom(16)
cipher = Cipher(algorithms.AES(key), modes.CBC(iv), backend=backend)
encryptor = cipher.encryptor()
print("Plaintext is:\na secret message\n")
ct = encryptor.update(b"a secret message") + encryptor.finalize()
print("Ciphertext is:")
print(ct)
print("\nDecrypting with pycrypto library using AES in CBC mode...\n")
obj = AES.new(key, AES.MODE_CBC, iv)
pt = obj.decrypt(ct).decode()
print("The decrypted text is:")
print(pt)



