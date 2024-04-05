Some utilities written by Dan Kelley.

* `v` a python-3 script to make a versioned copy of a file.
* `a` a python-3 script to archive a file, putting a hash-named
  version in ~/archive and adding an item to the index.csv file in
  that directory.  You must create that directory and that file first.
  The hash code is based on the full pathname of the file. This
  utility takes 1 or 2 arguments.  The first is the filename. The
  second, which is optional, is a comment that will be included in the
  csv file.
