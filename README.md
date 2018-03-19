# caddy

### License

This image is built from [source code](https://github.com/mholt/caddy). As such, it is subject to the project's [Apache 2.0 license](https://github.com/mholt/caddy/blob/baf6db5b570e36ea2fee30d50f879255a5895370/LICENSE.txt), but it neither contains nor is subject to [the EULA for Caddy's official binary distributions](https://github.com/mholt/caddy/blob/545fa844bbd188c1e5bff6926e5c410e695571a0/dist/EULA.txt).

## Usage

### Default Caddyfile

The image contains a default Caddyfile.

### Let's Encrypt Auto SSL
**Note** that this does not work on local environments.

Use a valid domain and add email to your Caddyfile to avoid prompt at runtime.
Replace `mydomain.com` with your domain and `user@host.com` with your email.
```
mydomain.com
tls user@host.com
```

### Run the image

You can change the the ports if ports 9080 and 90443 are not available on host. e.g. 9081:9080, 9444:9443

```sh
$ docker run -d \
    -v $(pwd)/Caddyfile:/etc/Caddyfile \
    -p 9080:9080 -p 9443:9443 \
    abiosoft/caddy
```
