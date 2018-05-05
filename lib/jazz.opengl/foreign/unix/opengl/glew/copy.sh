#! /bin/sh


#
# lib
#

if [ -d lib ]; then
  rm -r lib
fi

mkdir lib

cp /usr/lib/x86_64-linux-gnu/libGLEW.so.1.13 lib/libGLEW.so.1.13
patchelf --set-rpath '$ORIGIN' lib/libGLEW.so.1.13
ln -sr lib/libGLEW.so.1.13 lib/libGLEW.so


#
# include
#

if [ -d include ]; then
  rm -r include
fi

mkdir include
mkdir include/GL
cp /usr/include/GL/glew.h include/GL
cp /usr/include/GL/glxew.h include/GL
cp /usr/include/GL/wglew.h include/GL
