cmath – mathematical functions for complex numbers
====

This module implements a subset of the corresponding CPython module, as described below. For more information, refer to the original CPython documentation: [cmath](https://docs.python.org/3.5/library/cmath.html#module-cmath).

The `cmath` module provides some basic mathematical functions for working with complex numbers.

Availability: not available on WiPy and ESP8266. Floating point support required for this module.

## Functions

### cos

```python
cmath.cos(z)
```

Return the cosine of `z`.

### exp

```python
cmath.exp(z)
```

Return the exponential of `z`.

### log

```python
cmath.log(z)
```

Return the natural logarithm of `z`. The branch cut is along the negative real axis.

### log10

```python
cmath.log10(z)
```

Return the base-10 logarithm of `z`. The branch cut is along the negative real axis.

### phase

```python
cmath.phase(z)
```

Returns the phase of the number `z`, in the range (-pi, +pi].

### polar

```python
cmath.polar(z)
```

Returns, as a tuple, the polar form of `z`.

### rect

```python
cmath.rect(r, phi)
```

Returns the complex number with modulus `r` and phase `phi`.

### sin

```python
cmath.sin(z)
```

Return the sine of `z`.

### sqrt

```python
cmath.sqrt(z)
```

Return the square-root of `z`.

## Constants

### cmath.e

base of the natural logarithm

### cmath.pi

the ratio of a circle’s circumference to its diameter

