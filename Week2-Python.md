# Week 2 - Python

## General Resources:

### https://dev.to/
![From DEV Community: DEV Community | A constructive and inclusive social network for software developers. With you every step of your journey.](Resources/Images/link-previews/2022-02-27-DEV_Community-DEV_Community.png) 

### https://stackoverflow.com 
![From Stack Overflow: Stack Overflow - Where Developers Learn, Share, & Build Careers | Stack Overflow | The World’s Largest Online Community for Developers](Resources/Images/link-previews/2022-02-27-Stack_Overflow-Stack_Overflow_-_Where_Develop….png) 
https://stackoverflow.com

### https://leetcode.com
![From Leetcode.com: LeetCode - The World's Leading Online Programming Learning Platform | Level up your coding skills and quickly land a job. This is the best place to expand your knowledge and get prepared for your next interview.](Resources/Images/link-previews/2022-02-27-Leetcode.com-LeetCode_-_The_World's_Leading….png) 

## Starting Jupyter Labs

Note: Make sure you have activated the correct Conda python environment first.
```bash
jupyter lab
```


## Python Functions


### Additional Python Resources:
* [Conditional Statements](https://realpython.com/python-conditional-statements/) https://realpython.com/python-conditional-statements/
* [Python Conditions and If statements](https://www.w3schools.com/python/python_conditions.asp) https://www.w3schools.com/python/python_conditions.asp
* [Errors and Exceptions](https://docs.python.org/3/tutorial/errors.html) https://docs.python.org/3/tutorial/errors.html
* [Python nested IF statements](https://www.tutorialspoint.com/python/nested_if_statements_in_python.htm) https://www.tutorialspoint.com/python/nested_if_statements_in_python.htm 


### [Extended Slices](https://docs.python.org/release/2.3.5/whatsnew/section-slices.html)

https://docs.python.org/release/2.3.5/whatsnew/section-slices.html

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

https://www.w3schools.com/python/ref_func_range.asp

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


