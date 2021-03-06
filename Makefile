# template makefile for ocaml native compiler
OCAML := ocamlopt
OPTS  := -g
CLEAN_EXTS := *.cmi *.cmx *.cmo
BINARIES := hellow


all: hellow

hellow: hellow.cmx
	$(OCAML) $(OPTS) -o $@ $?

%.cmx: %.ml
	$(OCAML) $(OPTS) -o $@ -c $?

clean:
	rm -rf *.o $(CLEAN_EXTS) $(BINARIES)

.PHONY: clean all
