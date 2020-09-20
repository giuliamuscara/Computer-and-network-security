#include <stdio.h>
#include <stdlib.h>
#include <openssl/evp.h>
#include <openssl/conf.h>
#include <openssl/err.h>
#include <string.h>
#include <wolfssl/wolfcrypt/aes.h>


int main(int argc, char **argv)
{
    
    char plaintext[] = "Top secret";
    printf("Plaintext is:\n%s\n", plaintext);    
    unsigned char ciphertext[32];
    
    unsigned char iv[16] = {
    0x01, 0x02, 0x03, 0x04, 
    0x05, 0x06, 0x07, 0x08, 
    0x09, 0x00, 0x0A, 0x0B, 
    0x0C, 0x0D, 0x0E, 0x0F
    };
    
    unsigned char key[]={0x65,0x78,0x61,0x6d,0x70,0x6c,0x65,0x23,0x23,0x23,0x23,0x23,0x23,0x23,0x23,0x23, 0x01, 0x02, 0x03, 0x04, 
    0x05, 0x06, 0x07, 0x08, 
    0x09, 0x00, 0x0A, 0x0B, 
    0x0C, 0x0D, 0x0E, 0x0F};
    
    printf("Encrypting with openssl library using aes256-cbc...\n");
    int ciphertext_len;
    ciphertext_len = encrypt((unsigned char*) plaintext, strlen((char *)plaintext), key, iv, ciphertext);
    printf("Ciphertext is:\n");
    BIO_dump_fp(stdout, (const char *)ciphertext, ciphertext_len); 
	
    printf("Decrypting with wolfssl library using aes256-cbc...\n");
    byte plain[32];
    struct Aes dec;
    wc_AesSetKey(&dec, (const byte *) key, sizeof(key), (const byte *) iv, AES_DECRYPTION);
    int r= wc_AesCbcDecrypt(&dec, plain, (byte*)ciphertext , sizeof(ciphertext)); 	
    printf("Decrypted text is:\n%s\n", (char*)plaintext);
    
    return 0;
}

void handleErrors(void)
{
    ERR_print_errors_fp(stderr);
    abort();
}

int encrypt(unsigned char *plaintext, int plaintext_len, unsigned char *key,
            unsigned char *iv, unsigned char *ciphertext)
{
    EVP_CIPHER_CTX *ctx;
    int len;
    int ciphertext_len;

    if(!(ctx = EVP_CIPHER_CTX_new()))
        handleErrors();

    if(1 != EVP_EncryptInit_ex(ctx, EVP_aes_256_cbc(), NULL, key, iv))
        handleErrors();

    if(1 != EVP_EncryptUpdate(ctx, ciphertext, &len, plaintext, plaintext_len))
        handleErrors();
    ciphertext_len = len;

    if(1 != EVP_EncryptFinal_ex(ctx, ciphertext + len, &len))
        handleErrors();
    ciphertext_len += len;

    EVP_CIPHER_CTX_free(ctx);
    return ciphertext_len;
}


