set -e

premake5 install-package --allow-install --allow-module

cd test/

premake5 gmake

./bin/Test/GoogleTest