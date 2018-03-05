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
* `SSL_DNS` comma seperate list of alternative hostnames, no default __[2]__
* `SSL_IP` comma seperate list of alternative IPs, no default __[2]__

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

### Generate Keys for Kubernetes Secret for use with Ingress:

The following environment variables will help control your Kubernetes secret:

* `K8S_NAME` (omgwtfssl)
* `K8S_NAMESPACE` (default)
* `K8S_SAVE_CA_KEY` (false)
* `K8S_SAVE_CA_CRT` (false)
* `SILENT` (true)

An example manifest can be found at `examples/minikube/omgwtfssl.yaml`.

```
$ kubectl apply -f examples/minikube
configmap "omgwtfssl" created
job "omgwtfssl" created

$ kc get pods -a
NAME              READY     STATUS      RESTARTS   AGE
omgwtfssl-blz7m   0/1       Completed   0          2m

$ kubectl logs omgwtfssl-blz7m
secret "omgwtfssl" created
kubectl get secret omgwtfssl -o yaml

apiVersion: v1
kind: Secret
metadata:
  name: omgwtfssl
data:
  tls.crt: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURHakNDQWdLZ0F3SUJBZ0lKQU5VWFdBaFJ4U0RqTUEwR0NTcUdTSWIzRFFFQkN3VUFNQkl4RURBT0JnTlYKQkFNTUIzUmxjM1F0WTJFd0hoY05NVGd3TXpBMU1qSXhOakF3V2hjTk1qZ3dNVEV5TWpJeE5qQXdXakFpTVNBdwpIZ1lEVlFRRERCY3FMakU1TWk0eE5qZ3VPVGt1TVRBd0xuaHBjQzVwYnpDQ0FTSXdEUVlKS29aSWh2Y05BUUVCCkJRQURnZ0VQQURDQ0FRb0NnZ0VCQUtldG5qcWVXY1liWktvQ0JVWHp5NWxQRGszRFo3S0R2cDZWWFBQTGhPTy8Ka2w3NDAwd2JjcGQ5aXdHNFY5elV3RkRiTG83dkFEMVVIMVRDL2lzWUtCZ1dvK2s1UEQwVzVWTlFiRnlmRUtzYQpaUjNycHFsMC9vR2M2eXdvWi9rUlVaZlF2M0s1TUV1WHQ1enA1LzVycllVdHFpVUxadTVlYjc3UW1pWUpOemMyCjFEWVYvaWNYc2pxTmhNL05ZQmtGZWpjd0lvUWp0YmZTejl5YldXS2VESURLQVY4a0RsN2pFVlNHVFRGYllwSGkKMnVjS1BpOEZxTGNRZEVCSDB5NnR5Q3N6ZW01cnhWM2VBeFMrN2EvZ1JaWXpZN2RwdDlia1R3M1AyRytKOWFidgpIa0FHbHN0Z01nY2l0VThZb0c4dmRNM01rRy9ReGl0Sk5xVDNwQVJFN0JNQ0F3RUFBYU5qTUdFd0NRWURWUjBUCkJBSXdBREFMQmdOVkhROEVCQU1DQmVBd0hRWURWUjBsQkJZd0ZBWUlLd1lCQlFVSEF3SUdDQ3NHQVFVRkJ3TUIKTUNnR0ExVWRFUVFoTUIrQ0Z5b3VNVGt5TGpFMk9DNDVPUzR4TURBdWVHbHdMbWx2aHdUQXFHTmtNQTBHQ1NxRwpTSWIzRFFFQkN3VUFBNElCQVFCQ1BOeEpHNUIrQjFiaEZ4U09oTHNVdVhSb0s1QldHeS94OGw4dDdGU2VWYjhuCmJmd2VSSnZZV0U0WDZkRnZJV2dOdDRyYTFodHhGc2k1b0Nad1FBaXd0U0xSMzEydU11d0RxN09VY256LzNXSUwKQlRaeEJIaGZCZkNCMnlJZEp6a3YrQUsrSTFsQitxY1VFKzd2bVJOb3EzK1BOeXk2SUNBQUlpbTc5RW1BcVVodwp6YnQ1YnhqYmlteFJUMWQ5dWdnTC9lM3NqZFpRM1VJTEZzNkdNemNkWXQ5WHBTdWdsb1RKTHZOTThCampXOTl5CkFxWUdWYkltc3craFdUZFhIVGljZXgwOVFCa3p4RUxzYmszb0hLOWFoV3VDSmU2ZDB3emJiTldEUWlJcEgvN1EKSDB0V2kzNTBYOVZBV2lqQXdSZ3UybG1lcVp6bVlwNk1ibWQzcjFuMQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==
  tls.key: LS0tLS1CRUdJTiBSU0EgUFJJVkFURSBLRVktLS0tLQpNSUlFcFFJQkFBS0NBUUVBcDYyZU9wNVp4aHRrcWdJRlJmUExtVThPVGNObnNvTytucFZjODh1RTQ3K1NYdmpUClRCdHlsMzJMQWJoWDNOVEFVTnN1anU4QVBWUWZWTUwrS3hnb0dCYWo2VGs4UFJibFUxQnNYSjhRcXhwbEhldW0KcVhUK2daenJMQ2huK1JGUmw5Qy9jcmt3UzVlM25Pbm4vbXV0aFMycUpRdG03bDV2dnRDYUpnazNOemJVTmhYKwpKeGV5T28yRXo4MWdHUVY2TnpBaWhDTzF0OUxQM0p0WllwNE1nTW9CWHlRT1h1TVJWSVpOTVZ0aWtlTGE1d28rCkx3V290eEIwUUVmVExxM0lLek42Ym12RlhkNERGTDd0citCRmxqTmp0Mm0zMXVSUERjL1liNG4xcHU4ZVFBYVcKeTJBeUJ5SzFUeGlnYnk5MHpjeVFiOURHSzBrMnBQZWtCRVRzRXdJREFRQUJBb0lCQVFDRnZleVVFdFBHT1BrOAp4T25SMXRnUlMwWThibHlhdll4Z1R3QmFFSDNKYm5iZ081WEZnYXNQKy9uUkFHbE1ZWUdYdkl0UlJINnJiQnFsCmIvWnRCeEtMekJzbkhoalhIUmtETUFXT2h1MHpuSlVFblg1TWNWM0NvaGZPRzloNmgvN05tWm5xZHAxMzNlWjkKU1BCYk5TV3RNVFFoNGd0U200NkQ0enpnazc4djBNZjAyMWh4UmFtRVRHM0MxTGd0Q3ZXY0dhWWh5TGlTNXhkKwpPeWVSb08zQXR0ZU5ObUszZkhIR2ZNSDRRR2FScnQzSktabUQrcnQ5NHQzbEhNY2YwOFV5d1A4Tjg0K2xOUlVLClpOZkd4bjNnYXZyNWJPT2twYUNvUTMxWnVPL3JFM0RzTGMwd25NTnVCMU9SeEJjR2tLYVZPVWI0YmhwVEE4dGwKR1MwejU2RHhBb0dCQU5oMzV0NGZzRjJxbVlwaGdxU2NvWEU0WUgzNVV2NzFVai9hWndDK0NlcythS2pHczRJSwpXeXpvQnIwR21Na20yQ3AreDkwbFhjano0WmFKUG1NWXdNcEVyQnluaTFVY3Z0Z08rb1VheTdWNGZWOUNsUUdLCnNENmlCUVFnSjloTEtZdkJnRDBkUjV2TWFWYTM2SFF3S3EzTjRHdzNIRFVwZ0NBeEFFenVWUDJaQW9HQkFNWk0KdXZCRVRBWU5odE5SdHFRUlgzUHhtTVJCWmt3YlZrK2ZFWjY1cWd4MUFGeTd4UURxNGxJanpKZHh5T3J5OWd0ZApxMWRLQkFhRzVrN0tWWWJzaXlSdUwxS0pwRlhKQm1WZURyaG14NEV0OWc3dlM0dmRRSklPQzlROWtMTS9TRE1lCnNjc0VqS243UXFVR0o0UHJwY0lIakY0ZW5lRE4xK3k2VzYwSitVcUxBb0dBSkhCS2xLbVE3ck9CRlNKRTg2REsKTEZ6cElVdVBCUXdXeEZqbmJlQ1BtdUh1akRxbWpRVmhRN1hyTEhhbjBYU1FmdGJJbmhsa0tDZWxtY21RanUzagp4aWk1TURtajRyZnNDRUs5T1JyQm45S2dpQ0NWSktWTDliOGdTUW1BcTVBN2RpTWtpeVVhb01kUUZDRHhLRjNUClVWNk9vS2pHUHN5MW5MV2k3MUJQVGtFQ2dZRUFzK1dpWmh5Zmw1SW44WWdkR0lVR1FvbzRYRHMwa2ZEdkFYYSsKcG0rclhIZThwMlJWV2ZxODdXVzYwdDJRTjgzSTl4QzRRNDFMVDV5TVRZaHp4TjdOY0hSaGpCQ0F2SzZObGVLWgptaUxyOVQ1OERwcDZ2OTB1R2hLU0dxN3JtaUhiM3p5R2NUYWtZZ1VuTmN6NmhreCs2U0t0N2lqNmM1cHF2RUZvCnIvZnZaL2NDZ1lFQXZGU29QZmhxaTkxOTFVWXA2K3R6YVBIQmcxeGRSWlVjQ2o2UFI4L0hQZVJhWWFCQkdMVysKdUVmWm1VbGhOUVkwblozT1p3aEw1VGlWNzUyTVFtdEMwQlVtSUhrQmg1MnEzcUorMW1qdi9wS0xZWkhxcnpSVwpXcHp6cTdlWFdwNVE2R0YwZTBQa0pFVzdMWmMwYjN3UmFMRTBhUStLeGc0ODZSUlFEVGFJQ0xjPQotLS0tLUVORCBSU0EgUFJJVkFURSBLRVktLS0tLQo=
```
