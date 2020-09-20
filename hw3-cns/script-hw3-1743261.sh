#!/bin/bash
echo "encryption and decryption of a 100kb txt file with AES-256 and different operating modes"
time openssl enc -aes-256-cbc -in file_100kb.txt -out enc_100kb.txt -e -salt -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76
time openssl enc -aes-256-cbc -in enc_100kb.txt -out dec_100kb.txt -d -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76

time openssl enc -aes-256-gcm -in file_100kb.txt -out enc_100kb.txt -e -salt -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512 -iv 36c5a68cde1c430cc15c9ee69e860106
time openssl enc -aes-256-gcm -in enc_100kb.txt -out dec_100kb.txt -d -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512 -iv 36c5a68cde1c430cc15c9ee69e860106

echo "encryption and decryption of a 1Mb txt file with AES-256  and different operating modes"
time openssl enc -aes-256-cbc -in file_1mb.txt -out enc_1mb.txt -e -salt -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76
time openssl enc -aes-256-cbc -in enc_1mb.txt -out dec_1mb.txt -d -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76

time openssl enc -aes-256-gcm -in file_1mb.txt -out enc_1mb.txt -e -salt -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512 -iv 7a0cdc90bcde7a0ad875526180c177dc
time openssl enc -aes-256-gcm -in enc_1mb.txt -out dec_1mb.txt -d -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512 -iv 7a0cdc90bcde7a0ad875526180c177dc

echo "encryption and decryption of a 10Mb txt file with AES-256 and different operating modes"
time openssl enc -aes-256-cbc -in file_10mb.txt -out enc_10mb.txt -e -salt -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76
time openssl enc -aes-256-cbc -in enc_10mb.txt -out dec_10mb.txt -d -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76

time openssl enc -aes-256-gcm -in file_10mb.txt -out enc_10mb.txt -e -salt -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512 -iv ef80dbf75cf0264a5805ecb6ef202dda
time openssl enc -aes-256-gcm -in enc_10mb.txt -out dec_10mb.txt -d -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512 -iv ef80dbf75cf0264a5805ecb6ef202dda

echo "encryption and decryption of a 100kb image  with AES-256 and different operating modes"
time openssl enc -aes-256-cbc -in 100kb.jpg -out enc_100kb.jpg -e -salt -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76
time openssl enc -aes-256-cbc -in enc_100kb.jpg -out dec_100kb.jpg -d -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76

time openssl enc -aes-256-gcm -in 100kb.jpg -out enc_100kb.jpg -e -salt -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512 -iv 36c5a68cde1c430cc15c9ee69e860106
time openssl enc -aes-256-gcm -in enc_100kb.jpg -out dec_100kb.jpg -d -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512 -iv 36c5a68cde1c430cc15c9ee69e860106

echo "encryption and decryption of a 1Mb image with AES-256  and different operating modes"
time openssl enc -aes-256-cbc -in 1mb.jpg -out enc_1mb.jpg -e -salt -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76
time openssl enc -aes-256-cbc -in enc_1mb.jpg -out dec_1mb.jpg -d -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76

time openssl enc -aes-256-gcm -in 1mb.jpg -out enc_1mb.jpg -e -salt -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512 -iv 7a0cdc90bcde7a0ad875526180c177dc
time openssl enc -aes-256-gcm -in enc_1mb.jpg -out dec_1mb.jpg -d -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512 -iv 7a0cdc90bcde7a0ad875526180c177dc

echo "encryption and decryption of a 10Mb image with AES-256 and different operating modes"
time openssl enc -aes-256-cbc -in 10mb.jpg -out enc_10mb.jpg -e -salt -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76
time openssl enc -aes-256-cbc -in enc_10mb.jpg -out dec_10mb.jpg -d -K 8e6265f1bfd10c23788bf8abe0019373054c06859f0fb8067f7ef73dacc5281a -iv b96105e22ffaf05de2ed13d3561ded76

time openssl enc -aes-256-gcm -in 10mb.jpg -out enc_10mb.jpg -e -salt -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512 -iv ef80dbf75cf0264a5805ecb6ef202dda
time openssl enc -aes-256-gcm -in enc_10mb.jpg -out dec_10mb.jpg -d -K 233fd6d18c430fffac3a392d2786afec882433241b1668272792677a23167512 -iv ef80dbf75cf0264a5805ecb6ef202dda

