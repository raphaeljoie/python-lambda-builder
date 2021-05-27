#!/bin/bash

# ensure build dir
mkdir build

# Remove previously generated files
rm -rf build/packages
rm -rf build/lambda.zip

set -e

# Install requirements in a separated folder
pip install -r requirements.txt --target build/packages

cd build/packages
zip -r ../../build/lambda.zip *
cd ../../
zip -r build/lambda.zip * -x "build/*" "$@"
