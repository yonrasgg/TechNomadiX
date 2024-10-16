---
title: Python Variables Explained 🎈
date: 2020-03-20 01:30:00 +/-TTTT
categories: [PROGRAMMING, PYTHON]
tags: [python, variables, data-types]
image:
    path: assets/img/For-Loop-Large-0.8-300x115.gif
    alt: Python Variables
---

**Summary**: In this post, we cover what variables are in Python, how to use them, and explore various data types. We'll look into the syntax for creating variables, naming conventions, and see some examples that illustrate how variables work.

## What is a Variable in Python?

Variables are like storage boxes in your computer's memory where you can keep information to use later in your program. Each variable is a named reference to a piece of data, allowing you to manipulate and manage it more easily.

Here's a simple example of how to create a variable in Python:

```python
name = "Your Name"
```

In the above code:
- `name` is the variable that stores the value "Your Name".
- You can update the value of `name` later in your code, like so:

```python
name = "Another Name"
```

Python distinguishes between lowercase and uppercase, meaning `name` and `Name` would be treated as two different variables.

### Types of Variables in Python

Python supports several types of data that can be stored in variables:

- **Integer (int)**: Numbers without a decimal point.
  ```python
  num_int = 10  # This is an integer
  ```
- **Floating-point number (float)**: Numbers with a decimal point.
  ```python
  num_float = 10.5  # This is a float
  ```
- **String (str)**: Text values enclosed in quotes.
  ```python
  greeting = "Hello World"  # This is a string
  ```
- **Boolean (bool)**: Represents `True` or `False`.
  ```python
  is_valid = True  # This is a boolean
  ```
- **List**: A collection of items, which can be of mixed types.
  ```python
  fruits = ["apple", "banana", "cherry"]  # This is a list
  ```
- **Tuple**: Similar to lists but immutable (cannot be modified).
  ```python
  coordinates = (10.0, 20.0)  # This is a tuple
  ```
- **Set**: An unordered collection of unique elements.
  ```python
  unique_numbers = {1, 2, 3}  # This is a set
  ```
- **Dictionary (dict)**: Key-value pairs, similar to a real-life dictionary.
  ```python
  person = {"name": "John", "age": 30}  # This is a dictionary
  ```

## Naming Variables in Python

- Variables can start with a letter or an underscore (`_`), but not with a number.
- They can contain letters, numbers, and underscores.
- Variable names are case-sensitive. `name`, `Name`, and `NAME` are different variables.

### Best Practices for Naming Variables

- Use descriptive names for better code readability.
  ```python
  total_amount = 1500
  ```
- Use snake_case to separate words.
  ```python
  user_age = 25
  ```
- Constants should be written in all uppercase to indicate that their value should not change.
  ```python
  PI = 3.14159
  ```

## Examples of Variables in Action

Here are some examples of defining and updating variables:

```python
# Define an integer variable
count = 10
print(count)  # Output: 10

# Change the value of the variable
count = 20
print(count)  # Output: 20

# Define a constant
MAX_LIMIT = 100
print(MAX_LIMIT)  # Output: 100
```

In the above code, we see how variables can be reassigned to different values. For constants like `MAX_LIMIT`, the convention is to not change them throughout the code.

## More Information

Understanding variables is the foundation of Python programming. They are essential in almost every program you write. For more in-depth learning, you can explore the official [Python Documentation on Variables](https://docs.python.org/3/tutorial/introduction.html#using-python-as-a-calculator).

Here are some additional resources for learning about Python variables:
- [W3Schools Python Variables](https://www.w3schools.com/python/python_variables.asp)
- [Real Python Variables Tutorial](https://realpython.com/python-variables/)

---

**Next Steps**: In the next post, we'll explore **Aritmetic Operators**. You'll learn the best practices and common pitfalls to avoid. Keep learning and happy coding! 🎉
