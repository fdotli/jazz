#! /bin/sh

if [ -d include ]; then
  rm -r include
fi

if [ -d lib ]; then
  rm -r lib
fi

cp -r /usr/local/Cellar/libpng/1.6.34/include/libpng16 include

mkdir lib
cp /usr/local/Cellar/libpng/1.6.34/lib/libpng16.16.dylib lib
chmod 755 lib/libpng16.16.dylib
