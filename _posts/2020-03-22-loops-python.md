---
title: Loops in Python - While, For, Range, and Control Statements 🔄
date: 2020-03-21 01:00:00 +/-TTTT
categories: [PROGRAMMING, PYTHON]
tags: [python, loops, control-flow, while, for, break, continue]
image:
    path: assets/img/1_K90ogNf-wNJI1PJhs80MPw.webp
    alt: Python Bucles
---

**Summary**: In this post, we'll explore loops in Python, focusing on `while` and `for` loops, the `range()` function, and control statements (`break` and `continue`). You'll learn how to use loops to repeat code efficiently, and how to control these loops to suit your needs.

## The `while` Loop in Python 🎠

The **`while` loop** allows you to execute a block of code repeatedly as long as a given condition is true. This type of loop is useful when you don't know beforehand how many times you'll need to repeat the code.

### Basic Example

```python
counter = 5
while counter > 0:
    print(f"The carousel keeps spinning. Turns remaining: {counter}")
    counter -= 1
```

In this example, the `while` loop continues to execute until the `counter` reaches zero. Each iteration decreases the value of `counter` by one, and prints a message showing the number of turns left.

### Using `while` with `else`

Python also allows you to use an `else` clause with a `while` loop. The `else` block executes after the `while` loop finishes, as long as it is not terminated by a `break` statement.

```python
counter = 5
while counter > 0:
    print(f"The carousel keeps spinning. Turns remaining: {counter}")
    counter -= 1
else:
    print("The carousel has stopped.")
```

Here, when `counter` reaches zero, the loop stops and the `else` statement is executed, printing a final message.

### Beware of Infinite Loops ⚠️

Always make sure to avoid **infinite loops**. If the condition of a `while` loop never becomes false, the loop will continue indefinitely.

```python
while True:
    print("The carousel never stops!")
```

The above loop will run forever unless you add a break condition.

## The `for` Loop in Python 📜

The **`for` loop** in Python is used to iterate over a sequence such as a list, tuple, dictionary, set, or string. It allows you to repeat a block of code a specific number of times or over each element in a collection.

### Iterating Over Lists and Tuples

```python
list_items = ['One', 'Two', 'Three', 'Four']
tuple_items = ('One', 'Two', 'Three', 'Four')

for item in list_items:
    print(item)  # Prints each element in the list

for element in tuple_items:
    print(element)  # Prints each element in the tuple
```

In this code, `for item in list_items:` iterates over each item in `list_items`, and similarly for the tuple. The loop prints each item one by one.

The `for` loop is powerful for handling repetitive tasks involving sequences.

## The `range()` Function in Python 📊

The **`range()` function** generates a sequence of numbers, which is often used with `for` loops to specify how many times to repeat the loop.

### Examples Using `range()`

```python
# Loop from 1 to 10
for i in range(1, 11):
    print(i)
```

In this example, `range(1, 11)` generates numbers from 1 to 10. The `for` loop iterates over each of these numbers.

```python
# Loop from 1 to 10, stepping by 2
for i in range(1, 11, 2):
    print(i)
```

Here, `range(1, 11, 2)` generates numbers from 1 to 10 with a step of 2, meaning it prints only odd numbers.

```python
# Loop in reverse from 10 to 1
for i in range(10, 0, -1):
    print(i)
```

This code uses `range(10, 0, -1)` to create a descending sequence from 10 to 1.

The `range()` function is highly flexible and allows you to control your loop iteration effectively.

## Control Statements: `break` and `continue` 🚦

Python provides **control statements** that can alter the flow of loops: `break` and `continue`.

### The `break` Statement 🛑

The `break` statement immediately exits the loop, even if the loop condition is still true.

```python
for i in range(10):
    if i == 5:
        break  # Exit the loop when i is 5
    print(i)
```

In this code, the loop terminates when `i` reaches 5.

### The `continue` Statement 🔂

The `continue` statement skips the rest of the current iteration and moves to the next iteration of the loop.

```python
for i in range(5):
    if i == 3:
        continue  # Skip printing when i is 3
    print(i)
```

Here, when `i` is 3, the `continue` statement is executed, and the loop immediately moves to the next iteration, skipping the `print(i)` statement for `i = 3`.

## Practice Exercises 📝

To further solidify your understanding of loops in Python, try the following exercises:

### Exercise 1: Multiplication Table 🧮
Create a program that takes a user input number and prints the multiplication table for that number.

### Exercise 2: Age Calculator 🎂
Write a program that asks for the user's birth year and calculates how old they are.

### Exercise 3: Number Ranges 📊
Write a program that prints numbers from 1 to 10, then asks the user to input two numbers and displays all the numbers in that range.

### Exercise 4: Odd Number Range 👥
Ask the user to input two numbers and display all the odd numbers between those two values.

## More Information

Loops are essential for automating repetitive tasks and iterating over collections of data in Python. Learning how to use `while`, `for`, and the control statements effectively will significantly enhance your ability to write efficient code.

For more in-depth learning, consider checking out:
- [Python Official Documentation on Loops](https://docs.python.org/3/tutorial/controlflow.html#for-statements)
- [Real Python - Python Loops Tutorial](https://realpython.com/python-loops-iterators/)

---

**Next Steps**: In the next post, we will explore **Functions in Python**, focusing on how to write reusable blocks of code. Keep practicing, and happy coding! 🐍🚀