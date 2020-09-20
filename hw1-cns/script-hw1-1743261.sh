#!/bin/bash
echo "encryption and decryption of a 100kb file with triple des and different operating modes" 
time openssl enc -des-ede3-cbc -in file_100kb.txt -out enc_100kb.txt -e -salt -K 022e0ea8346aea1b769e1e1bbaff6118 -iv 01020030405060708
time openssl enc -des-ede3-cbc -in enc_100kb.txt -out dec_100kb.txt -d -K 022e0ea8346aea1b769e1e1bbaff6118 -iv 01020030405060708

time openssl enc -des-ede3 -in file_100kb.txt -out enc_100kb.txt -e -salt -K 1accbdd0d659c0209b3eb63eb083eab3
time openssl enc -des-ede3 -in enc_100kb.txt -out dec_100kb.txt -d -K 1accbdd0d659c0209b3eb63eb083eab3 

echo "encryption and decryption of a 1Mb file with triple des and different operating modes" 
time openssl enc -des-ede3-cbc -in file_1mb.txt -out enc_1mb.txt -e -salt -K 022e0ea8346aea1b769e1e1bbaff6118 -iv 01020030405060708
time openssl enc -des-ede3-cbc -in enc_1mb.txt -out dec_1mb.txt -d -K 022e0ea8346aea1b769e1e1bbaff6118 -iv 01020030405060708

time openssl enc -des-ede3 -in file_1mb.txt -out enc_1mb.txt -e -salt -K 1accbdd0d659c0209b3eb63eb083eab3
time openssl enc -des-ede3 -in enc_1mb.txt -out dec_1mb.txt -d -K 1accbdd0d659c0209b3eb63eb083eab3

echo "encryption and decryption of a 10Mb file with triple des and different operating modes"
time openssl enc -des-ede3-cbc -in file_10mb.txt -out enc_10mb.txt -e -salt -K 022e0ea8346aea1b769e1e1bbaff6118 -iv 01020030405060708
time openssl enc -des-ede3-cbc -in enc_10mb.txt -out dec_10mb.txt -d -K 022e0ea8346aea1b769e1e1bbaff6118 -iv 01020030405060708

time openssl enc -des-ede3 -in file_10mb.txt -out enc_10mb.txt -e -salt -K 1accbdd0d659c0209b3eb63eb083eab3
time openssl enc -des-ede3 -in enc_10mb.txt -out dec_10mb.txt -d -K 1accbdd0d659c0209b3eb63eb083eab3

echo "encryption and decryption of a 100Mb file with triple des and different operating modes" 
time openssl enc -des-ede3-cbc -in file_100mb.txt -out enc_100mb.txt -e -salt -K 022e0ea8346aea1b769e1e1bbaff6118 -iv 01020030405060708
time openssl enc -des-ede3-cbc -in enc_100mb.txt -out dec_100mb.txt -d -K 022e0ea8346aea1b769e1e1bbaff6118 -iv 01020030405060708

time openssl enc -des-ede3 -in file_100mb.txt -out enc_100mb.txt -e -salt -K 1accbdd0d659c0209b3eb63eb083eab3
time openssl enc -des-ede3 -in enc_100mb.txt -out dec_100mb.txt -d -K 1accbdd0d659c0209b3eb63eb083eab3

echo "encryption and decryption of a 100kb file with AES-256 and different operating modes"
time openssl enc -aes-256-cbc -in file_100kb.txt -out enc_100kb.txt -e -salt -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76
time openssl enc -aes-256-cbc -in enc_100kb.txt -out dec_100kb.txt -d -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76

time openssl enc -aes-256-ecb -in file_100kb.txt -out enc_100kb.txt -e -salt -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512
time openssl enc -aes-256-ecb -in enc_100kb.txt -out dec_100kb.txt -d -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512

echo "encryption and decryption of a 1Mb file with AES-256  and different operating modes"
time openssl enc -aes-256-cbc -in file_1mb.txt -out enc_1mb.txt -e -salt -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76
time openssl enc -aes-256-cbc -in enc_1mb.txt -out dec_1mb.txt -d -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76

time openssl enc -aes-256-ecb -in file_1mb.txt -out enc_1mb.txt -e -salt -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512
time openssl enc -aes-256-ecb -in enc_1mb.txt -out dec_1mb.txt -d -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512

echo "encryption and decryption of a 10Mb file with AES-256 and different operating modes"
time openssl enc -aes-256-cbc -in file_10mb.txt -out enc_10mb.txt -e -salt -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76
time openssl enc -aes-256-cbc -in enc_10mb.txt -out dec_10mb.txt -d -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76

time openssl enc -aes-256-ecb -in file_10mb.txt -out enc_10mb.txt -e -salt -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512
time openssl enc -aes-256-ecb -in enc_10mb.txt -out dec_10mb.txt -d -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512

echo "encryption and decryption of a 100Mb file with AES-256 and different operating modes"
time openssl enc -aes-256-cbc -in file_100mb.txt -out enc_100mb.txt -e -salt -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76
time openssl enc -aes-256-cbc -in enc_100mb.txt -out dec_100mb.txt -d -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76

time openssl enc -aes-256-ecb -in file_100mb.txt -out enc_100mb.txt -e -salt -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512
time openssl enc -aes-256-ecb -in enc_100mb.txt -out dec_100mb.txt -d -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512

echo "encryption and decryption of a 100kB file with rc4 and rc4-40"
time openssl enc -rc4 -in file_100kb.txt -out enc_100kb.txt -e -salt -K 64d8184e2747ba531aeb2fa7c6cc3b07
time openssl enc -rc4 -in enc_100kb.txt -out dec_100kb.txt -d -K 64d8184e2747ba531aeb2fa7c6cc3b07

time openssl enc -rc4-40 -in file_100kb.txt -out enc_100kb.txt -e -salt -K 4232c678c5
time openssl enc -rc4-40 -in enc_100kb.txt -out dec_100kb.txt -d -K 4232c678c5

echo "encryption and decryption of a 1MB file with rc4 and rc4-40"
time openssl enc -rc4 -in file_1mb.txt -out enc_1mb.txt -e -salt -K 64d8184e2747ba531aeb2fa7c6cc3b07
time openssl enc -rc4 -in enc_1mb.txt -out dec_1mb.txt -d -K 64d8184e2747ba531aeb2fa7c6cc3b07

time openssl enc -rc4-40 -in file_1mb.txt -out enc_1mb.txt -e -salt -K 4232c678c5
time openssl enc -rc4-40 -in enc_1mb.txt -out dec_1mb.txt -d -K 4232c678c5

echo "encryption and decryption of a 10MB file with rc4 and rc4-40"
time openssl enc -rc4 -in file_10mb.txt -out enc_10mb.txt -e -salt -K 64d8184e2747ba531aeb2fa7c6cc3b07
time openssl enc -rc4 -in enc_10mb.txt -out dec_10mb.txt -d -K 64d8184e2747ba531aeb2fa7c6cc3b07

time openssl enc -rc4-40 -in file_10mb.txt -out enc_10mb.txt -e -salt -K 4232c678c5
time openssl enc -rc4-40 -in enc_10mb.txt -out dec_10mb.txt -d -K 4232c678c5

echo "encryption and decryption of a 100MB file with rc4 and rc4-40"
time openssl enc -rc4 -in file_100mb.txt -out enc_100mb.txt -e -salt -K 64d8184e2747ba531aeb2fa7c6cc3b07
time openssl enc -rc4 -in enc_100mb.txt -out dec_100mb.txt -d -K 64d8184e2747ba531aeb2fa7c6cc3b07

time openssl enc -rc4-40 -in file_100mb.txt -out enc_100mb.txt -e -salt -K 4232c678c5
time openssl enc -rc4-40 -in enc_100mb.txt -out dec_100mb.txt -d -K 4232c678c5

echo "encryption and decryption of a 100kB file with blowfish"
time openssl enc -bf-cbc -in file_100kb.txt -out enc_100kb.txt -e -salt -K 123aec75928f9f73fd1bd1dfe7651437 -iv 10072f9389adc50a92f6bb5cb8124dce
time openssl enc -bf-cbc -in enc_100kb.txt -out dec_100kb.txt -d -K 123aec75928f9f73fd1bd1dfe7651437 -iv 10072f9389adc50a92f6bb5cb8124dce

time openssl enc -bf-ecb -in file_100kb.txt -out enc_100kb.txt -e -salt -K 94cb0f07b4ebfad428edf2c459cc89fa
time openssl enc -bf-ecb -in enc_100kb.txt -out dec_100kb.txt -d -K 94cb0f07b4ebfad428edf2c459cc89fa

echo "encryption and decryption of a 1MB file with blowfish"
time openssl enc -bf-cbc -in file_1mb.txt -out enc_1mb.txt -e -salt -K 123aec75928f9f73fd1bd1dfe7651437 -iv 10072f9389adc50a92f6bb5cb8124dce
time openssl enc -bf-cbc -in enc_1mb.txt -out dec_1mb.txt -d -K 123aec75928f9f73fd1bd1dfe7651437 -iv 10072f9389adc50a92f6bb5cb8124dce

time openssl enc -bf-ecb -in file_1mb.txt -out enc_1mb.txt -e -salt -K 94cb0f07b4ebfad428edf2c459cc89fa
time openssl enc -bf-ecb -in enc_1mb.txt -out dec_1mb.txt -d -K 94cb0f07b4ebfad428edf2c459cc89fa

echo "encryption and decryption of a 10MB file with blowfish"
time openssl enc -bf-cbc -in file_10mb.txt -out enc_10mb.txt -e -salt -K 123aec75928f9f73fd1bd1dfe7651437 -iv 10072f9389adc50a92f6bb5cb8124dce
time openssl enc -bf-cbc -in enc_10mb.txt -out dec_10mb.txt -d -K 123aec75928f9f73fd1bd1dfe7651437 -iv 10072f9389adc50a92f6bb5cb8124dce

time openssl enc -bf-ecb -in file_10mb.txt -out enc_10mb.txt -e -salt -K 94cb0f07b4ebfad428edf2c459cc89fa
time openssl enc -bf-ecb -in enc_10mb.txt -out dec_10mb.txt -d -K 94cb0f07b4ebfad428edf2c459cc89fa

echo "encryption and decryption of a 100MB file with blowfish"
time openssl enc -bf-cbc -in file_100mb.txt -out enc_100mb.txt -e -salt -K 123aec75928f9f73fd1bd1dfe7651437 -iv 10072f9389adc50a92f6bb5cb8124dce
time openssl enc -bf-cbc -in enc_100mb.txt -out dec_100mb.txt -d -K 123aec75928f9f73fd1bd1dfe7651437 -iv 10072f9389adc50a92f6bb5cb8124dce

time openssl enc -bf-ecb -in file_100mb.txt -out enc_100mb.txt -e -salt -K 94cb0f07b4ebfad428edf2c459cc89fa
time openssl enc -bf-ecb -in enc_100mb.txt -out dec_100mb.txt -d -K 94cb0f07b4ebfad428edf2c459cc89fa
