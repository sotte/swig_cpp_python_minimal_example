from distutils.core import setup, Extension


# swig extension
ext_module = Extension(
    "_interface",  # name of the .so file. .so is appended automatically.
    sources=["interface_wrap.cpp", "interface.cpp"],
    depends=["interface.h"],
)

setup(
    name="swig-wrapping-example",
    version="0.1",
    description="because I always forget...",
    ext_modules=[ext_module],
    py_modules=["interface"],
)
