# Build and push an image

```sh
docker build -t local-image .
docker login -u username -p password
docker tag local-image:tagname new-repo:tagname
docker push new-repo:tagname
```
