openssl-solver
======

openssl solver that helps with a dictionary to bruteforce ciphertexts

Use
======

First you need a good dictionary, maybe john's one. 
$ for cipher in `cat possible_ciphers`; do for pass in `cat passlist.txt`; do ./solve.sh $cipher $pass; done; done
