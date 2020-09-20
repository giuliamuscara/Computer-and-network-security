#!/bin/bash
openssl genpkey -algorithm RSA -out private_rsa.pem
openssl rsa -in private_rsa.pem -pubout > public_rsa.pem

openssl genpkey -genparam -algorithm DSA -out dsaparams.pem -pkeyopt dsa_paramgen_bits:1024
openssl genpkey -paramfile dsaparams.pem -out private_dsa.pem
openssl dsa -in private_dsa.pem -pubout >  public_dsa.pem

openssl req -new -key private_rsa.pem -out rsa_certificate.csr
openssl x509 -in rsa_certificate_req.csr -out rsa_certificate.pem -req -signkey private_rsa.pem -days 365
openssl verify -CAfile rsa_certificate.pem rsa_certificate.pem

openssl req -new -key private_dsa.pem -out dsa_certificate.csr
openssl x509 -in dsa_certificate_req.csr -out dsa_certificate.pem -req -signkey private_dsa.pem -days 365
openssl verify -CAfile dsa_certificate.pem dsa_certificate.pem

openssl dgst -sha256 -sign private_rsa.pem -out /tmp/sign.sha256 to_sign.txt 
openssl base64 -in /tmp/sign.sha256 -out rsa_digital_signature.pem
openssl base64 -d -in rsa_digital_signature.pem -out /tmp/sign.sha256
user@user-VirtualBox:~/Desktop$ openssl dgst -sha256 -verify public_rsa.pem -signature /tmp/sign.sha256 to_sign.txt 

openssl dgst -sha256 -sign private_dsa.pem -out /tmp/sign.sha256 to_sign.txt 
openssl base64 -in /tmp/sign.sha256 -out dsa_digital_signature.pem
openssl base64 -d -in dsa_digital_signature.pem -out /tmp/sign.sha256
openssl dgst -sha256 -verify public_dsa.pem -signature /tmp/sign.sha256 to_sign.txt 

openssl x509 -outform DER -in rsa_certificate.pem -out rsa_certificate.crt 
openssl x509 -outform DER -in dsa_certificate.pem -out dsa_certificate.crt 
