#! /bin/sh

GSTREAMER=~/Devel/gstreamer/cerbero/build/dist/linux_x86_64

if [ -d gstreamer ]; then
  rm -r gstreamer
fi

mkdir gstreamer


#
# lib
#

cpplugin() {
    cp $GSTREAMER/lib/$1.so gstreamer/lib/$1.so
    patchelf --set-rpath '$ORIGIN/..' gstreamer/lib/$1.so
}

cpshared() {
    cp $GSTREAMER/lib/$1.$2 gstreamer/lib/$1.$2
    patchelf --set-rpath '$ORIGIN' gstreamer/lib/$1.$2
    ln -sr gstreamer/lib/$1.$2 gstreamer/lib/$1
}

mkdir gstreamer/lib
mkdir gstreamer/lib/gstreamer-1.0

cpplugin gstreamer-1.0/libgstalpha
cpplugin gstreamer-1.0/libgstalsa
cpplugin gstreamer-1.0/libgstapp
cpplugin gstreamer-1.0/libgstaudioconvert
cpplugin gstreamer-1.0/libgstaudiofx
cpplugin gstreamer-1.0/libgstaudioparsers
cpplugin gstreamer-1.0/libgstaudioresample
cpplugin gstreamer-1.0/libgstaudiotestsrc
cpplugin gstreamer-1.0/libgstautodetect
cpplugin gstreamer-1.0/libgstavi
cpplugin gstreamer-1.0/libgstcoreelements
cpplugin gstreamer-1.0/libgstdeinterlace
cpplugin gstreamer-1.0/libgstisomp4
cpplugin gstreamer-1.0/libgstjpeg
cpplugin gstreamer-1.0/libgstlibav
cpplugin gstreamer-1.0/libgstmatroska
cpplugin gstreamer-1.0/libgstogg
cpplugin gstreamer-1.0/libgstplayback
cpplugin gstreamer-1.0/libgstsubparse
cpplugin gstreamer-1.0/libgsttypefindfunctions
cpplugin gstreamer-1.0/libgstvideoconvert
cpplugin gstreamer-1.0/libgstvideofilter
cpplugin gstreamer-1.0/libgstvideoparsersbad
cpplugin gstreamer-1.0/libgstvideoscale
cpplugin gstreamer-1.0/libgstvideotestsrc
cpplugin gstreamer-1.0/libgstvideo4linux2
cpplugin gstreamer-1.0/libgstvolume
cpplugin gstreamer-1.0/libgstvorbis
cpplugin gstreamer-1.0/libgstvpx
cpplugin gstreamer-1.0/libgstwavparse
cpplugin gstreamer-1.0/libgstx264

cpshared libffi.so 7
cpshared libgio-2.0.so 0
cpshared libglib-2.0.so 0
cpshared libgmodule-2.0.so 0
cpshared libgobject-2.0.so 0
cpshared libgraphene-1.0.so 0
cpshared libgstallocators-1.0.so 0
cpshared libgstapp-1.0.so 0
cpshared libgstaudio-1.0.so 0
cpshared libgstbase-1.0.so 0
cpshared libgstcodecparsers-1.0.so 0
cpshared libgstfft-1.0.so 0
cpshared libgstgl-1.0.so 0
cpshared libgstpbutils-1.0.so 0
cpshared libgstreamer-1.0.so 0
cpshared libgstriff-1.0.so 0
cpshared libgstrtp-1.0.so 0
cpshared libgsttag-1.0.so 0
cpshared libgstvideo-1.0.so 0
cpshared libjpeg.so 8
cpshared libogg.so 0
cpshared liborc-0.4.so 0
cpshared libpng16.so 16
cpshared libvorbis.so 0
cpshared libvorbisenc.so 2
cpshared libx264.so 148
cpshared libz.so 1


#
# libexec
#

mkdir gstreamer/libexec
mkdir gstreamer/libexec/gstreamer-1.0
cp $GSTREAMER/libexec/gstreamer-1.0/gst-plugin-scanner gstreamer/libexec/gstreamer-1.0
patchelf --set-rpath '$ORIGIN/../../lib' gstreamer/libexec/gstreamer-1.0/gst-plugin-scanner


#
# include
#

mkdir gstreamer/include
cp -r $GSTREAMER/include/gstreamer-1.0 gstreamer/include
cp -r $GSTREAMER/include/glib-2.0 gstreamer/include
cp -r $GSTREAMER/lib/glib-2.0 gstreamer/lib
