Notes for Audacity
==================

Running:

Building produces a binary in the top-level directory of the source tree, so you should be able to run using:

    ./audacity &

To get play/record inside a VM, set your playback device to "Intel 82801AA-ICH: - (hw:0,0)" and recording device to "Intel 82801AA-ICH: - (hw:0,0): Mic:0".

Building:

If you modify a file, then to rebuild:

    make

If you modify `#includes` in files:

    make dep; make

If you modify `configure.ac`, `Makefile.am`, or any files in `m4/`:

    autoreconf; ./configure; make dep; make

If you add or remove files:

    ./configure; make dep; make
