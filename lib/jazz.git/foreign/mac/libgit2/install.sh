#! /bin/sh

install_name_tool -id @rpath/libgit2.0.28.1.dylib lib/libgit2.0.28.1.dylib
install_name_tool -change /Users/cartier/Devel/system/libgit2/build/libgit2.0.28.1.dylib @rpath/libgit2.0.28.1.dylib lib/libgit2.0.28.1.dylib
