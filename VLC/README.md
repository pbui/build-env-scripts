Notes for VLC media player
==========================

Running:

Building produces a binary in the top-level directory of the source tree, so you should be able to run using:

    ./vlc &

Building:

If you modify a file, then to rebuild:

    make

If you change any dependencies, you may need to run

    ./bootstrap; ./configure

before rebuilding.
