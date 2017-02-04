SHELL = /bin/sh
.POSIX:
.SILENT:

TIME ?= /usr/bin/time
TFLAGS ?= -p

build ?= build
name ?= fibo

list ?= \
ada \
ada-fast \
awk \
bash \
c \
c-fast \
chicken \
chicken-fast \
cpp \
cpp-fast \
d \
d-fast \
d8 \
dash \
elisp \
elisp-bc \
elixir \
fish \
fortran \
fortran-fast \
gawk \
gccgo \
gccgo-fast \
go \
js17 \
julia \
lua \
luajit \
ocaml \
ocaml-bc \
ocaml-nat \
pascal \
pascal-fast \
php \
pypy \
python2 \
python3 \
rc \
rust \
rust-fast \
squirrel \
tcl \
zsh

.PHONY: ${list}

ext ?= ${exec}
file ?= ./${name}.${ext}
args ?= 40
msg = ${exec}${options} ${args}

################################################################################
## Init.

.PHONY: all
all: init ${list}

init:
	${SHELL} -c 'command -v ${time}' >/dev/null 2>&1 || { echo "${time} not found." >&2; false; }
	-mkdir ${build} 2>/dev/null

################################################################################
## Rules are sorted by input file extension.

ada: ${build}/ada
	exec=ada ${MAKE} exec
${build}/ada: ${name}.adb
	-gnatmake -q -march=native -O0 ${name}.adb -o ${build}/ada

ada-fast: ${build}/ada-fast
	exec=ada-fast ${MAKE} exec
${build}/ada-fast: ${name}.adb
	-gnatmake -q -march=native -Ofast ${name}.adb -o ${build}/ada-fast

awk:
	exec=nawk options="-f" ext=awk ${MAKE} run
gawk:
	exec=gawk options="-f" ext=awk ${MAKE} run

c: ${build}/c
	exec=c ${MAKE} exec
${build}/c: ${name}.c
	-gcc -march=native -O0 ${name}.c -o ${build}/c

c-fast: ${build}/c-fast
	exec=c-fast ${MAKE} exec
${build}/c-fast: ${name}.c
	-gcc -march=native -Ofast ${name}.c -o ${build}/c-fast

cpp: ${build}/cpp
	exec=cpp ${MAKE} exec
${build}/cpp: ${name}.cpp
	-g++ -march=native -O0 ${name}.cpp -o ${build}/cpp

cpp-fast: ${build}/cpp-fast
	exec=cpp-fast ${MAKE} exec
${build}/cpp-fast: ${name}.cpp
	-g++ -march=native -Ofast ${name}.cpp -o ${build}/cpp-fast

d: ${build}/d
	exec=d ${MAKE} exec
${build}/d: ${name}.c
	-dmd ${name}.d -of${build}/d

d-fast: ${build}/d-fast
	exec=d-fast ${MAKE} exec
${build}/d-fast: ${name}.d
	-dmd -O ${name}.d -of${build}/d-fast

elisp:
	exec=elisp ext=el ${MAKE} run
elisp-bc:
	exec=elisp options=-bc ext=el ${MAKE} run

elixir:
	exec=elixir ext=ex ${MAKE} run

fortran: ${build}/fortran
	exec=fortran ${MAKE} exec
${build}/fortran: ${name}.f90
	-gfortran -march=native -O0 ${name}.f90 -o ${build}/fortran

fortran-fast: ${build}/fortran-fast
	exec=fortran-fast ${MAKE} exec
${build}/fortran-fast: ${name}.f90
	-gfortran -march=native -Ofast ${name}.f90 -o ${build}/fortran-fast

go: ${build}/go
	exec=go ${MAKE} exec
${build}/go: ${name}.go
	-go build -o ${build}/go ${name}.go

## Note: we use debug info for go as a temporary fix for the issue with gccgo as
## of 2014-09-13.
gccgo: ${build}/gccgo
	exec=gccgo ${MAKE} exec
${build}/gccgo: ${name}.go
	-gccgo -g -march=native -O0 ${name}.go -o ${build}/gccgo

gccgo-fast: ${build}/gccgo-fast
	exec=gccgo-fast ${MAKE} exec
${build}/gccgo-fast: ${name}.go
	-gccgo -g -march=native -Ofast ${name}.go -o ${build}/gccgo-fast

d8:
	exec=d8 ext=js ${MAKE} run
js17:
	exec=js17 ext=js ${MAKE} run
## TODO: js24 is not working with current code.
# js24:
# 	exec=js24 ext=js ${MAKE} run

julia:
	exec=julia ext=jl ${MAKE} run

lua:
	exec=lua ${MAKE} run
luajit:
	exec=luajit ext=lua ${MAKE} run

squirrel:
	exec=squirrel ext=nut ${MAKE} run

ocaml:
	exec=ocaml ext=ml ${MAKE} run
ocaml-bc: ${build}/ocaml-bc
	exec=ocaml-bc ${MAKE} exec
${build}/ocaml-bc: ${name}.ml
	-ocamlc ${name}.ml -o ${build}/ocaml-bc
ocaml-nat: ${build}/ocaml-nat
	exec=ocaml-nat ${MAKE} exec
${build}/ocaml-nat: ${name}.ml
	-ocamlc.opt ${name}.ml -o ${build}/ocaml-nat

pascal: ${build}/pascal
	exec=pascal ${MAKE} exec
${build}/pascal: ${name}.pas
	-fpc -vw -Os ${name}.pas -o${build}/pascal 2>/dev/null >&2

pascal-fast: ${build}/pascal-fast
	exec=pascal-fast ${MAKE} exec
${build}/pascal-fast: ${name}.pas
	-fpc -vw -O2 ${name}.pas -o${build}/pascal-fast 2>/dev/null >&2

perl:
	exec=perl ext=pl ${MAKE} run

php:
	exec=php ${MAKE} run

pypy:
	exec=pypy ext=py ${MAKE} run
python2:
	exec=python ext=py ${MAKE} run
python3:
	exec=python3 ext=py ${MAKE} run

rust: ${build}/rust
	exec=rust ${MAKE} exec
${build}/rust: ${name}.rs
	-rustc -C opt-level=0 ${name}.rs -o ${build}/rust

rust-fast: ${build}/rust-fast
	exec=rust-fast ${MAKE} exec
${build}/rust-fast: ${name}.rs
	-rustc -C opt-level=3 ${name}.rs -o ${build}/rust-fast

chicken: ${build}/chicken
	exec=chicken ${MAKE} exec
${build}/chicken: ${name}.scm
	-csc -O0 ${name}.scm -o ${build}/chicken

chicken-fast: ${build}/chicken-fast
	exec=chicken-fast ${MAKE} exec
${build}/chicken-fast: ${name}.scm
	-csc -O5 ${name}.scm -o ${build}/chicken-fast

dash:
	exec=dash ext=sh args=20 ${MAKE} run
bash:
	exec=bash ext=sh args=20 ${MAKE} run
zsh:
	exec=zsh ext=sh args=20 ${MAKE} run
rc:
	exec=rc args=20 ${MAKE} run
fish:
	exec=fish args=20 ${MAKE} run

tcl:
	exec=tclsh ext=tcl ${MAKE} run

################################################################################
## Execute.

run:
	-out="$$(${TIME} ${TFLAGS} ${exec} ${options} ${file} ${args} 2>&1 >/dev/null)" && \
	echo "$$out" | awk '{print "${msg}\t" $$2 "s"; exit}'

exec:
	-out="$$(${TIME} ${TFLAGS} ${build}/${exec} ${args} 2>&1 >/dev/null)" && \
	echo "$$out" | awk '{print "${msg}\t" $$2 "s"; exit}'

################################################################################
## Management.

.PHONY: clean
clean:
	rm -f ${build}/* ${name}.cmi ${name}.cmo ${name}.o ${name}.ali fibonacci.mod

list:
	@echo ${list}
