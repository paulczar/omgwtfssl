OMGWTFSSL - Self Signed SSL Certificate Generator
=================================================

About
-----

Sick of googling every time you need a self signed certificate?

OMGWTFSSL is a small (< 8 mb) docker image based off `alpine linux` which makes creating self signed SSL certs easier:

```
$ docker run -v /tmp/certs:/certs paulczar/omgwtfssl
----------------------------
| OMGWTFSSL Cert Generator |
----------------------------

--> Certificate Authority
====> Generating new CA key ca-key.pem
Generating RSA private key, 2048 bit long modulus
..................................+++
..................................+++
e is 65537 (0x10001)
====> Generating new CA Certificate ca.pem
====> Generating new config file openssl.cnf
====> Generating new SSL KEY key.pem
Generating RSA private key, 2048 bit long modulus
....................................................................+++
........................+++
e is 65537 (0x10001)
====> Generating new SSL CSR key.csr
====> Generating new SSL CERT cert.pem
Signature ok
subject=/CN=test
Getting CA Private Key
ls /tmp/certs 
ca-key.pem  ca.pem  ca.srl  cert.pem  key.csr  key.pem  openssl.cnf
```

Advanced Usage
--------------

Customize the certs using the following Environment Variables:

* `CA_KEY` CA Key file, default `ca-key.pem` __[1]__
* `CA_CERT` CA Certificate file, default `ca-cert.pem` __[1]__
* `CA_SUBJECT` CA Subject, default `test-ca`
* `CA_EXPIRE` CA Expiry, default `60` days
* `SSL_CONFIG` SSL Config, default `openssl.cnf` __[1]__
* `SSL_KEY` SSL Key file, default `key.pem`
* `SSL_CSR` SSL Cert Request file, default `key.csr`
* `SSL_CERT` SSL Cert file, default `cert.pem`
* `SSL_SIZE` SSL Cert size, default `2048` bits
* `SSL_EXPIRE` SSL Cert expiry, default `60` days
* `SSL_SUBJECT` SSL Subject default `test` __[2]__
* `SSL_DNS` comma seperate list of valid hostnames, default `test.com` __[2]__
* `SSL_IP` comma seperate list of valid IPs, default `127.0.0.1` __[2]__

__[1] If file already exists will re-use.__
__[2] Skipped if `SSL_CONFIG` already exists.__



