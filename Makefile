EMACS ?=	emacs

.PHONY: all compile lint clean

all: compile lint

compile: vc-got.elc

lint:
	${EMACS} -Q --batch -L . -l targets/lint.el

check:
	${EMACS} -batch -l ert -l vc-got.el -l vc-got-tests.el -f ert-run-tests-batch-and-exit

clean:
	rm -f *.elc

.SUFFIXES: .el .elc
.el.elc:
	${EMACS} -Q --batch -L . -f batch-byte-compile $<
