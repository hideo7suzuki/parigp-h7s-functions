Readme.txt

[in English]  
program lists of my user functions for PARI/GP ver.0.900.  
copyright by Hideo Suzuki, hideo7suzuki@gmail.com  Jan. 2025.  

AES_RK(KEY) generation of AES round keys RK[1-11]  
AES(PT,KEY) AES encryption  
AESinv(CT,KEY) AES decryption (=inv)  
AESprintRK() print of AES round keys RKs  
AESprint() print of AES KEY, PT(plaintext), CT(ciphertext)  
AESprintrev() print of AES KEY, PT(plaintext), CT(ciphertext) in reverse order  
AESprintKEY() print of AES KEY  
AESprintPT() print of AES PT(plaintext)  
AESprintCT() print of AES CT(ciphertext)  
AESprintCTT() print of AES CTTs (ciphertext in each round)  
AESprintCTTrev() print of AES CTTs (ciphertext in each round) in reverse order  

program lists of AES (128 bit key) encryption/decryption internal programs using PARI/GP ver.0.900.  
copyright by Hideo Suzuki, hideo7suzuki@gmail.com  Jan. 2025.  

AESnextRK(RK,RC) generation of AES next round key  
AES_round(r,A) processing of AES encryption in each round  
AES_round10(r,A) processing of AES encryption at the 10th round  
AESinv_round(r,C) processing of AES decryption in each round  
AESinv_round10(r,C) AES processing of AES decryption at the 10th round  

----------

[in Japanese]  
AES暗号 (128 bit key) ユーザ定義関数プログラムリスト  
copyright by Hideo Suzuki, hideo7suzuki@gmail.com  Jan. 2025.  

