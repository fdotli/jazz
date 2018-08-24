#! /bin/sh

GSTREAMER=/Library/Frameworks/GStreamer.framework/Versions/1.0

if [ -d gstreamer ]; then
  rm -r gstreamer
fi

mkdir gstreamer


#
# lib
#

cplib() {
    cp $GSTREAMER/lib/$1 gstreamer/lib/$1
}

mkdir gstreamer/lib
mkdir gstreamer/lib/gstreamer-1.0
cplib gstreamer-1.0/libgstalpha.so
cplib gstreamer-1.0/libgstapp.so
cplib gstreamer-1.0/libgstapplemedia.so
cplib gstreamer-1.0/libgstaudioconvert.so
cplib gstreamer-1.0/libgstaudiofx.so
cplib gstreamer-1.0/libgstaudioparsers.so
cplib gstreamer-1.0/libgstaudioresample.so
cplib gstreamer-1.0/libgstaudiotestsrc.so
cplib gstreamer-1.0/libgstautodetect.so
cplib gstreamer-1.0/libgstavi.so
cplib gstreamer-1.0/libgstcoreelements.so
cplib gstreamer-1.0/libgstdeinterlace.so
cplib gstreamer-1.0/libgstisomp4.so
cplib gstreamer-1.0/libgstjpeg.so
cplib gstreamer-1.0/libgstlibav.so
cplib gstreamer-1.0/libgstmatroska.so
cplib gstreamer-1.0/libgstogg.so
cplib gstreamer-1.0/libgstopus.so
cplib gstreamer-1.0/libgstosxaudio.so
cplib gstreamer-1.0/libgstplayback.so
cplib gstreamer-1.0/libgstsubparse.so
cplib gstreamer-1.0/libgsttypefindfunctions.so
cplib gstreamer-1.0/libgstvideoconvert.so
cplib gstreamer-1.0/libgstvideofilter.so
cplib gstreamer-1.0/libgstvideoparsersbad.so
cplib gstreamer-1.0/libgstvideorate.so
cplib gstreamer-1.0/libgstvideoscale.so
cplib gstreamer-1.0/libgstvideotestsrc.so
cplib gstreamer-1.0/libgstvolume.so
cplib gstreamer-1.0/libgstvorbis.so
cplib gstreamer-1.0/libgstvpx.so
cplib gstreamer-1.0/libgstwavparse.so
cplib gstreamer-1.0/libgstx264.so
cplib libffi.7.dylib
cplib libgio-2.0.0.dylib
cplib libglib-2.0.0.dylib
cplib libgmodule-2.0.0.dylib
cplib libgobject-2.0.0.dylib
cplib libgraphene-1.0.0.dylib
cplib libgstallocators-1.0.0.dylib
cplib libgstapp-1.0.0.dylib
cplib libgstaudio-1.0.0.dylib
cplib libgstbase-1.0.0.dylib
cplib libgstcodecparsers-1.0.0.dylib
cplib libgstfft-1.0.0.dylib
cplib libgstgl-1.0.0.dylib
cplib libgstpbutils-1.0.0.dylib
cplib libgstreamer-1.0.0.dylib
cplib libgstriff-1.0.0.dylib
cplib libgstrtp-1.0.0.dylib
cplib libgsttag-1.0.0.dylib
cplib libgstvideo-1.0.0.dylib
cplib libintl.8.dylib
cplib libjpeg.8.dylib
cplib libogg.0.dylib
cplib libopus.0.dylib
cplib liborc-0.4.0.dylib
cplib libpng16.16.dylib
cplib libvorbis.0.dylib
cplib libvorbisenc.2.dylib
cplib libx264.148.dylib
cplib libz.1.dylib


#
# libexec
#

mkdir gstreamer/libexec
mkdir gstreamer/libexec/gstreamer-1.0
cp $GSTREAMER/libexec/gstreamer-1.0/gst-plugin-scanner gstreamer/libexec/gstreamer-1.0


#
# include
#

mkdir gstreamer/include
cp -r $GSTREAMER/include/gstreamer-1.0 gstreamer/include
cp -r $GSTREAMER/include/glib-2.0 gstreamer/include
cp -r $GSTREAMER/lib/glib-2.0 gstreamer/lib
