# Week 2 - Python

## General Resources:

* https://leetcode.com (Place to expand your knowledge and get prepared for your next interview.)
* https://dev.to/ (A constructive and inclusive social network for software developers.)
* https://stackoverflow.com (Stack Overflow | The World’s Largest Online Community for Developers)

## Starting Jupyter Labs

Note: Make sure you have activated the correct Conda python environment first.
```bash
jupyter lab
```


## Python Functions


### Additional Python Resources:
* [Conditional Statements](https://realpython.com/python-conditional-statements/)
* [Python Conditions and If statements](https://www.w3schools.com/python/python_conditions.asp)
* [Errors and Exceptions](https://docs.python.org/3/tutorial/errors.html)
* [Python nested IF statements](https://www.tutorialspoint.com/python/nested_if_statements_in_python.htm)


### [Extended Slices](https://docs.python.org/release/2.3.5/whatsnew/section-slices.html)


For example, you can now easily extract the elements of a list that have even indexes:
```python
>>> L = range(10)
>>> L[::2]
[0, 2, 4, 6, 8]
```

Negative values also work to make a copy of the same list in reverse order:
```python
>>> L[::-1]
[9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
```

This also works for tuples, arrays, and strings:
```python
>>> s='abcd'
>>> s[::2]
'ac'
>>> s[::-1]
'dcba'
````

### [range() Function](https://www.w3schools.com/python/ref_func_range.asp)

Example

Create a sequence of numbers from 3 to 5, and print each item in the sequence:
```python
x = range(3, 6)
for n in x:
  print(n) 
```

Example
Create a sequence of numbers from 3 to 19, but increment by 2 instead of 1:
```python
x = range(3, 20, 2)
for n in x:
  print(n)
```


