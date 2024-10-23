---
title: Handling Errors and Exceptions in Python
date: 2020-03-23 01:00:00 +/-TTTT
categories: [PROGRAMMING, PYTHON]
tags: [python, errors, exceptions, try-except, error-handling]
image:
    path: assets/img/istockphoto-517127630-1024x1024.jpg
    alt: Error Handling in Python
---

In this post, we'll discuss the two main types of errors in Python: syntax errors and exceptions. You will learn how to use `try`, `except`, `else`, and `finally` to handle exceptions, and how to manage multiple exceptions efficiently. Handling errors effectively is crucial for writing robust and user-friendly Python programs.

## Types of Errors in Python

In Python, errors can be broadly classified into two categories:

### Syntax Errors

**Syntax errors** occur when the syntax of a line of code is incorrect and Python is unable to interpret it.

Example of a syntax error:

```python
print("Hello world"  # Missing closing parenthesis
```

Output:

```
SyntaxError: unexpected EOF while parsing
```

To fix this, we need to ensure that all syntax is correct. In this case, adding the missing closing parenthesis would resolve the error.

### Exceptions

**Exceptions** occur when, despite the code being syntactically correct, something unexpected happens during execution. For example, attempting to divide a number by zero or adding an integer to a string will trigger an exception.

Example of an exception:

```python
num1 = 5
num2 = "5"
print(num1 + num2)  # Mixing int and str
```

Output:

```
TypeError: unsupported operand type(s) for +: 'int' and 'str'
```

To handle such cases, Python offers exception handling through `try` and `except` blocks.

## Handling Exceptions in Python

To handle exceptions gracefully, Python provides the `try` and `except` statements. The code that might raise an exception is placed inside the `try` block, while the response to an exception is written in the `except` block.

### Basic Exception Handling with `try` and `except`

Example:

```python
try:
    num1 = 5
    num2 = "5"
    print(num1 + num2)
except TypeError:
    print("Data types are not compatible for this operation.")
```

In this case, if a `TypeError` occurs, the `except` block executes and provides a meaningful message to the user.

### Handling Multiple Exceptions

Python allows you to handle multiple types of exceptions in different `except` blocks. This is useful when your code might raise different types of exceptions, each needing a specific response.

Example:

```python
try:
    num1 = 5
    num2 = 0
    print(num1 / num2)
except ZeroDivisionError:
    print("Cannot divide by zero.")
except TypeError:
    print("Data types are not compatible for this operation.")
```

In this case, the program handles both `ZeroDivisionError` and `TypeError` separately, providing tailored feedback to the user.

### Using `else` and `finally` with `try/except`

- **`else`**: This block executes if no exception occurs in the `try` block.
- **`finally`**: This block always executes, regardless of whether an exception occurred. It's useful for cleaning up resources, such as closing files.

Example:

```python
while True:
    try:
        age = int(input("Enter your age: "))
        print("Your age is:", age)
        break
    except ValueError:
        print("Error occurred. Please enter a valid number.")
    finally:
        print("End of iteration")
```

In this code, if a `ValueError` occurs (for example, if the user enters a non-numeric value), the `except` block handles it. Regardless of what happens, the `finally` block runs every time, displaying "End of iteration".

## Handling Multiple Exceptions in a Single Block

Python also allows handling multiple exceptions in a single `except` statement. This helps keep your code clean and readable.

Example:

```python
try:
    num1 = int(input("Enter the first number: "))
    result = 10 / num1
    print("The result is:", result)
except (ZeroDivisionError, ValueError) as e:
    print(f"An error occurred: {type(e).__name__}")
```

In this example, we catch both `ZeroDivisionError` and `ValueError` with one `except` statement and print the name of the error type.

## Specific Exceptions: KeyboardInterrupt and EOFError

Python allows you to handle specific user-generated exceptions like `KeyboardInterrupt` (generated when a user presses Ctrl+C) and `EOFError` (when reading beyond the end of a file).

Example:

```python
try:
    name = input("Enter your name: ")
    print(name)
except KeyboardInterrupt:
    print("The execution was canceled by the user.")
except EOFError:
    print("Input ended unexpectedly.")
```

Handling these specific exceptions ensures that your program doesn't crash abruptly when users take certain actions, such as terminating input.

## Catching All Exceptions

There may be cases where you aren't sure which type of exception might occur. In such cases, you can catch all exceptions using a generic `Exception` clause.

Example:

```python
try:
    name = input("Enter your name: ")
    print(name)
except Exception as e:
    print(f"An unexpected error occurred: {type(e).__name__}")
```

While catching all exceptions is useful, it is generally recommended to only catch exceptions that you know how to handle appropriately to avoid masking potential bugs.

## Practice Exercises

To practice exception handling in Python, try the following exercises:

### Exercise 1: Age Input with Error Handling
Create a program that asks the user for their age. Handle errors that occur if the user enters a non-numeric value or presses Ctrl+C to cancel the input.

### Exercise 2: Division with Error Handling
Write a program that takes two numbers from the user and divides them. Handle division by zero and invalid input types.

### Exercise 3: General Exception Handling
Create a program that takes any input from the user and prints it. Use a generic exception handler to catch unexpected errors and display the error type.

## More Information

Proper error handling ensures your program can handle unexpected situations gracefully, improving the user experience. Python's error and exception management tools allow for flexible and comprehensive handling of different error types.

For further learning, explore:
- [Python Official Documentation on Errors and Exceptions](https://docs.python.org/3/tutorial/errors.html)
- [Real Python - Python Exceptions: An Introduction](https://realpython.com/python-exceptions/)

---

**Next Steps**: In the next post, we will explore [*Object-Oriented Programming (OOP) in Python*](https://gaaspkm.online/posts/poo-pillars-python/), including classes, objects, and inheritance. Stay tuned and keep coding!
