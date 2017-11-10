OMGWTFSSL - Self Signed SSL Certificate Generator
=================================================

About
-----

Sick of googling every time you need a self signed certificate?

OMGWTFSSL is a small (< 8 mb) docker image based off `alpine linux` which makes creating self signed SSL certs easier.

It will dump the certs it generators into `/certs` by default and will also output them to stdout in a standard
YAML form making them easy to consume in Ansible or other tools that use YAML.

```
docker run -e SSL_SUBJECT="example.com" paulczar/omgwtfssl
----------------------------
| OMGWTFSSL Cert Generator |
----------------------------

--> Certificate Authority
====> Generating new CA key ca-key.pem
Generating RSA private key, 2048 bit long modulus
................................+++
.........................................................+++
e is 65537 (0x10001)
====> Generating new CA Certificate ca.pem
====> Generating new config file openssl.cnf
====> Generating new SSL KEY key.pem
Generating RSA private key, 2048 bit long modulus
......................................................................................................+++
...........+++
e is 65537 (0x10001)
====> Generating new SSL CSR key.csr
====> Generating new SSL CERT cert.pem
Signature ok
subject=/CN=example.com
Getting CA Private Key
====> Complete
keys can be found in volume mapped to /certs

====> Output results as YAML
---
ca_key: |
  -----BEGIN RSA PRIVATE KEY-----
  MIIEowIBAAKCAQEApRb6A4hwWDEp6JKLi4iQft8ULf9EIYpD7L9cbgayWeB80xcL
  B8fxqxAnRTmyRLPQbiwVRChOVdOUFBRDiKjcqXsA6H5Sn8Nd52pb0EwOpK65t2iF
  NzmW8hCZeN8Zti8sMLJLeVXs6NXcnOX+CHnP50wrcvjZvQitU56KFE9vvjfYpwLe
  OcpXqOjSMXFmmkyUVzPLqpn9xI+OoWdxAHEb5xlWl8hJ1eMQTB/toYcV11CA4iVu
  tpW8ajxjhBtVR5k3f7ItKYlieh6tBqFlbqy0/k6QCU03en2TUPZo/3hiFhc7Oz5C
  bllBvy+7AbEZuJ/qCuiXGPnTde5TNDzrJqIhvQIDAQABAoIBAFFP0s5gqizV8jVJ
  0I9mMP08NL0/CDiY2EHIMudCRx/7cJ+rrtQjR8WgjCcNdt9dzWAmOEc8rvCY6EtH
  e8fYm+6h1d2tMlbcK+kqOpSKkX/NS02pnkuIAu+w+1ZMVGamL1bAymm1x50akLF6
  mjdkf+EFZDUZmmz/1BbmdE3ynjAKmReRtcAH1LUNbNjQcL5/X6y8X1y9qRT2NAka
  wDWhdc58NZFka+irZZKwEo0Hsy6/D4Fe9Ya0rpDiSStP8+p+WwOyq0H1g8doMmhF
  9xv9zoqe0BwB9XsnCbi8rGx9wdZBaw4xmUJchx65iRJEz2c15anBXCL50EzkGFWM
  kgDFMmUCgYEAzyXCeEArCEaHu6HIC2p0prUuwhxsQOEJgf5vVYq/ifJd4a4Uw8+F
  WHTNFRlX6FOnncTRNklzWNU+/70HERWIyaew42HBmY7lxJW0mi+3rZGEDxojlEox
  MjbFLm2A4IP/OYFvydq+gOO4Abebpdlxny4SB3pJpzQ2WF6T27GRbE8CgYEAzAYK
  FdgDwaUfz2E/d4pJNhCDDsv5xrvkEdQwkovg/DjPgWYzKxCwi8jYPapXKdjBfp6K
  7aISNTi/Sm8PxI2JVr2jMGF9dX6sQ4Hi2HmVKiCCX+tlG2dVmJCGggquT0fyOsiP
  hzWV/7so/ObGTCFQVzCgnb//htxyTC0fYmM0EjMCgYATPvXfiE63OR5ZT4Gvldd6
  ubC7djqUmJPykPo1H2wGXA9e7XaebsR74HZBdJZXTpZvMR8jBRYDdeShjCWA79hC
  rCLiLW34X293oVUjUjWlmbSEVrBhkbcabD5Lvv7PXVQ0OpNxVLKIdR/egPmkIhzN
  ZlFkgncfYtl9wmPIcKoLPwKBgQCMlBi85mPoOQPLG+HkV1eMtiHnvypzAiHrGv8A
  6vryL57jNW1KXiyXlKNTEh0PC3h/63Qkuwi6vUgpXI9Lyo54QyC/hF0y6T5/IW8R
  4+yg41eSChtXn4L+JY9Y6U0j+ZnxYSJscsLRO7/JSqYV7NpzyWDScWn7HchvrqOy
  YlKNuwKBgBVSMSNhpwciuGgyIFSn7VNCWAGPXqKzVS3Y/1HKR7vQuh1pWzTv9xqq
  IJ2QeMt8sx7lDd0TVRWZHspb5y5bJCHHE0TPMNeQ+gemq9BfiLoxuZags/z9FOiT
  nSEVuGVPaFt7gxwxpA5hrfP589FBEXrsmoCzrzk1E6SFCydUpN7B
  -----END RSA PRIVATE KEY-----

ca_cert: |
  -----BEGIN CERTIFICATE-----
  MIIC9zCCAd+gAwIBAgIJAMkQSvqETHjKMA0GCSqGSIb3DQEBCwUAMBIxEDAOBgNV
  BAMMB3Rlc3QtY2EwHhcNMTcwNzIxMjExMzQxWhcNMTcwOTE5MjExMzQxWjASMRAw
  DgYDVQQDDAd0ZXN0LWNhMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
  pRb6A4hwWDEp6JKLi4iQft8ULf9EIYpD7L9cbgayWeB80xcLB8fxqxAnRTmyRLPQ
  biwVRChOVdOUFBRDiKjcqXsA6H5Sn8Nd52pb0EwOpK65t2iFNzmW8hCZeN8Zti8s
  MLJLeVXs6NXcnOX+CHnP50wrcvjZvQitU56KFE9vvjfYpwLeOcpXqOjSMXFmmkyU
  VzPLqpn9xI+OoWdxAHEb5xlWl8hJ1eMQTB/toYcV11CA4iVutpW8ajxjhBtVR5k3
  f7ItKYlieh6tBqFlbqy0/k6QCU03en2TUPZo/3hiFhc7Oz5CbllBvy+7AbEZuJ/q
  CuiXGPnTde5TNDzrJqIhvQIDAQABo1AwTjAdBgNVHQ4EFgQUxnLGy9/R18woNMfM
  mfalPahtAFMwHwYDVR0jBBgwFoAUxnLGy9/R18woNMfMmfalPahtAFMwDAYDVR0T
  BAUwAwEB/zANBgkqhkiG9w0BAQsFAAOCAQEAlD+0p/rMiFfX2XBY2ZUkQSEYVkhL
  frkUwOCuQ5B+2ylBJhHGeCx/H3quwNJkMwWklCYvR1uuZVBktFGeUjdaaRotWfWP
  XSJh+pRu3y496w+qAE3kFclKH+ba14ioOmo35IZlDloELiE508Xji4sq5FL8Ykzm
  QBumXkfSuOeXS1XdK+z4GHBflq3yODW0BnedvzVt/8FTBip/vQMku0i34iTVR0U6
  W/nkjf1qB0UVMnNQGMQ8GtOp2F6oasKhF0XgtoAnJiTTgoIsbXcIvCP8xHnbGq8T
  I26nRnhyiNOU64JUlCpFMRDN1cd0YTLSODYFZEllMq7E0v34DFOPuLOIxw==
  -----END CERTIFICATE-----

ssl_key: |
  -----BEGIN RSA PRIVATE KEY-----
  MIIEpQIBAAKCAQEAqsJVPI4LMBon3BwX4bbzQ17nLST+Ggsikxfhx5IzLMZRF5IT
  YsF9GZaIUssYcFiZWw8Kp3hqyEGiDS44jJl28wJA7kU8viDxw8NgPRSc6elpM3eW
  KAh6EEvEPVbQe1kcxIrmA5sL1UppioQIswUwGUU8pzAyBPAPTzHcB4OUrp1yeWBn
  P0K07FB1/m+iaSATtCEMJDTSXi2K5Py/TMfBFmNrefWK+dcc5TvEvDdrYyAqWYnf
  0Q6P/ToAdCIqM/ciw00gArXmsykIAcy1oRvi5e/2DdAetOppxDU02C+/J8o84cEf
  WjGzctxjjzOfiG504adGsJgA7O7OTIo4DFJPWQIDAQABAoIBAGmyPHxtF/PAXOfb
  49RtIAqVldbVzQtl1RLjd3fGwTJ31v4WBzXbuom6KcvFtuzjiplYqCmdWct3BM3P
  zGULIRuuS26xILY3Qi8AonNsbOxE9D9NSH6jMJshquik8gtHz4zAxTt6H0r48ncw
  3wmgrnMV7kM2i9+OkIteu2lTQxcJjw8wP4zSd1Vp2pzVRvqKLkryIpVDpdj3NNLR
  ywsAVxx3c9FhN7fUwVtQ+xvPlPpxn9Ym0yd1WDU7kuNMHaMGK/vKr0YU2ptumAHW
  Nrz+MoMjRBfDNmKsdXuF++9Ud101ynlKodsqJ6vPbSasNm9eJL0pw4E1P8fLKOpj
  VvRnmwECgYEA20QsgCYH/nHg+pA3x9Z9SLbQQtQ1bU4GWAdrOq+a/whqTCI26fmL
  vbNbCBqrO2pV8/iXP1VbMpK7tY/sOn8pip808xVgf1ZChlIajrqAHcoVeTe6DpUw
  dAmD+PY/kat0GYPtED0rCpiZ2LDXnhh2zJYP9B6REW3QK6o6s2XLV0kCgYEAx13M
  LONfqtRXx2txMaydtsAS5NsvX9V+qpeNuEfvCeP6aHQMRNVAn6BtORkueyhLBlSW
  VLcRj4G31TD6+dJJtPS1nu5xiFQFHfY8TWA48ozRA4m+YZISLrpHeE46MqZfABhx
  BjQ2ItN5reetkh6Ej+cIfpZ3DtD55wt+7aZL55ECgYEAnILhMOf0tM8cxD3FU0Pr
  UcgMiGdpa4hSRuukwtMuU/Txyz5w7DpQYSxxQiunJlYU3H0JmQ+YdVT/3+3HtUmn
  oWdbKFiN9NbhzXc1tcOyR5FEGq6IhHhBidJw/Xjoj1ZPHRdqVDkVTA75Yg95GURl
  KEvFP3/CFSrJeSGdnQiASOECgYEAngQSGGH/KX80M7NM/Ho8ZuTGFO5FFkg5JS0J
  /s3FAKnZh4CzWLtNhTe6Wk9DMAo3rMTOgka3fG7sLeWshuXN1cc/TMDg65TsmVrZ
  YNqrSFOkNpGue9cy4iZzDz+xkQOcuI6mxqwLXH8RKm0+fVoC56vOZ8cKhovMBvxt
  lh8AeoECgYEAqiQTPexe5avJkCGI2xwAnYBbO0zGdpLA/at768YCW34jbQSTQwsZ
  xzAQ/8CGbw7DDn5WF/m/2UXVXxZxg6Lo+mhj876KbB8GyTSgcyAEwGhNhVz0MJRt
  mE089fa0Iar5g2La4uFgePFBYIfkPFs6vizk9D/taD0mTDz8EWky9l0=
  -----END RSA PRIVATE KEY-----

ssl_csr: |
  -----BEGIN CERTIFICATE REQUEST-----
  MIICozCCAYsCAQAwFjEUMBIGA1UEAwwLZXhhbXBsZS5jb20wggEiMA0GCSqGSIb3
  DQEBAQUAA4IBDwAwggEKAoIBAQCqwlU8jgswGifcHBfhtvNDXuctJP4aCyKTF+HH
  kjMsxlEXkhNiwX0ZlohSyxhwWJlbDwqneGrIQaINLjiMmXbzAkDuRTy+IPHDw2A9
  FJzp6Wkzd5YoCHoQS8Q9VtB7WRzEiuYDmwvVSmmKhAizBTAZRTynMDIE8A9PMdwH
  g5SunXJ5YGc/QrTsUHX+b6JpIBO0IQwkNNJeLYrk/L9Mx8EWY2t59Yr51xzlO8S8
  N2tjICpZid/RDo/9OgB0Iioz9yLDTSACteazKQgBzLWhG+Ll7/YN0B606mnENTTY
  L78nyjzhwR9aMbNy3GOPM5+IbnThp0awmADs7s5MijgMUk9ZAgMBAAGgSDBGBgkq
  hkiG9w0BCQ4xOTA3MAkGA1UdEwQCMAAwCwYDVR0PBAQDAgXgMB0GA1UdJQQWMBQG
  CCsGAQUFBwMCBggrBgEFBQcDATANBgkqhkiG9w0BAQsFAAOCAQEAGLeiY6PadNzS
  X0DDk/jJ9odqEezJCIxoRzlwe6gpyB6W8ffs+Ae8MtVISr4bH/4aGi1y68xesxnl
  3owRphHXohwU9CPdMyfLYjZ7rQpY5MOpKh9FXJnRw1nO2Rw40jBBy2RhAHq2sMmb
  fuC5y5c7Mx4OuhdPqc7VlqcNs1f4P006ig+Sb7XlpguDBXQfLZ9fQlH9rULyKm/n
  IUZZrNVlyrmGjU5Wgf75k8OG9P61dNOsfKBlTYIkN1Ygl9RAoA6Y9St+7LV5ljNP
  xmLr4yFkFXI3v6yCG2fVYffgqOVsXtZk8ZHYzInzGbeGv4xPyrqG2QowzLerzsv0
  uPxN66RVfw==
  -----END CERTIFICATE REQUEST-----

ssl_cert: |
  -----BEGIN CERTIFICATE-----
  MIIC5DCCAcygAwIBAgIJAOQiplh2cS8NMA0GCSqGSIb3DQEBCwUAMBIxEDAOBgNV
  BAMMB3Rlc3QtY2EwHhcNMTcwNzIxMjExMzQxWhcNMTcwOTE5MjExMzQxWjAWMRQw
  EgYDVQQDDAtleGFtcGxlLmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoC
  ggEBAKrCVTyOCzAaJ9wcF+G280Ne5y0k/hoLIpMX4ceSMyzGUReSE2LBfRmWiFLL
  GHBYmVsPCqd4ashBog0uOIyZdvMCQO5FPL4g8cPDYD0UnOnpaTN3ligIehBLxD1W
  0HtZHMSK5gObC9VKaYqECLMFMBlFPKcwMgTwD08x3AeDlK6dcnlgZz9CtOxQdf5v
  omkgE7QhDCQ00l4tiuT8v0zHwRZja3n1ivnXHOU7xLw3a2MgKlmJ39EOj/06AHQi
  KjP3IsNNIAK15rMpCAHMtaEb4uXv9g3QHrTqacQ1NNgvvyfKPOHBH1oxs3LcY48z
  n4hudOGnRrCYAOzuzkyKOAxST1kCAwEAAaM5MDcwCQYDVR0TBAIwADALBgNVHQ8E
  BAMCBeAwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMBMA0GCSqGSIb3DQEB
  CwUAA4IBAQAGk1FnITDsfHup8CoDr5tM8VL9+De2oYBxL61dCsjdhl5TQoQyqVeu
  3WcaYR6nKt0iEUHp5s1Kex9OcJwtBJehWqx+lRh66deIOCF1eTcOov7PvIPdCbZm
  Z28DbeUDSobt6Ms3mpLotXozz86b5jWzTxKOTb6k2sgAcRz3xQ3gWMBuDK4U65km
  Ne0LY1pNLHEIwuKmRFDK1hOk9NAxDtafXpdNuPAy0qTkVTHk07kXY/0FfJoW8zSA
  xnUDmJp4xhNg6a83P2IjX1Sn8u9mzx3833YUH/ihQlYR/ba/lQIRVTiDKO3TvJ+c
  ADUYdyAYHRBigLY6ObdgB84bMRqLq68s
  -----END CERTIFICATE-----

```

Advanced Usage
--------------

Customize the certs using the following Environment Variables:

* `CA_KEY` CA Key file, default `ca-key.pem` __[1]__
* `CA_CERT` CA Certificate file, default `ca.pem` __[1]__
* `CA_SUBJECT` CA Subject, default `test-ca`
* `CA_EXPIRE` CA Expiry, default `60` days
* `SSL_CONFIG` SSL Config, default `openssl.cnf` __[1]__
* `SSL_KEY` SSL Key file, default `key.pem`
* `SSL_CSR` SSL Cert Request file, default `key.csr`
* `SSL_CERT` SSL Cert file, default `cert.pem`
* `SSL_SIZE` SSL Cert size, default `2048` bits
* `SSL_EXPIRE` SSL Cert expiry, default `60` days
* `SSL_SUBJECT` SSL Subject default `example.com`
* `SSL_DNS` comma seperate list of alternative hostnames, no default [2]
* `SSL_IP` comma seperate list of alternative IPs, no default [2]

__[1] If file already exists will re-use.__
__[2] If `SSL_DNS` or `SSL_IP` is set will add `SSL_SUBJECT` to alternative hostname list__

Examples
--------

### Create Certificates for NGINX

_Creating web certs for testing SSL just got a hell of a lot easier..._

Create Certificate:
```
$ docker run -v /tmp/certs:/certs \
  -e SSL_SUBJECT=test.example.com   paulczar/omgwtfssl
```

Enable SSL in `/etc/nginx/sites-enabled/default`:

```
server {
        listen 443;
        server_name test.example.com;
        root html;
        index index.html index.htm;
        ssl on;
        ssl_certificate /tmp/certs/cert.pem;
        ssl_certificate_key /tmp/certs/key.pem;
        ssl_session_timeout 5m;
        ssl_protocols       TLSv1 TLSv1.1 TLSv1.2;
        ssl_ciphers         HIGH:!aNULL:!MD5;
        location / {
                try_files $uri $uri/ =404;
        }
}
```

Restart NGINX and test:

```
$ service nginx restart
$ echo '127.0.2.1       test.example.com' >> /etc/hosts
$ curl --cacert /tmp/certs/ca.pem https://test.example.com
<!DOCTYPE html>
<html>
<head>
...
```


### Create keys for docker registry

_Slightly more interesting example of using `paulczar/omgwtfssl` as a volume container to build and host SSL certs for the Docker Registry image_

Create the volume container for the registry from `paulczar/omgwtfssl`:

```
$ docker run \
  --name certs \
  -e SSL_SUBJECT=test.example.com \
  paulczar/omgwtfssl
----------------------------
| OMGWTFSSL Cert Generator |
----------------------------

--> Certificate Authority
====> Generating new CA key ca-key.pem
Generating RSA private key, 2048 bit long modulus
..........+++
.......................................................+++
e is 65537 (0x10001)
====> Generating new CA Certificate ca.pem
====> Generating new config file openssl.cnf
====> Generating new SSL KEY key.pem
Generating RSA private key, 2048 bit long modulus
........................................................................................................................................................+++
...+++
e is 65537 (0x10001)
====> Generating new SSL CSR key.csr
====> Generating new SSL CERT cert.pem
Signature ok
subject=/CN=test.example.com
Getting CA Private Key
```

Run the registry using `--volumes-from` to use the volume container created above:

```
$ docker run -d \
    --name registry \
    --volumes-from certs \
    -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/cert.pem \
    -e REGISTRY_HTTP_TLS_KEY=/certs/key.pem \
    -p 5000:5000 \
    registry:2
```

Make sure it works:
```
$ echo "127.0.2.1       test.example.com" >> /etc/hosts
$ docker tag paulczar/omgwtfssl test.example.com:5000/omgwtfbbq
$ docker push test.example.com:5000/omgwtfbbq
The push refers to a repository [test.example.com:5000/omgwtfbbq] (len: 1)
e34964fe7cfa: Pushed
d52b82eb9ff3: Pushed
6b030e7d76a6: Pushed
8a648f689ddb: Pushed
latest: digest: sha256:8a97202b0ad9b375ff478d84ed948ae7ddd298196fd3b341fc8391a0fe71345a size: 7617
```

### Generate Keys for Kubernetes Secret:

```
$docker run -ti --rm -e OUTPUT=k8s -e SSL_SUBJECT=test.example.com paulczar/omgwtfssl
----------------------------
| OMGWTFSSL Cert Generator |
----------------------------

--> Certificate Authority
====> Generating new CA key ca-key.pem
Generating RSA private key, 2048 bit long modulus
..+++
........................+++
e is 65537 (0x10001)
====> Generating new CA Certificate ca.pem
====> Generating new config file openssl.cnf
====> Generating new SSL KEY key.pem
Generating RSA private key, 2048 bit long modulus
...................................+++
................................................................................................................+++
e is 65537 (0x10001)
====> Generating new SSL CSR key.csr
====> Generating new SSL CERT cert.pem
Signature ok
subject=/CN=example.com
Getting CA Private Key
====> Complete
keys can be found in volume mapped to /certs

====> Output results as base64 k8s secrets
---
apiVersion: v1
kind: Secret
metadata:
  name: omgwtfssl 
  namespace: default
type: kubernetes.io/tls
data:
  ca_key: LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFcEFJQkFBS0NBUUVBcysrd2p1d00vSG41MmxCQm0rSU84OW9INkwvaTd0QnBlUHdrd29uNUlqcGVQVHZzCkdYRGx1eXFlZUd3bnlIanZUYTlaQ2luNHd6dkk0Mzg5NjdMSVFCQ0krWlJwRmxtYTl3T3dLOFU1R0lnNWExUVgKa21lbEpyUkQ4QVlKeW1kNmpJL0J5ejZKVXI5WlNkMWxRUXdteWM0bEJZMC9YZVJnWVZobk5GOXZ3dmdJeTdiVgptMjRjSTE2QzdDbHpxcVNwOXhucElOdlBwejhSWVNGRkxXdmdvRUI0REhjeWxWK1lROFlSSUh1TEQ1bVM3WDZJCnlYT0d2RHVtWGVSbWRQWE42VTRKMkhzUk9aQkE4dHRNMGw1YmVoMWtKUjdGQ3I4N1lKaFJQbXpid2lCM1g2dUsKOE1hV0dRcWdtTnFOeVBIc0xSZjJGcXg5UFJxVmRRNmNxY1BscndJREFRQUJBb0lCQUFVY0NGSjJwNE8vM3ZWeApFL3ZlTm5oOE4zOUhlNlUyYTloUXFLYVJqbTZIWThldlhPdjRCYjREM3M0aW5CcVlQSXRqTUU4V2xBYlBPc3dpCi85b2lrSWNwTVFxTlNWS21KcjFlOEhDOXYvcFBXL29OUUVJYkNWaUpBK2piOHdrNVdRU0d6SVQ5K0o1TjZyWXIKUUVYUmw0UmhnekdlS2k5N1hiVkY4bUJOV1hvYXpzU3E5c3VMRUZLMkNxaGtDMWJvb0RJQ1JzYXVDOTlyMFVzVgpZVUYvOWc3VUJzdG9VNmFMTkQvOGdOSDlDblFxNVdMWUNHbXg1cWpudUtYZnFkK0tseXVwakNIWlNhME5uNFRrClFINFQ5QjdIVTRRMkE1M29uV0xXQWlhM3o4Q1lHK1c5M2RzK3A4czEzSzNrSG1BNGU4QTB1bWJvMDkwWk9VRnEKZDRqa2U2RUNnWUVBNXBSMzJOZHJNbmlOdlhGcHJvQVNLZ2VmOGhvV2hzRTQyQmROWTlJajdVMmRpYjUzNWpCcwpBUUVhalRCdU41V3F6bE5JWS9aWURlQUtLUzR2elFqTzN4aUdXeHNUbDlmYVZLMVRrQU1iNFlCdEJPcjhxU2tGClIyWTkwMWdNSDdxSTQ1NXR2UUh4dms5ZDdaVmYwK3MvS0dsaCtreENkeUNTY0loOFErUVZ5eDhDZ1lFQXg4WHUKM1E2V3E4dkhwRVNYWFZDTE1kbnp2RXRNMStXbmUrR2FEdWZXaGlEM0szV1pGVUFhOWlha1FGUHdweFdhWGdTZwpLdW9zbmsyZzFqNWhyMmRwUnRISUg1OWJ0WllVZkYwNDNORFpXbCtQVVI4OGFCblJ0ZUJNNEFTbGN6UlJmY1FHCmJEL3I4cUZxcjNpU05rL0JXWnhOZmRYTTBzL0MxWGE0ZFRLZ0kzRUNnWUIyU1N2Q0hhQnNYOU8ybjN1cmZSL1UKVjkwQmdjaVVrSUxzdCtlSGtjSEVkdENlWFF0OUZ0SVJJZFBSSWtzb1VLc3k5UjVweVhJYWpCZ3FUL3RObjNzZwpqNkE5RklMVW5uTHVoWXdja0x1NHp2MGVUTDRZdVdadjNrOVJJQlg0SU9VZ2Y2R2tHRjgvVmMvRmxaOTNRM00rCjgvRERTbU8rWVFNK240Vy8vajMvMlFLQmdRQ0s0bWFQdEdhM2hQS0VsMU1NQXNUaW9YMjd1RFh5R3F6M2lQNUwKd28zM3JjOW9uVmNSMlFGbGc3UEpMUkl2ZHV0YzFhWnNiMlVab1NwaUIvaHRzMTBUYVNEU0t6M2MzanZid2d1WQpLSElUVEVBY3k3UjVRd255Z2Ird05rcTM3dldBazlsTFJKMUtqMEhXUCtLV2M1Z2VMbllKTjZ3d0cxUitod3p5CkhZSUxZUUtCZ1FEYTY3b0VPUFRySU5Kdjd4Nk92ck11Vmk2N0JnajhYa0lNZWtNVUtrZVJDZDBSQkV0Z3ArQS8KM0k4OVE0c3NHZWRIay9nUWt4bXlTc0FrMXFLQnl1UDBmK3dIenpzNDlsaENOYUxGeUtuZnlvMkVlSVpvK21COApnRjFVZGNHZkZSalFtWXNCaVJKSEpDS01WZ2RMWFdha3pJMGU5V21BL2g1RDdSWlZNQlFwUEE9PQotLS0tLUVORCBSU0EgUFJJVkFURSBLRVktLS0tLQo=
  ca_cert: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUM5ekNDQWQrZ0F3SUJBZ0lKQUtyN0N3czdEQWthTUEwR0NTcUdTSWIzRFFFQkN3VUFNQkl4RURBT0JnTlYKQkFNTUIzUmxjM1F0WTJFd0hoY05NVGN4TVRFd01UVXpOak15V2hjTk1UZ3dNVEE1TVRVek5qTXlXakFTTVJBdwpEZ1lEVlFRRERBZDBaWE4wTFdOaE1JSUJJakFOQmdrcWhraUc5dzBCQVFFRkFBT0NBUThBTUlJQkNnS0NBUUVBCnMrK3dqdXdNL0huNTJsQkJtK0lPODlvSDZML2k3dEJwZVB3a3dvbjVJanBlUFR2c0dYRGx1eXFlZUd3bnlIanYKVGE5WkNpbjR3enZJNDM4OTY3TElRQkNJK1pScEZsbWE5d093SzhVNUdJZzVhMVFYa21lbEpyUkQ4QVlKeW1kNgpqSS9CeXo2SlVyOVpTZDFsUVF3bXljNGxCWTAvWGVSZ1lWaG5ORjl2d3ZnSXk3YlZtMjRjSTE2QzdDbHpxcVNwCjl4bnBJTnZQcHo4UllTRkZMV3Znb0VCNERIY3lsVitZUThZUklIdUxENW1TN1g2SXlYT0d2RHVtWGVSbWRQWE4KNlU0SjJIc1JPWkJBOHR0TTBsNWJlaDFrSlI3RkNyODdZSmhSUG16YndpQjNYNnVLOE1hV0dRcWdtTnFOeVBIcwpMUmYyRnF4OVBScVZkUTZjcWNQbHJ3SURBUUFCbzFBd1RqQWRCZ05WSFE0RUZnUVVYa0JJdm9CdTA5OW1DdEovClkyR29NamJ2T3BFd0h3WURWUjBqQkJnd0ZvQVVYa0JJdm9CdTA5OW1DdEovWTJHb01qYnZPcEV3REFZRFZSMFQKQkFVd0F3RUIvekFOQmdrcWhraUc5dzBCQVFzRkFBT0NBUUVBSCt0WGVlYXpLZ2lqd0NxRlNHbk9LcktxalYwRQpGVVJscWsrdUMzQ1lsdHRWSWV0eGlZbG50Vm00MlNnQkhWTXJZMmJxa1plM1RiaVZSbnp5UzFUa2I0dkpTY0lKCjhKUGtEQ2c4OVhxMlpMdm85dzJMZ3diWWJCczFjZUxiT3c1Y3haOVdwaDQrUnhrTmpocU1jTEJna3RZbVJUQ2MKQUx3T282WjB1NGJsckM4eE00ak53TmptQU96WTYrbTFPU0FPU28zWW9EQXdGenR4NHpWc1V4MmRPR09IMVFsSwpFWVVSRitMQXN6WnJvakMzbko0YVduc04vNEpFWU1CUmlJUVBMUWVDTjJGU2kxaXp2VzZEdW9PdGpIQkJYcnJCCnlOSGk0ZXVkUk1hRFJrS3RydXRqcUFhYWdOdndyZ0tmREdBdW9WNFhKRS93R0tIVE5HaGJzaEZrbEE9PQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==
  ssl_key: LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFb2dJQkFBS0NBUUVBeWxxejExMW5oMkdSR1gwSTFoVnIrd1hOKzRCM2o4b2QwK2xYWmdwUVV0Wms3LzlHCktSckMvTXZMZCsvcThHM1NIT1NKNjJwa1E4TlpNMml5Z2Fmd1NrRTZNRGZLZUhQdzZoMG95STEwRUQ0WDcvL1IKZFRRZ2pMS29laTQ5bnNGQ0pLSWhsVTJUZzlPeW1hVTY4Zm01OVpsWjJNdU5PWXg1TWtYODRPeXh5Y3VzUHYyVwp1WTN2emg5ZW9LakNKWVRqNjVaZDFPUlp6VmdlOUg3K3ZFa3E1L2tVcm9DSExudS9HSWthdHh3dzFZZ09oV2UrCnZjMmIxc2ZraHZ6ZzVHdFdJNjdlU1dMRE93ZTU3dStFYnc4Tk1QUkZTTmFwWnMyaDkzUGRPb1k0SjdrdVRKaEYKYnpCQVpxWUxyNHhoOWFkazlhT3djUXhaOWZyZ2w3V3NtQUo0aFFJREFRQUJBb0lCQUVtNGFiU1lidE0vbEdFNAowRE5PY3B4dExQSG5oNmQyOXc3dy84cEpENkplUVQrK1BJMVZGcHlLa29JTGdnZzl1a0tVY0RxMzgvZEwvLzllCnNVblRLUk9rVjlLaFFMNUpYd2VyditQd3hNdjJFenA0ZEpMQ2Z1bERYV1hGMnVVdmV5MWxjOTYwK0gwYWJ3TFMKMDNxOGhDY1p5MFhVUW9zb3hpNnVtTVpJOVN5U3hSS1pFdkYvZmJZeVZ6dVpmZGFtYUhPRCttelBZdFdGSWdrbAo4Q0pScGNZeEtPNkdaQUdoa3lEMGtCRlZzSitDdStheWdvTzNXU2dQWXp1eWdrS2tCL05NanFiWE5UaWJlbjRmCmNoeGxmZjRXQTRuRXZVT0VaNm90SHpONFFIUUdKWlliTEJrZkY5K256TGdkZk45S3M5aVNRR0RTOWZrOWl2SSsKbkt3azl6RUNnWUVBN3Jxay9tTTVWMnYyTDZXd0tKLzl5RkJzSGg0dy9IZ1FHWTFucWkzaW9odEtNZHlyVUl1ZApNa1hVa3FWOEZIMGtlOFdBakt3Skt6QVVudkJ6Wm54dWZINTMwN3V0K3B4RjliU1RnK2tNeS81d3F3VWdPUTNqCmlIdytSMGF6MjJKcUZEQnNxUGZMM0c3TllKN3dzVFpZV2dCeGZZK1pCT2ZFME1GVnNsSlBxVHNDZ1lFQTJQNWkKRG8xMWFjbm9NVWFJVFlXblhwT3lwOWFCR25YcmJoeUNQS29zU29jTFJ0YWt3L1BwUTVYdmsrSzZ6eUl2WW5FdApaQUttbEprT1ZNZkJDbE90VHJ6TVVIZkZOWTdzY3pIanZhbVJRdXJaQk1JazdldmY1cUdMQVIrenlLeTB4ZFQzCnZGUkdmSmx6NjNEcFdiZjZ1OVkxVWNVbXZ5aXRyTnFFczVzU1NUOENnWUJveC9rMVFwM2ZkaDUzS1ZVWmI2ZTMKTFQxWE5zOHZjUTgzOSszQkx5U2pIREZEazJTS0ZNMXBUR2NSK3Bwc2I4VDhvbUphM0FPbU5oTkc4NmpqR2NodwowaDJNREhzL1hTb0R2ejlrRFgwMWFEZFJpUTFzbldENS9mWmoyRytHNGpwSEpEMzlKODROc1lCcFlUbXB2bjJtCit6elU3SnN3SVA0czFqN2o1dWJhRXdLQmdIRWpJUWtwWkVDR0QxUXh6RHR2SmphL2wzUysrSTFOVWpVVkZDcUIKSjVxc0Vvc2F1c21ZVU5UMlJmVzdUMTlVR1pTZ0llUjFKVmx3Ky9Ia1BKZ2Z6TXF5MFd4YkppMm9tVXZ1aFNtTQpVYnFzSy82NUl2d1I4YW1VTEorbllkdU5nS3R0UU1XbXd5R1ArTXFYRW5PKzR6SXdtNWhJek16NmJxTWpRL0ZKCk54Mk5Bb0dBRFlpMTI4TENINjJWKzJkd2k5bVE1SUxqdXRRVUlSeWFiNXZ2R1NzemlhUkFWVmQ0MkxyUEF3YWwKWEVJbm54RkJQVnVPc003SXF4blBvdHM4NURBNkMyeGZLRDRMODBYZ0thb0tYamY0a1JNZEdTZEl2ZnRPQ0ZERQpDRklOM2JJY3JhcEZ4Q0EraGNtQzhQTzlFTm5HM1VXWnBSUEhvcVNKS0k5c3g3bG1IVDA9Ci0tLS0tRU5EIFJTQSBQUklWQVRFIEtFWS0tLS0tCg==
  ssl_csr: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURSBSRVFVRVNULS0tLS0KTUlJQ296Q0NBWXNDQVFBd0ZqRVVNQklHQTFVRUF3d0xaWGhoYlhCc1pTNWpiMjB3Z2dFaU1BMEdDU3FHU0liMwpEUUVCQVFVQUE0SUJEd0F3Z2dFS0FvSUJBUURLV3JQWFhXZUhZWkVaZlFqV0ZXdjdCYzM3Z0hlUHloM1Q2VmRtCkNsQlMxbVR2LzBZcEdzTDh5OHQzNytyd2JkSWM1SW5yYW1SRHcxa3phTEtCcC9CS1FUb3dOOHA0Yy9EcUhTakkKalhRUVBoZnYvOUYxTkNDTXNxaDZMajJld1VJa29pR1ZUWk9EMDdLWnBUcngrYm4xbVZuWXk0MDVqSGt5UmZ6Zwo3TEhKeTZ3Ky9aYTVqZS9PSDE2Z3FNSWxoT1BybGwzVTVGbk5XQjcwZnY2OFNTcm4rUlN1Z0ljdWU3OFlpUnEzCkhERFZpQTZGWjc2OXpadld4K1NHL09Ea2ExWWpydDVKWXNNN0I3bnU3NFJ2RHcwdzlFVkkxcWxtemFIM2M5MDYKaGpnbnVTNU1tRVZ2TUVCbXBndXZqR0gxcDJUMW83QnhERm4xK3VDWHRheVlBbmlGQWdNQkFBR2dTREJHQmdrcQpoa2lHOXcwQkNRNHhPVEEzTUFrR0ExVWRFd1FDTUFBd0N3WURWUjBQQkFRREFnWGdNQjBHQTFVZEpRUVdNQlFHCkNDc0dBUVVGQndNQ0JnZ3JCZ0VGQlFjREFUQU5CZ2txaGtpRzl3MEJBUXNGQUFPQ0FRRUFJVmZqNk9nMW9Ra2MKL1I5VjI2VS9QRnhaWk15bDNRb0xRM0kxbnBTWmJKTExuZHNmcjVoOTcwYzZtZzlVRGFmMWRPdlYzMkU2Y0tJbQpWZ1ZSN0ZzRnUrZHJvQkVUd1Y2cXN0OXhNZSsvV3BHb3B6VmNxOEQ2SVEwbWRJUEthMnNtSnlxU0Q1Y1NVaTlKCitnZGROWHdmbGVST0ZvcElxd3pSNGtHc3pMOVZjOXp5UEExc29zTGM4WnBtTU5WVVNUbWN6ZFdxbGszR0I1SHgKRU82NEl1d0lmRkY0d0hNNVNaMlFUMWpsOS9Gc1RWQndZMm9uQXNaVW4xcEhIR2N2SUFUVFE1MGVQNEJYQW4yMQoyT2t4VDV6Wi9SaENJT1F0M21wZlA1Y3piYXJmOHpyVkl6b2xseWNUWWJLbGpMWlB4YzAxT29VR3V6MTVnUzZWCnlCZjZNMTdkUHc9PQotLS0tLUVORCBDRVJUSUZJQ0FURSBSRVFVRVNULS0tLS0K
  ssl_cert: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUM1RENDQWN5Z0F3SUJBZ0lKQU8xdmdpeUVxTEdaTUEwR0NTcUdTSWIzRFFFQkN3VUFNQkl4RURBT0JnTlYKQkFNTUIzUmxjM1F0WTJFd0hoY05NVGN4TVRFd01UVXpOak15V2hjTk1UZ3dNVEE1TVRVek5qTXlXakFXTVJRdwpFZ1lEVlFRRERBdGxlR0Z0Y0d4bExtTnZiVENDQVNJd0RRWUpLb1pJaHZjTkFRRUJCUUFEZ2dFUEFEQ0NBUW9DCmdnRUJBTXBhczlkZFo0ZGhrUmw5Q05ZVmEvc0Z6ZnVBZDQvS0hkUHBWMllLVUZMV1pPLy9SaWthd3Z6THkzZnYKNnZCdDBoemtpZXRxWkVQRFdUTm9zb0duOEVwQk9qQTN5bmh6OE9vZEtNaU5kQkErRisvLzBYVTBJSXl5cUhvdQpQWjdCUWlTaUlaVk5rNFBUc3BtbE92SDV1ZldaV2RqTGpUbU1lVEpGL09Ec3NjbkxyRDc5bHJtTjc4NGZYcUNvCndpV0U0K3VXWGRUa1djMVlIdlIrL3J4Skt1ZjVGSzZBaHk1N3Z4aUpHcmNjTU5XSURvVm52cjNObTliSDVJYjgKNE9SclZpT3Uza2xpd3pzSHVlN3ZoRzhQRFREMFJValdxV2JOb2ZkejNUcUdPQ2U1TGt5WVJXOHdRR2FtQzYrTQpZZlduWlBXanNIRU1XZlg2NEplMXJKZ0NlSVVDQXdFQUFhTTVNRGN3Q1FZRFZSMFRCQUl3QURBTEJnTlZIUThFCkJBTUNCZUF3SFFZRFZSMGxCQll3RkFZSUt3WUJCUVVIQXdJR0NDc0dBUVVGQndNQk1BMEdDU3FHU0liM0RRRUIKQ3dVQUE0SUJBUUFkOVhmd0MwbXU5REI1Tng4TVJBRlpVWVVUeTM1a0xxMzZoYnF1Zmo3N0hTOHgwOEgySGt3cApsT1pSL1ZOeHpoR2NvVWxXNTdFaEdwSnVabEtmajl2SEJ5eU1SRHl0MUZsWFFXa1UzWHJLdjIyRHpWc013RndICndiWjBPemQxZFRpOFNKSGZ3WUVZb2ZMZVZwaHRiMmMxTytMdllsRVJqYXluYkI1dTNiNTRLL2pPeHErRlhnTGUKUmhheEJNOXJDa3psc0xUbk5UT0Q0SzR3NUFaZDhGRyswRTk1R3FjTjZkUFNRVjhJSEdmSnBPZ3J2Z3NaYTNaTgpPMlBIb3NjTUdUVVRQS0FZVzJZV0hjV1dZLzhveTY2Ti9kUlJ3bWRHdVBVckQ4a1grL2V6cGxRVmFHMUkxZTJQCkgwbHJKTnFMbkROR1pTV2twckJONjlPcXFWU21nRGl3Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K
```

