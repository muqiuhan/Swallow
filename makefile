# this is the build file for project swallow
# it is autogenerated by the xmake build system.
# do not edit by hand.

ifneq ($(VERBOSE),1)
VV=@
endif

MXX=/usr/bin/gcc
CXX=/usr/bin/gcc
RC=/home/muqiu/.cargo/bin/rustc
AS=/usr/bin/gcc
MM=/usr/bin/gcc
CU=/usr/bin/clang
CC=/usr/bin/gcc

AR=/usr/bin/ar
RCAR=/home/muqiu/.cargo/bin/rustc
LD=/usr/bin/g++
RCLD=/home/muqiu/.cargo/bin/rustc
SH=/usr/bin/g++
RCSH=/home/muqiu/.cargo/bin/rustc

base_SH=/usr/bin/g++
base_CXX=/usr/bin/gcc
base_CXX=/usr/bin/gcc
swc_LD=/usr/bin/g++
swc_CXX=/usr/bin/gcc
swc_CXX=/usr/bin/gcc
swi_LD=/usr/bin/g++
swi_CXX=/usr/bin/gcc
swi_CXX=/usr/bin/gcc

base_CXXFLAGS=-m64 -fPIC -g -O0 -std=c++20
base_CXXFLAGS=-m64 -fPIC -g -O0 -std=c++20
base_SHFLAGS=-shared -m64 -fPIC
swc_CXXFLAGS=-m64 -g -O0 -std=c++20 -Icompiler -Icompiler/ast -Icompiler/type -Icompiler/lexer -Icompiler/parser -Icompiler/diagnostics -Icompiler/utils
swc_CXXFLAGS=-m64 -g -O0 -std=c++20 -Icompiler -Icompiler/ast -Icompiler/type -Icompiler/lexer -Icompiler/parser -Icompiler/diagnostics -Icompiler/utils
swc_LDFLAGS=-m64 -Lbuild/linux/x86_64/debug -Wl,-rpath=$ORIGIN -lbase
swi_CXXFLAGS=-m64 -g -O0 -std=c++20
swi_CXXFLAGS=-m64 -g -O0 -std=c++20
swi_LDFLAGS=-m64 -Lbuild/linux/x86_64/debug -Wl,-rpath=$ORIGIN -lbase

default:  base swc swi

all:  base swc swi

.PHONY: default all  base swc swi

base: build/linux/x86_64/debug/libbase.so
build/linux/x86_64/debug/libbase.so: build/.objs/base/linux/x86_64/debug/base/stdlib.cpp.o
	@echo linking.debug libbase.so
	@mkdir -p build/linux/x86_64/debug
	$(VV)$(base_SH) -o build/linux/x86_64/debug/libbase.so build/.objs/base/linux/x86_64/debug/base/stdlib.cpp.o $(base_SHFLAGS)

build/.objs/base/linux/x86_64/debug/base/stdlib.cpp.o: base/stdlib.cpp
	@echo compiling.debug base/stdlib.cpp
	@mkdir -p build/.objs/base/linux/x86_64/debug/base
	$(VV)$(base_CXX) -c $(base_CXXFLAGS) -o build/.objs/base/linux/x86_64/debug/base/stdlib.cpp.o base/stdlib.cpp

swc: build/linux/x86_64/debug/swc
build/linux/x86_64/debug/swc: build/linux/x86_64/debug/libbase.so build/.objs/swc/linux/x86_64/debug/compiler/compiler.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/ast/ast.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/ast/dump.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/ast/type.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/ast/g-machine.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/diagnostics/reporter.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/diagnostics/utils.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/diagnostics/diagnostics.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/g-machine/binop.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/g-machine/instruction.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/g-machine/environment.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/lexer/lexer.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/lexer/flex_lexer.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/parser/parser.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/parser/bison_parser.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/type/dump.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/type/type.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/type/environment.cpp.o
	@echo linking.debug swc
	@mkdir -p build/linux/x86_64/debug
	$(VV)$(swc_LD) -o build/linux/x86_64/debug/swc build/.objs/swc/linux/x86_64/debug/compiler/compiler.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/ast/ast.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/ast/dump.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/ast/type.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/ast/g-machine.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/diagnostics/reporter.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/diagnostics/utils.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/diagnostics/diagnostics.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/g-machine/binop.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/g-machine/instruction.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/g-machine/environment.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/lexer/lexer.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/lexer/flex_lexer.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/parser/parser.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/parser/bison_parser.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/type/dump.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/type/type.cpp.o build/.objs/swc/linux/x86_64/debug/compiler/type/environment.cpp.o $(swc_LDFLAGS)

build/.objs/swc/linux/x86_64/debug/compiler/compiler.cpp.o: compiler/compiler.cpp
	@echo compiling.debug compiler/compiler.cpp
	@mkdir -p build/.objs/swc/linux/x86_64/debug/compiler
	$(VV)$(swc_CXX) -c $(swc_CXXFLAGS) -o build/.objs/swc/linux/x86_64/debug/compiler/compiler.cpp.o compiler/compiler.cpp

build/.objs/swc/linux/x86_64/debug/compiler/ast/ast.cpp.o: compiler/ast/ast.cpp
	@echo compiling.debug compiler/ast/ast.cpp
	@mkdir -p build/.objs/swc/linux/x86_64/debug/compiler/ast
	$(VV)$(swc_CXX) -c $(swc_CXXFLAGS) -o build/.objs/swc/linux/x86_64/debug/compiler/ast/ast.cpp.o compiler/ast/ast.cpp

build/.objs/swc/linux/x86_64/debug/compiler/ast/dump.cpp.o: compiler/ast/dump.cpp
	@echo compiling.debug compiler/ast/dump.cpp
	@mkdir -p build/.objs/swc/linux/x86_64/debug/compiler/ast
	$(VV)$(swc_CXX) -c $(swc_CXXFLAGS) -o build/.objs/swc/linux/x86_64/debug/compiler/ast/dump.cpp.o compiler/ast/dump.cpp

build/.objs/swc/linux/x86_64/debug/compiler/ast/type.cpp.o: compiler/ast/type.cpp
	@echo compiling.debug compiler/ast/type.cpp
	@mkdir -p build/.objs/swc/linux/x86_64/debug/compiler/ast
	$(VV)$(swc_CXX) -c $(swc_CXXFLAGS) -o build/.objs/swc/linux/x86_64/debug/compiler/ast/type.cpp.o compiler/ast/type.cpp

build/.objs/swc/linux/x86_64/debug/compiler/ast/g-machine.cpp.o: compiler/ast/g-machine.cpp
	@echo compiling.debug compiler/ast/g-machine.cpp
	@mkdir -p build/.objs/swc/linux/x86_64/debug/compiler/ast
	$(VV)$(swc_CXX) -c $(swc_CXXFLAGS) -o build/.objs/swc/linux/x86_64/debug/compiler/ast/g-machine.cpp.o compiler/ast/g-machine.cpp

build/.objs/swc/linux/x86_64/debug/compiler/diagnostics/reporter.cpp.o: compiler/diagnostics/reporter.cpp
	@echo compiling.debug compiler/diagnostics/reporter.cpp
	@mkdir -p build/.objs/swc/linux/x86_64/debug/compiler/diagnostics
	$(VV)$(swc_CXX) -c $(swc_CXXFLAGS) -o build/.objs/swc/linux/x86_64/debug/compiler/diagnostics/reporter.cpp.o compiler/diagnostics/reporter.cpp

build/.objs/swc/linux/x86_64/debug/compiler/diagnostics/utils.cpp.o: compiler/diagnostics/utils.cpp
	@echo compiling.debug compiler/diagnostics/utils.cpp
	@mkdir -p build/.objs/swc/linux/x86_64/debug/compiler/diagnostics
	$(VV)$(swc_CXX) -c $(swc_CXXFLAGS) -o build/.objs/swc/linux/x86_64/debug/compiler/diagnostics/utils.cpp.o compiler/diagnostics/utils.cpp

build/.objs/swc/linux/x86_64/debug/compiler/diagnostics/diagnostics.cpp.o: compiler/diagnostics/diagnostics.cpp
	@echo compiling.debug compiler/diagnostics/diagnostics.cpp
	@mkdir -p build/.objs/swc/linux/x86_64/debug/compiler/diagnostics
	$(VV)$(swc_CXX) -c $(swc_CXXFLAGS) -o build/.objs/swc/linux/x86_64/debug/compiler/diagnostics/diagnostics.cpp.o compiler/diagnostics/diagnostics.cpp

build/.objs/swc/linux/x86_64/debug/compiler/g-machine/binop.cpp.o: compiler/g-machine/binop.cpp
	@echo compiling.debug compiler/g-machine/binop.cpp
	@mkdir -p build/.objs/swc/linux/x86_64/debug/compiler/g-machine
	$(VV)$(swc_CXX) -c $(swc_CXXFLAGS) -o build/.objs/swc/linux/x86_64/debug/compiler/g-machine/binop.cpp.o compiler/g-machine/binop.cpp

build/.objs/swc/linux/x86_64/debug/compiler/g-machine/instruction.cpp.o: compiler/g-machine/instruction.cpp
	@echo compiling.debug compiler/g-machine/instruction.cpp
	@mkdir -p build/.objs/swc/linux/x86_64/debug/compiler/g-machine
	$(VV)$(swc_CXX) -c $(swc_CXXFLAGS) -o build/.objs/swc/linux/x86_64/debug/compiler/g-machine/instruction.cpp.o compiler/g-machine/instruction.cpp

build/.objs/swc/linux/x86_64/debug/compiler/g-machine/environment.cpp.o: compiler/g-machine/environment.cpp
	@echo compiling.debug compiler/g-machine/environment.cpp
	@mkdir -p build/.objs/swc/linux/x86_64/debug/compiler/g-machine
	$(VV)$(swc_CXX) -c $(swc_CXXFLAGS) -o build/.objs/swc/linux/x86_64/debug/compiler/g-machine/environment.cpp.o compiler/g-machine/environment.cpp

build/.objs/swc/linux/x86_64/debug/compiler/lexer/lexer.cpp.o: compiler/lexer/lexer.cpp
	@echo compiling.debug compiler/lexer/lexer.cpp
	@mkdir -p build/.objs/swc/linux/x86_64/debug/compiler/lexer
	$(VV)$(swc_CXX) -c $(swc_CXXFLAGS) -o build/.objs/swc/linux/x86_64/debug/compiler/lexer/lexer.cpp.o compiler/lexer/lexer.cpp

build/.objs/swc/linux/x86_64/debug/compiler/lexer/flex_lexer.cpp.o: compiler/lexer/flex_lexer.cpp
	@echo compiling.debug compiler/lexer/flex_lexer.cpp
	@mkdir -p build/.objs/swc/linux/x86_64/debug/compiler/lexer
	$(VV)$(swc_CXX) -c $(swc_CXXFLAGS) -o build/.objs/swc/linux/x86_64/debug/compiler/lexer/flex_lexer.cpp.o compiler/lexer/flex_lexer.cpp

build/.objs/swc/linux/x86_64/debug/compiler/parser/parser.cpp.o: compiler/parser/parser.cpp
	@echo compiling.debug compiler/parser/parser.cpp
	@mkdir -p build/.objs/swc/linux/x86_64/debug/compiler/parser
	$(VV)$(swc_CXX) -c $(swc_CXXFLAGS) -o build/.objs/swc/linux/x86_64/debug/compiler/parser/parser.cpp.o compiler/parser/parser.cpp

build/.objs/swc/linux/x86_64/debug/compiler/parser/bison_parser.cpp.o: compiler/parser/bison_parser.cpp
	@echo compiling.debug compiler/parser/bison_parser.cpp
	@mkdir -p build/.objs/swc/linux/x86_64/debug/compiler/parser
	$(VV)$(swc_CXX) -c $(swc_CXXFLAGS) -o build/.objs/swc/linux/x86_64/debug/compiler/parser/bison_parser.cpp.o compiler/parser/bison_parser.cpp

build/.objs/swc/linux/x86_64/debug/compiler/type/dump.cpp.o: compiler/type/dump.cpp
	@echo compiling.debug compiler/type/dump.cpp
	@mkdir -p build/.objs/swc/linux/x86_64/debug/compiler/type
	$(VV)$(swc_CXX) -c $(swc_CXXFLAGS) -o build/.objs/swc/linux/x86_64/debug/compiler/type/dump.cpp.o compiler/type/dump.cpp

build/.objs/swc/linux/x86_64/debug/compiler/type/type.cpp.o: compiler/type/type.cpp
	@echo compiling.debug compiler/type/type.cpp
	@mkdir -p build/.objs/swc/linux/x86_64/debug/compiler/type
	$(VV)$(swc_CXX) -c $(swc_CXXFLAGS) -o build/.objs/swc/linux/x86_64/debug/compiler/type/type.cpp.o compiler/type/type.cpp

build/.objs/swc/linux/x86_64/debug/compiler/type/environment.cpp.o: compiler/type/environment.cpp
	@echo compiling.debug compiler/type/environment.cpp
	@mkdir -p build/.objs/swc/linux/x86_64/debug/compiler/type
	$(VV)$(swc_CXX) -c $(swc_CXXFLAGS) -o build/.objs/swc/linux/x86_64/debug/compiler/type/environment.cpp.o compiler/type/environment.cpp

swi: build/linux/x86_64/debug/swi
build/linux/x86_64/debug/swi: build/linux/x86_64/debug/swc build/.objs/swi/linux/x86_64/debug/repl/main.cpp.o
	@echo linking.debug swi
	@mkdir -p build/linux/x86_64/debug
	$(VV)$(swi_LD) -o build/linux/x86_64/debug/swi build/.objs/swi/linux/x86_64/debug/repl/main.cpp.o $(swi_LDFLAGS)

build/.objs/swi/linux/x86_64/debug/repl/main.cpp.o: repl/main.cpp
	@echo compiling.debug repl/main.cpp
	@mkdir -p build/.objs/swi/linux/x86_64/debug/repl
	$(VV)$(swi_CXX) -c $(swi_CXXFLAGS) -o build/.objs/swi/linux/x86_64/debug/repl/main.cpp.o repl/main.cpp

clean:  clean_base clean_swc clean_swi

clean_base: 
	@rm -rf build/linux/x86_64/debug/libbase.so
	@rm -rf build/linux/x86_64/debug/base.sym
	@rm -rf build/.objs/base/linux/x86_64/debug/base/stdlib.cpp.o

clean_swc:  clean_base
	@rm -rf build/linux/x86_64/debug/swc
	@rm -rf build/linux/x86_64/debug/swc.sym
	@rm -rf build/.objs/swc/linux/x86_64/debug/compiler/compiler.cpp.o
	@rm -rf build/.objs/swc/linux/x86_64/debug/compiler/ast/ast.cpp.o
	@rm -rf build/.objs/swc/linux/x86_64/debug/compiler/ast/dump.cpp.o
	@rm -rf build/.objs/swc/linux/x86_64/debug/compiler/ast/type.cpp.o
	@rm -rf build/.objs/swc/linux/x86_64/debug/compiler/ast/g-machine.cpp.o
	@rm -rf build/.objs/swc/linux/x86_64/debug/compiler/diagnostics/reporter.cpp.o
	@rm -rf build/.objs/swc/linux/x86_64/debug/compiler/diagnostics/utils.cpp.o
	@rm -rf build/.objs/swc/linux/x86_64/debug/compiler/diagnostics/diagnostics.cpp.o
	@rm -rf build/.objs/swc/linux/x86_64/debug/compiler/g-machine/binop.cpp.o
	@rm -rf build/.objs/swc/linux/x86_64/debug/compiler/g-machine/instruction.cpp.o
	@rm -rf build/.objs/swc/linux/x86_64/debug/compiler/g-machine/environment.cpp.o
	@rm -rf build/.objs/swc/linux/x86_64/debug/compiler/lexer/lexer.cpp.o
	@rm -rf build/.objs/swc/linux/x86_64/debug/compiler/lexer/flex_lexer.cpp.o
	@rm -rf build/.objs/swc/linux/x86_64/debug/compiler/parser/parser.cpp.o
	@rm -rf build/.objs/swc/linux/x86_64/debug/compiler/parser/bison_parser.cpp.o
	@rm -rf build/.objs/swc/linux/x86_64/debug/compiler/type/dump.cpp.o
	@rm -rf build/.objs/swc/linux/x86_64/debug/compiler/type/type.cpp.o
	@rm -rf build/.objs/swc/linux/x86_64/debug/compiler/type/environment.cpp.o

clean_swi:  clean_swc
	@rm -rf build/linux/x86_64/debug/swi
	@rm -rf build/linux/x86_64/debug/swi.sym
	@rm -rf build/.objs/swi/linux/x86_64/debug/repl/main.cpp.o

