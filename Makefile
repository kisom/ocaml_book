OCAML := ocamlopt
OPTS  := -g


all: hellow

%: %.o
	$(OCAML) $(OPTS) -c $< -o $@


%.o: %.ml
	$(OCAML) $(OPTS) -o $@ -c $?

clean:
	rm -rf *.o
	rm -rf *.cmi
	rm -rf *.cmx

.PHONY: clean all
