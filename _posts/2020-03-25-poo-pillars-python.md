---
title: The Pillars of Object-Oriented Programming (OOP) in Python 
date: 2020-03-23 01:00:00 +/-TTTT
categories: [PROGRAMMING, PYTHON]
tags: [python, oop, encapsulation, abstraction, inheritance, polymorphism]
image:
    path: assets/img/0_fK1B7WaHDiwmGbpw.jpg
    alt: POO Pillars In Python
---

This post explores the four key pillars of Object-Oriented Programming (OOP) in Python: encapsulation, abstraction, inheritance, and polymorphism. Understanding these fundamental principles will help you write more modular, reusable, and organized Python code.

## Introduction to Object-Oriented Programming

**Object-Oriented Programming (OOP)** is a programming paradigm based on the concept of "objects," which are instances of **classes** that can hold both data (attributes) and methods (functions). OOP allows for efficient code organization and reusability.

The four pillars of OOP are:
1. **Encapsulation**
2. **Abstraction**
3. **Inheritance**
4. **Polymorphism**

Let’s dive into each one and understand how Python supports these powerful concepts.

## Encapsulation

**Encapsulation** refers to the bundling of data (attributes) and methods that operate on that data within one unit, or class. It hides the internal state of an object and only exposes the necessary methods, preventing direct access to the object's internal data.

### Example: Encapsulation in Python

In Python, we use underscores to indicate private and protected attributes. Single underscore (`_`) denotes a protected attribute, while double underscores (`__`) denote a private attribute.

```python
class A():
    def __init__(self):
        self.__counter = 0  # Private attribute

    def increment(self):
        self.__counter += 1

    def get_count(self):
        return self.__counter

a = A()
print(a.get_count())  # Output: 0
a.increment()
print(a.get_count())  # Output: 1
```

In the above example, the `__counter` attribute is encapsulated within the class `A`, and can only be modified using the methods defined in the class, such as `increment()`.

### Good Practices in Encapsulation

Encapsulation helps protect the integrity of data and prevents unauthorized or unintended changes to an object's internal state. Always use getter (`@property`) and setter (`@attribute.setter`) methods to control access to private attributes properly.

```python
class A():
    def __init__(self):
        self._value = 0  # Protected attribute

    @property
    def value(self):
        return self._value

    @value.setter
    def value(self, new_value):
        self._value = new_value

a = A()
a.value = 10  # Set new value using setter
print(a.value)  # Get value using getter - Output: 10
```

This is an example of best practices for encapsulating class properties and safely interacting with them.

## Abstraction

**Abstraction** is the process of hiding complex implementation details and exposing only what is necessary. It simplifies interaction by providing a clean interface.

### Example: Using `@property` to Abstract Data

The use of decorators like `@property` is an effective way to abstract access to data. Instead of directly accessing an attribute, you provide a clean, readable way to get and set values.

```python
class A():
    def __init__(self):
        self._count = 0

    @property
    def count(self):
        return self._count

    @count.setter
    def count(self, value):
        if value >= 0:
            self._count = value
        else:
            print("Invalid value. Count must be non-negative.")

a = A()
a.count = 5  # Set using setter
print(a.count)  # Get using getter - Output: 5
a.count = -3  # Output: Invalid value. Count must be non-negative.
```

By providing these getters and setters, the actual attribute is protected, and we control how it is accessed and modified.

## Inheritance

**Inheritance** allows a class (child class) to inherit attributes and methods from another class (parent class). This helps in code reusability and establishing a natural hierarchical relationship between classes.

### Example: Inheritance in Python

```python
class Animal:
    def speak(self):
        print("The animal makes a sound")

class Dog(Animal):
    def __init__(self, name):
        self.name = name

my_dog = Dog("Max")
my_dog.speak()  # Output: The animal makes a sound
```

Here, `Dog` inherits the `speak()` method from the `Animal` class, demonstrating the reusability of code.

### Using `super()`

The `super()` function is used to call a parent class’s constructor or methods. This is especially useful when you need to extend the functionality of a parent class.

```python
class Animal:
    def __init__(self, name):
        self.name = name

class Dog(Animal):
    def __init__(self, name, sound):
        super().__init__(name)  # Call the parent class constructor
        self.sound = sound

my_dog = Dog("Max", "Woof Woof")
print(my_dog.name)  # Output: Max
print(my_dog.sound)  # Output: Woof Woof
```

## Polymorphism

**Polymorphism** allows different classes to define methods with the same name but potentially different behaviors. This makes the code more flexible and extensible.

### Example: Polymorphism in Python

```python
class Animal:
    def speak(self):
        print("Some sound")

class Dog(Animal):
    def speak(self):
        print("Woof Woof")

class Cat(Animal):
    def speak(self):
        print("Meow Meow")

def make_animal_speak(animal):
    animal.speak()

my_dog = Dog()
my_cat = Cat()
make_animal_speak(my_dog)  # Output: Woof Woof
make_animal_speak(my_cat)  # Output: Meow Meow
```

Here, both `Dog` and `Cat` classes have a `speak()` method, but each implements it differently. The function `make_animal_speak()` works with any object that has a `speak()` method, demonstrating polymorphism.

## Practice Exercises

### Exercise 1: Encapsulation Practice
Create a class `Student` with private attributes for `name` and `grade`. Provide public methods to set and get these attributes, ensuring that grades are always non-negative.

### Exercise 2: Inheritance Practice
Create a `Vehicle` class with attributes like `make` and `model`, and derive `Car` and `Motorcycle` classes from it. Each subclass should have its unique method that prints specific information about the vehicle.

### Exercise 3: Polymorphism Practice
Create classes `Bird` and `Fish` with a method `move()`. Implement `move()` to represent how each animal moves. Write a function that takes an object and calls `move()` to demonstrate polymorphism.

## More Information

Understanding the four pillars of OOP—encapsulation, abstraction, inheritance, and polymorphism—will help you build robust, modular, and reusable code. Applying these principles effectively is key to mastering Python’s OOP capabilities.

For more learning, check out:
- [Python Official Documentation on OOP](https://docs.python.org/3/tutorial/classes.html)
- [Real Python - OOP in Python](https://realpython.com/python3-object-oriented-programming/)

---

**Next Steps**: In the next post, we will explore [*POO Classes, Attributes, Methods*](https://gaaspkm.online/posts/poo-python-attrributes-classes-methods/), including classes, objects, and inheritance. Stay tuned and keep coding!
