#! /bin/sh

GSTREAMER=~/Devel/gstreamer/cerbero/build/dist/linux_x86_64


#
# lib
#

if [ -d lib ]; then
  rm -r lib
fi

mkdir lib

cp $GSTREAMER/lib/libbz2.so.1.0 lib/libbz2.so.1.0
patchelf --set-rpath '$ORIGIN' lib/libbz2.so.1.0
