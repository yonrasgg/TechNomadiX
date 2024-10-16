---
title: Object-Oriented Programming in Python - Classes, Attributes, Methods, and More 🏫🔵
date: 2020-03-23 01:00:00 +/-TTTT
categories: [PROGRAMMING, PYTHON]
tags: [python, oop, classes, attributes, methods, constructors]
image:
    path: assets/img/mohammad-rahmani-gA396xahf-Q-unsplash.jpg
    alt: POO In Python
---

**Summary**: In this post, we will explore the key concepts of Object-Oriented Programming (OOP) in Python, including classes, attributes, methods, the `self` keyword, the `__init__` constructor, and special methods like `__str__` and `__len__`. Understanding these fundamental building blocks will help you create more modular, reusable, and organized Python programs.

## Introduction to Object-Oriented Programming (OOP) 📘

**Object-Oriented Programming (OOP)** is a programming paradigm based on the concept of "objects." An object can contain both data (attributes) and functionality (methods). Objects are created using templates called **classes**.

### Classes and Objects 🏷️🔧

A **class** is like a blueprint for creating an **object**. It defines the set of attributes that will characterize any object made from that class.

- **Class**: Defines attributes and methods that describe behavior.
- **Object**: An instance of a class, containing data and methods that act on the data.

For example:

```python
class Car:
    color = "Red"
    wheels = 4

car_instance = Car()
print(car_instance.color)  # Output: Red
```

In this example, `Car` is a class, and `car_instance` is an object created from that class.

## Attributes and Methods in OOP 🚀

Attributes are like characteristics that define an object, while methods are actions that the object can perform.

### Defining Attributes 🎨

Attributes are variables defined inside a class. They represent the properties that the instances of the class will have. Consider the `Car` class below with attributes like `color`, `brand`, and `speed`.

```python
class Car:
    color = "Blue"
    wheels = 4
    brand = "Toyota"
```

When you create an instance of `Car`, it will have these attributes:

```python
my_car = Car()
print(my_car.color)  # Output: Blue
```

### Defining Methods 🛠️

Methods are functions defined inside a class that describe the behaviors of an object.

```python
class Car:
    color = "Blue"
    speed = 0

    def accelerate(self):
        self.speed += 5
        print(f"Speed: {self.speed}")

my_car = Car()
my_car.accelerate()  # Output: Speed: 5
```

Here, `accelerate()` is a method that increases the `speed` of the car by 5 every time it's called.

## The `self` Keyword and `__init__` Constructor 🤳🛠️

The **`self` keyword** in Python is used to refer to the instance of the class. It allows each method to access the attributes and other methods of the class. It must be the first parameter in any method defined within a class.

### The `__init__` Constructor 🏗️

The `__init__` method is a special method in Python that serves as a constructor. It gets called automatically when an instance of the class is created.

```python
class Car:
    def __init__(self, brand, color):
        self.brand = brand
        self.color = color
        print(f"A new car has been created: {self.brand}, {self.color}")

car1 = Car("Toyota", "Red")  # Output: A new car has been created: Toyota, Red
car2 = Car("Subaru", "Blue")  # Output: A new car has been created: Subaru, Blue
```

The `__init__` constructor initializes the attributes `brand` and `color` when a new object is created, using the values provided as arguments.

## Special Methods in Python 🐍🌟

Python provides several special methods, often called **dunder methods** (short for "double underscore"). These methods can add special functionality to your classes.

### The `__str__` Method 🖋️

The `__str__` method allows you to define how an instance of a class should be represented as a string. It is called when you use `print()` or `str()` on an instance.

```python
class Car:
    def __init__(self, brand, color):
        self.brand = brand
        self.color = color

    def __str__(self):
        return f"Brand: {self.brand}, Color: {self.color}"

my_car = Car("Toyota", "Red")
print(my_car)  # Output: Brand: Toyota, Color: Red
```

### The `__len__` Method 📏

The `__len__` method allows you to define what should be returned when calling `len()` on an object of your class. For example:

```python
class Car:
    def __init__(self, doors):
        self.doors = doors

    def __len__(self):
        return self.doors

my_car = Car(4)
print(len(my_car))  # Output: 4
```

This example shows how the `len()` function can be used to return a specific property of the class—in this case, the number of doors.

## Deep Dive into Object-Oriented Programming 🏊‍♂️

As you go deeper into **Object-Oriented Programming (OOP)**, you'll come across advanced concepts like:

- **Inheritance**: Allows a class to inherit attributes and methods from another class, promoting code reusability.
- **Encapsulation**: Restricts direct access to some of an object's components, which helps protect the integrity of the data.
- **Polymorphism**: Allows different classes to be treated as instances of the same class through a shared interface, which makes the code more flexible.

### Example: Inheritance 🗂️

```python
class Vehicle:
    def __init__(self, brand):
        self.brand = brand

    def start(self):
        print(f"{self.brand} is starting.")

class Car(Vehicle):
    def __init__(self, brand, color):
        super().__init__(brand)
        self.color = color

my_car = Car("Toyota", "Red")
my_car.start()  # Output: Toyota is starting.
```

In this example, `Car` inherits from `Vehicle`, allowing `my_car` to access the `start()` method defined in `Vehicle`.

## Practice Exercises 📝

To practice your understanding of OOP, try the following exercises:

### Exercise 1: Create a Pet Class 🐾
Create a `Pet` class with attributes `name` and `species`. Add a method that makes the pet "speak."

### Exercise 2: Inheritance Practice 🔄
Create a `Bird` class that inherits from `Pet`, with an additional method `fly()`, and create an instance of `Bird`.

### Exercise 3: Special Methods 💡
Add a `__str__` method to the `Pet` class to provide a custom representation of your pet.

## More Information 📘

Object-Oriented Programming is a powerful tool for structuring your Python programs, making them more modular and reusable. Understanding concepts like classes, methods, constructors, and inheritance can significantly enhance your ability to write clean, efficient, and scalable code.

For more learning, check out:
- [Python Official Documentation on OOP](https://docs.python.org/3/tutorial/classes.html)
- [Real Python - Python OOP Tutorial](https://realpython.com/python3-object-oriented-programming/)

---

**Next Steps**: In the next post, we will delve into the **Pillars of OOP** in Python, including inheritance, encapsulation, and polymorphism. Keep learning, and happy coding! 🐍🚀
