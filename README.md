# Bundle Python for AWS Lambda or Azure Functions

> Use Docker to bundle python requirements for **AWS Lambda** or **Azure Functions**, on **OSX**

AWS Lambda and Azure Functions are running Python code in a pristine Linux environment and packaging the
dependencies with the code can be a hurdle. Especially when building dependencies on a non-linux/amd64 platform.

## Usage

```
docker run \
    --volume $(pwd):/workdir \
    --platform linux/amd64 \
    python-lambda-builder \
    folder-to-skip/*
```
and find your lambda ready to be uploaded in
```
./build/lambda.zip
```

## TODO
- [ ] `.zipignore` to list the files to skip in archive creation
- [ ] test on Windows
- [ ] test on Linux
- [ ] argument change `lambda.zip`
- [ ] argument to set `./build/`
- [x] publish on docker hub
- [ ] tags like 0.1.0-python3.8

## Development
```
docker buildx build \
    --platform linux/amd64 \
    --tag python-lambda-builder .
```
