import time
from timeit import timeit
import string 
import subprocess
import os

wordlist = open("english.dic", "r")
time = 0
for word in wordlist:
    word = word.split("\n")[0]
    print("Trying word {}".format(word))
    dec_time = timeit(stmt = "subprocess.call(\" openssl enc -aes-192-cbc -d -pbkdf2 -in ciphertext.enc -out plaintext-hw2-1743261.txt -k %s\",shell=True)" %(word),setup="import subprocess;",number=1)
    test_file = open("plaintext-hw2-1743261.txt", "r")
    time += dec_time
    try:
        read = test_file.read()
        break
    except UnicodeDecodeError:
        continue   
print("Total time {}".format(time))