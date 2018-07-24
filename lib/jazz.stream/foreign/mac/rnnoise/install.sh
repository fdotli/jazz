#! /bin/sh

install_name_tool -id @rpath/librnnoise.0.dylib lib/librnnoise.0.dylib
install_name_tool -change /usr/local/lib/librnnoise.0.dylib @rpath/librnnoise.0.dylib lib/librnnoise.0.dylib
