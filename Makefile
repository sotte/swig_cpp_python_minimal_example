PYTHON=python
NAME=interface

all: test_interface

test_interface: test_interface.py _interface.so
	$(PYTHON) test_interface.py

_interface.so: setup.py interface_wrap.cpp interface.h interface.cpp interface.i
	$(PYTHON) setup.py build_ext --inplace

interface.py interface_wrap.cpp: interface.i
	swig -c++ -python -o interface_wrap.cpp interface.i

clean:
	rm -f *.pyc interface.py interface_wrap.cpp *.so MANIFEST
	rm -fr build/ dist/ _interface/

.PHONY: all
