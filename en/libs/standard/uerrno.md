
uerrno — system error codes
====


This module implements a subset of the corresponding CPython module, as described below. For more information, refer to the original CPython documentation: [errno](https://docs.python.org/3.5/library/errno.html#module-errno).

This module provides access to symbolic error codes for `OSError` exception. A particular inventory of codes depends on `MicroPython port`， Will explain the specific function that will cause an error.

## Constants

### EEXIST, EAGAIN, etc.

Error codes, based on ANSI C/POSIX standard. All error codes start with “E”. As mentioned above, inventory of the codes depends on MicroPython port. Errors are usually accessible as `exc.args[0]` where `exc` is an instance of `OSError`. Usage example:

```python
try:
    uos.mkdir("my_dir")
except OSError as exc:
    if exc.args[0] == uerrno.EEXIST:
        print("Directory already exists")
```

### uerrno.errorcode

Dictionary mapping numeric error codes to strings with symbolic error code (see above):

```python
>>> print(uerrno.errorcode[uerrno.EEXIST])
EEXIST
```


