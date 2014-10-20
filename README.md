Openssl solver by bruteforce
======

Openssl solver that helps to decipher with a dictionary to bruteforce ciphertexts.

Use
======

First you need a good dictionary, maybe john's one. Then two loops with ciphers and passwords. 
        
    $ for cipher in `cat possible_ciphers`;do for pass in `cat passlist.txt`;do ./solve.sh $cipher $pass;done;done

Example
=======

Let's cipher a dummy text with password 'pass':

    $ openssl aes-256-cbc -a -salt -in plainsecret.txt -out secrets.txt.enc
    enter aes-256-cbc encryption password:
    Verifying - enter aes-256-cbc encryption password:
    
    $ cat secrets.txt.enc
    U2FsdGVkX1+bcJxDtB5XwXmx2EBRlQfp8Jj1HpF7skkzh6HZhCS165w8XJ60tbtD

Now, decrypt it: 

    $ openssl aes-256-cbc -d -a -in secrets.txt.enc -out plaintext
    enter aes-256-cbc decryption password:
    
    $ cat plaintext
    This is my secret

Requirements 
=======

It needs "expect". 

    $ apt-get install expect 

