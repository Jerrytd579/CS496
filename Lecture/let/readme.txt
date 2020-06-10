To build and use in utop:

dune utop src

To run tests:

dune runtest

or

dune build @runtest

To clean:

dune clean

To generate documentation (install odoc with opam first):

dune build @doc

The generated html files are in:

open _build/default/_doc/_html/index.html 
