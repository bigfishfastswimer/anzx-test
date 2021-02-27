# ANZ Technical Test A

*Tasks*
- Convert the current Dockerfile into a multistage build Dockerfile.
- Optimise Dockerfile for caching benefits.

---

## Build image

```sh
docker build -t IMAGENAME:VERSION .
```
Example:
```sh
docker build -t fishertest-1:0.0.1 .
```

## Run container

```sh
docker run -p 8000:8000 IMAGENAME:VERSION .
```
Example:
```sh
docker run -p 8000:8000 -t fishertest-1:0.0.1 .
```
Enter `CTRL+C` to stop 

## Test application

Execute below `curl` commands in terminals for querying the url endpoints.

```sh
curl localhost:8000
```
Result:

`Hello world.`

```sh
curl localhost:8000/go
```
Result:

`Don't communicate by sharing memory, share memory by communicating.`

```sh
curl localhost:8000/opt
```
Result:

`Don't communicate by sharing memory, share memory by communicating.`

## Reference:
---
- [multi-stage docker builds](https://docs.docker.com/develop/develop-images/multistage-build/)
- [Best practices for writing Dockerfiles](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)
