
uheapq – heap queue algorithm
====


This module implements a subset of the corresponding CPython module, as described below. For more information, refer to the original CPython documentation: [heapq](https://docs.python.org/3.5/library/heapq.html#module-heapq).

This module implements the heap queue algorithm.

A heap queue is simply a list that has its elements stored in a certain way.

## Functions

### heappush

```python
uheapq.heappush(heap, item)
```

Push the item onto the heap.

### heappop

```python
uheapq.heappop(heap)
```

Pop the first item from the heap, and return it. Raises IndexError if heap is empty.

### heapify

```python 
uheapq.heapify(x)
```

Convert the list x into a heap. This is an in-place operation.

