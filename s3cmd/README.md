## s3cmd

```
docker run --rm -e AWS_ACCESS_KEY_ID= \
                -e AWS_SECRET_ACCESS_KEY= \
                -e S3CMD_VERSION=2.0.1 \
                -v /tmp/database:/app \
                -it duyhenryer/s3cmd
```

Tips:
```
s3cmd put --recursive --acl-public -m text/css --add-header='content-encoding:gzip' main-ga.css s3://BUCKET-NAME/assets/
```
```
s3cmd put --recursive --acl-public -m application/javascript --add-header='content-encoding:gzip' main-ga.js s3://BUCKET-NAME/assets/
```
```
s3cmd put --recursive --acl-public --add-header='content-type':'image/png' facebook__2424__colored.png s3://BUCKET-NAME/assets/
```


Ref: 
+ https://github.com/rbsdev/docker-s3cmd
+ https://gist.githubusercontent.com/imkarthikk/2fe9053f0aef275f5527/raw/9f00b374b76624be56175eecc1d0d4648794579b/Jekyll-S3.sh
