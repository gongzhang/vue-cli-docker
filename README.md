# Docker image for Vue CLI 3

This Docker image [gongzhang/vue-cli](https://hub.docker.com/r/gongzhang/vue-cli) contains following components:

- Node: 10.15
- npm: 6.4
- yarn: 1.16
- Vue CLI: 3.8
- Python: 2.7

You can use this image to develop Vue CLI projects without installing Node environment on your machine.

## Get Started

Assume that your workspace is at `/Users/me/workspace` on your machine.

To install dependencies for a project, e.g. `fancy-project`, using command:

```sh
docker run --rm -it \
  -v /Users/me/workspace:/app \ # mount workspace into docker
  -w /app/fancy-project \       # set workdir to a project
  gongzhang/vue-cli yarn install
```

To run Vue CLI UI, using command:
```sh
# start in background
docker run -dit --name vue-ui \
  -v /Users/me/workspace/.vue-cli-ui:/root/.vue-cli-ui \
  -v /Users/me/workspace:/app \
  -p 8000:8000 \ # port for vue ui
  -p 8080:8080 \ # port for dev server
  --restart=unless-stopped \
  gongzhang/vue-cli vue ui -H 0.0.0.0

# stop it later
docker rm -f vue-ui
```
