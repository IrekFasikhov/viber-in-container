# viber-container
Build container image:
```
docker build . -t viber

```

## !Create folder:

```
mkdir ~/.Viber
```
## Run image:
```
docker run --rm --name viber -it -e DISPLAY=unix$DISPLAY -v ~/.Viber:/home/viber/.ViberPC -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/snd:/dev/snd --privileged viber
```
