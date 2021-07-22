# Bundle Python for AWS Lambda or Azure Functions

> Bundle python requirements for **AWS Lambda** or **Azure Functions**, on **OSX** using a one-line Docker command

AWS Lambda and Azure Functions are running Python code in a pristine Linux environment. 
Packaging the dependencies can be a hurdle, especially when working on a non-linux/amd64 platform.
This repo and Docker image is designed to ease that process

## Usage
Move to the Python project root, make sure the `requirements.txt` is there and run
```
docker run \
    --volume $(pwd):/workdir \
    --platform linux/amd64 \
    raphaeljoie/python-lambda-builder \
    folder-to-skip/*
```
The ready to upload zip-bundled lambda is in
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
