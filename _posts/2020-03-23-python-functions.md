---
title: Functions in Python - Built-in, Custom, Math, and More 
date: 2020-03-23 01:00:00 +/-TTTT
categories: [PROGRAMMING, PYTHON]
tags: [python, functions, built-in, parameters, return, global-variables, args]
image:
    path: assets/img/functions.png
    alt: Python Functions
---

In this post, we will dive into different types of functions in Python, including built-in functions, custom user-defined functions, mathematical functions, and more. We will also explore topics like the `return` statement, parameters and arguments, global variables, and working with an undefined number of arguments.

## Built-in Functions in Python

Python offers a variety of built-in functions that provide ready-made functionalities to perform different operations. These functions are always available and can be used without importing any additional libraries.

### Common Built-in Functions

- **`type(object)`**: Returns the type of an object.

  ```python
  num = '70'
  print(type(num))  # Output: <class 'str'>
  ```

- **`str.isnumeric()` and `str.isalpha()`**: Methods of the `str` class. `isnumeric()` checks if all characters are numeric, and `isalpha()` checks if all are alphabetic.

  ```python
  print(num.isnumeric())  # Output: True
  print(num.isalpha())    # Output: False
  ```

- **`int()`, `float()`, `str()`**: Convert an argument to an integer, float, or string respectively.

  ```python
  print(type(int(num)))   # Output: <class 'int'>
  print(type(float(num))) # Output: <class 'float'>
  print(type(str(num)))   # Output: <class 'str'>
  ```

- **`len(sequence)`**: Returns the length of a sequence such as a string, list, or tuple.

  ```python
  my_list = [1, 2, 3, 4, 5]
  print(len(my_list))  # Output: 5
  ```

These built-in functions are extremely useful for manipulating data in Python.

## User-defined Functions in Python

User-defined functions allow you to organize and reuse code. These functions are created using the `def` keyword.

### Defining and Calling a Function

```python
def greet():
    print("Hello from the Python course on GitHub!")

greet()  # Calling the function
```

### Functions with Parameters

Functions can also take parameters, which are values you pass to the function when calling it.

```python
def personalized_greeting(name):
    print(f"Hello, {name}!")

personalized_greeting("Alice")  # Output: Hello, Alice!
```

### Functions with Loops

A function can contain any logic, including loops.

```python
def multiplication_table():
    for i in range(1, 11):
        print(f"5 * {i} = {5 * i}")

multiplication_table()  # Prints the multiplication table for 5
```

Functions provide a powerful way to organize and reuse code.

## Mathematical Functions in Python

Python offers mathematical functions via the `math` module. To use them, you need to import `math`.

### Common Mathematical Functions

- **Constants**:
  - `math.pi`: The value of \(\pi\).
  - `math.e`: The value of \(e\).

- **Trigonometric Functions**:
  - `math.sin(x)`: Returns the sine of `x` radians.
  - `math.cos(x)`: Returns the cosine of `x` radians.
  - `math.tan(x)`: Returns the tangent of `x` radians.

- **Logarithmic and Exponential Functions**:
  - `math.log(x)`: Returns the natural logarithm of `x`.
  - `math.exp(x)`: Returns \(e^x\).

- **Other Functions**:
  - `math.sqrt(x)`: Returns the square root of `x`.
  - `math.factorial(x)`: Returns the factorial of `x`.

These functions can help you solve complex mathematical problems efficiently.

## The `return` Statement in Python

The `return` statement is used within a function to send a result back to where it was called.

```python
def add_numbers(a, b):
    return a + b

result = add_numbers(10, 20)
print(result)  # Output: 30
```

The `return` statement allows you to pass data back from a function, making it more versatile and useful.

## Parameters and Arguments in Python

Parameters and arguments allow you to make your functions flexible by passing in different values each time.

- **Parameters**: Variables defined in a function's definition.
- **Arguments**: Values passed when calling the function.

```python
def multiply(x, y):
    return x * y

print(multiply(5, 4))  # Output: 20
```

Parameters (`x`, `y`) hold the values passed (`5`, `4`) as arguments.

## Global Variables in Python

**Global variables** are accessible throughout the entire program. These variables are declared outside any function.

```python
def global_demo():
    global a, b
    a = 100
    b = 200
    return a + b

print(global_demo())  # Output: 300
print(a - b)          # Output: -100
```

While global variables can be useful, they should be used with caution to avoid unintended side effects.

## Handling an Undefined Number of Arguments

The `*args` syntax allows you to pass a variable number of positional arguments to a function.

```python
def display_args(*args):
    for arg in args:
        print(arg)

display_args(1, 2, 3, 4, 5)  # Output: 1, 2, 3, 4, 5
```

`*args` collects all positional arguments into a tuple, making the function highly flexible.

## Practice Exercises

To help solidify your understanding of functions, try these exercises:

### Exercise 1: Factorial Function
Create a function that takes a number as input and returns its factorial.

### Exercise 2: Calculator Function
Write a function that takes two numbers and an operator (`+`, `-`, `*`, `/`) and returns the result of that operation.

### Exercise 3: Handling Multiple Arguments
Write a function that takes a variable number of numerical arguments and returns their average.

## More Information

Functions are a core component of Python programming, allowing you to write reusable and organized code. Whether you're dealing with built-in functions, defining your own, or managing complex arguments, mastering functions is essential for becoming an efficient programmer.

For further reading, check out:
- [Python Official Documentation on Functions](https://docs.python.org/3/tutorial/controlflow.html#defining-functions)
- [Real Python - Python Functions Tutorial](https://realpython.com/defining-your-own-python-function/)

---

**Next Steps**: In the next post, we will explore [*Error Handling in Python*](https://gaaspkm.online/posts/error-handling-pyton/), covering classes, objects, methods, and inheritance. Stay tuned and keep coding!
