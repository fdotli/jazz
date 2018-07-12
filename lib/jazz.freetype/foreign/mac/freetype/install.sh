#! /bin/sh

install_name_tool -id @rpath/libfreetype.6.dylib lib/libfreetype.6.dylib
install_name_tool -change /usr/local/opt/libpng/lib/libpng16.16.dylib @rpath/libpng16.16.dylib lib/libfreetype.6.dylib
