---
title: Conditional Statements in Python
date: 2020-03-21 02:30:00 +/-TTTT
categories: [PROGRAMMING, PYTHON]
tags: [python, conditionals, control-flow]
image:
    path: assets/img/Screenshot from 2024-10-15 18-04-44.png
    alt: Python Conditionals
---

In this post, we will explore conditional statements in Python, which are crucial for controlling the flow of your program. You will learn about the `if`, `elif`, and `else` statements, as well as nested conditionals, to make decisions in your code. We will also provide examples and exercises to help solidify your understanding.

## `if` and `else` Statements in Python

Conditional statements in Python allow your program to make decisions based on specific conditions. The most basic conditional statements are `if` and `else`.

### `if` Statement

The `if` statement allows you to check a condition, and if it evaluates to `True`, a block of code will run. Here's the syntax:

```python
if condition:
    # Code block that runs if the condition is True
```

For example, consider the following code where we check if the user is an adult:

```python
age = int(input("Enter your age: "))  # User inputs their age

if age >= 18:
    print("You are an adult.")  # This prints if age is 18 or above
```

### `else` Statement

The `else` statement provides an alternative block of code that runs if the `if` condition is `False`.

```python
age = int(input("Enter your age: "))

if age >= 18:
    print("You are an adult.")
else:
    print("You are a minor.")
```

In this example, if the user enters an age below 18, the `else` block runs, printing that the user is a minor.

## The `elif` Statement in Python

The `elif` (short for "else if") statement allows you to check multiple conditions. When you need more than two potential paths for your program to follow, you can use `elif`.

Here's how it works:

```python
letter = input("Enter a vowel: ")

if letter == "a":
    print("It is a vowel: A")
elif letter.lower() == "e":
    print("It is a vowel: E")
elif letter.lower() == "i":
    print("It is a vowel: I")
elif letter.lower() == "o":
    print("It is a vowel: O")
elif letter.lower() == "u":
    print("It is a vowel: U")
else:
    print("This is not a vowel.")
```

In this code, multiple conditions are checked using `elif`, allowing us to determine which vowel was input. If none of the conditions are met, the `else` statement runs.

## Nested Conditionals in Python

Nested conditionals are simply `if` statements inside other `if` statements. They are useful when you need to evaluate an additional condition after the first condition has been verified.

Here's an example:

```python
name = input('Enter your name in lowercase: ')
age = int(input('Enter your age: '))

if name == name.lower():
    if age >= 18:
        print(f'You are {name} and you are an adult.')
    else:
        print(f'You are {name} but you are a minor.')
else:
    print(f'Name is not in lowercase.')
```

In this code, we first check if the user's name is in lowercase. If it is, we then check whether they are an adult. Otherwise, we print that the name is not in lowercase.

## Practice Exercises

Try the following exercises to strengthen your understanding of conditionals:

### Exercise 1
Create a program that asks the user to enter a letter. If it's a consonant, print "It's a consonant." If not, let the user know it isn't a consonant.

### Exercise 2
Write a program that takes an integer input and determines if it is even or odd. Remember, a number is even if the remainder when divided by 2 is `0`, and odd otherwise.

### Exercise 3
Write a program that takes two words and checks if they are anagrams. Two words are anagrams if the letters can be rearranged to form the other (e.g., "roma" and "amor").

### Exercise 4
Create a voting program where the user chooses from three menu options: pasta, salad, or soup. According to the option chosen (`1`, `2`, or `3`), print the corresponding dish. If the user enters an invalid option, print "Invalid option."

## More Information

Understanding conditional statements is fundamental to programming as they allow your code to make decisions. Practicing these concepts will help you become more comfortable with control flow in Python.

For more details, explore:
- [Python Official Documentation on Conditional Statements](https://docs.python.org/3/tutorial/controlflow.html)
- [Real Python - Conditional Statements in Python](https://realpython.com/python-conditional-statements/)

---

**Next Steps**: In the next post, we'll delve into [*Python Data Structures*](https://gaaspkm.online/posts/data-structures-lists-tuples-dictionaries-sets-python/), covering lists, tuples, dictionaries, and more. Keep practicing, and happy coding!
