#!/bin/bash

echo "Build now"
gitbook build
cp -f index.html _book/index.html
cp -f assets/favicon.ico _book/gitbook/images/favicon.ico
cp -f assets/icon_sipeed.png _book/gitbook/images/apple-touch-icon-precomposed-152.png
echo "Build end"

echo "Run server now at http://localhost:4000"
cd _book && python -m SimpleHTTPServer 4000

