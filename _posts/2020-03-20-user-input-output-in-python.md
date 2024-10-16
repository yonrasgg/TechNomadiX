---
title: User Input and Output in Python 📚
date: 2020-03-20 02:00:00 +/-TTTT
categories: [PROGRAMMING, PYTHON]
tags: [python, user-input, output, programming-basics]
image:
    path: assets/img/Screenshot from 2024-10-15 17-28-40.png
    alt: Python Inputs and Outputs
---

**Summary**: In this post, you'll learn how to use the `input()` function to take data from users and how to display data using `print()`. We'll explore basic concepts with examples to understand user interaction in Python and conclude with exercises to practice what you've learned.

## Taking User Input in Python

In Python, the `input()` function is used to take data from the user. This function displays a message (prompt) and then waits for the user to type something and press ENTER. The function then returns whatever the user typed, which is generally saved in a variable for further use.

Here's a basic example of using `input()`:

```python
name = input("What is your name? ")  # input() function takes user input
age = input("How old are you? ")

print("Hello " + name + ", you are " + age + " years old")  # Output: Hello <name>, you are <age> years old
```

In this code, we ask the user for their name and age. We then use that information to print a personalized greeting.

## Example: Resolving Cubic Equations 📝

In this exercise, we'll develop a program that solves cubic equations of the form \(ax^3 + bx^2 + cx + d = 0\). To achieve this, we ask the user to provide the coefficients \(a\), \(b\), \(c\), and \(d\).

To solve a cubic equation, we import the `cmath` module, which provides functions for working with complex numbers, a necessary step to calculate the solutions.

```python
import cmath  # Import cmath for complex number operations

a = float(input("Enter the value of a: "))
b = float(input("Enter the value of b: "))
c = float(input("Enter the value of c: "))
d = float(input("Enter the value of d: "))

delta_0 = b**2 - 3*a*c
delta_1 = 2*b**3 - 9*a*b*c + 27*a**2*d
C = ((delta_1 + cmath.sqrt(delta_1**2 - 4*delta_0**3))/2)**(1/3)

x1 = (-1/(3*a))*(b + C + delta_0/C)
x2 = (-1/(3*a))*(b + complex(-0.5, cmath.sqrt(3)/2)*C + delta_0/(complex(-0.5, cmath.sqrt(3)/2)*C))
x3 = (-1/(3*a))*(b + complex(-0.5, -cmath.sqrt(3)/2)*C + delta_0/(complex(-0.5, -cmath.sqrt(3)/2)*C))

print("The solutions of the cubic equation are: ", x1, x2, x3)
```

This program provides a good example of how arithmetic operators and complex mathematical functions in Python can be used to solve advanced mathematical problems.

## Example: Calculating Final Course Grade 📝

In this exercise, we'll develop a program that calculates the final grade of a student based on three components: assignments, midterms, and a final project.

The final grade is calculated as follows:

- Assignments: 30% of the final grade (three assignments).
- Midterms: 40% of the final grade (two midterms).
- Final project: 30% of the final grade.

The user needs to provide the grades for the assignments, midterms, and final project:

```python
task1 = float(input("Enter the grade for assignment 1: "))
task2 = float(input("Enter the grade for assignment 2: "))
task3 = float(input("Enter the grade for assignment 3: "))
midterm1 = float(input("Enter the grade for midterm 1: "))
midterm2 = float(input("Enter the grade for midterm 2: "))
final_project = float(input("Enter the grade for the final project: "))

avg_tasks = (task1 + task2 + task3) / 3
avg_midterms = (midterm1 + midterm2) / 2
final_grade = 0.3 * avg_tasks + 0.4 * avg_midterms + 0.3 * final_project

print("The final grade is: ", final_grade)
```

This program provides a good example of how arithmetic operators can be used to calculate averages and final grades.

## Practice Exercises 📝

Try the following exercises to apply what you've learned about user input and output:

### Exercise 1: Cubic Equation Solver
Develop a program that takes user input to solve cubic equations of the form \(ax^3 + bx^2 + cx + d = 0\). Use the complex math (`cmath`) module as demonstrated above.

### Exercise 2: Grade Calculator
Write a program that takes user input for assignment, midterm, and project grades and calculates the final grade based on given weightings.

## More Information

User input and output are fundamental in Python as they allow interactive programming. Practicing these basics will help you build more dynamic programs and understand user-centered design.

For further reading and more detailed information, check out:
- [Python Official Documentation on Input and Output](https://docs.python.org/3/tutorial/inputoutput.html)
- [Real Python - Python Input/Output](https://realpython.com/python-input-output/)

---

**Next Steps**: In the next post, we will cover **Boolean Operators and Control Flow** in Python. Stay tuned and keep coding! 🐍💻