# Simple reverse http proxy based on HAproxy

Usage:

```
docker run \
  -d \
  --name simple-proxy \
  -e UPSTREAM=example.com \
  -e SSL=false \
  -p 80:80 \
pure/simple-reverse-proxy
```

UPSTREAM could be fqdn or IP address of remote http resource. Examples of UPSTREAM:

```
example.com
some.server.com:8080
10.10.10.10:8000
```

Value for `SSL` is true or false. If the target is using SSL then the `SSL` variable should be `true`
