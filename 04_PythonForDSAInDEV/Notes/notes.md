# Python for Data Science, Aritificial Intelligence, & Development

# Table of Contents
<!-- TOC tocDepth:2..3 chapterDepth:2..6 -->

- [Course Overview](#course-overview)
- [Intro to Python](#intro-to-python)
    - [Identify the Users of Python](#identify-the-users-of-python)
    - [Benefits of Python](#benefits-of-python)
    - [Describe the diversity and inclusion efforts of the Python community](#describe-the-diversity-and-inclusion-efforts-of-the-python-community)
- [Intro to Jupyter](#intro-to-jupyter)
    - [Why Jupyter?](#why-jupyter)
    - [Key Features of Jupyter](#key-features-of-jupyter)
    - [Jupyter in Data Science](#jupyter-in-data-science)
- [Data Types in Python](#data-types-in-python)
- [Expressions and Variables](#expressions-and-variables)
    - [Expression](#expression)
    - [Variable](#variable)
- [Strings](#strings)
    - [Intro](#intro)
    - [A Sequence](#a-sequence)
    - [Combining Strings](#combining-strings)
    - [`Len()`](#len)
    - [Concatenation](#concatenation)
- [Tuples and Lists](#tuples-and-lists)
    - [Tuples](#tuples)
    - [Lists](#lists)
- [Dictionaries](#dictionaries)
    - [keys](#keys)
    - [values](#values)
- [Sets](#sets)
    - [intro](#intro)
    - [set operations](#set-operations)
- [Conditons and Branching](#conditons-and-branching)
    - [Comparison operators](#comparison-operators)
    - [Branching](#branching)
    - [Logic operators](#logic-operators)

<!-- /TOC -->

## 1. Course Overview
| Module | Content
| --- | --- |
| 1 - Python Basics | About the Course<br> Types<br> Expressions<br> Variables<br> String Operations |
| 2 - Python Data Structures | List and Tuples<br> Dictionaries<br> Sets |
| 3 - Python Programming Fundamentals | Conditions and Branching<br> Loops<br> Functions<br> Exception Handling<br> Objects and Classes<br> Practice with Python Programming Fundamentals |
| 4 - Working with Data in Python | Reading and Writing Files with Open<br> Pandas<br> Numpy |
| 5 - APIs and Data Collection | Simple APIs<br> REST APIs, Web Scraping, and Working with Files<br> Final Exam |

## 2. Intro to Python

### 2.1. Identify the Users of Python
- People who already know how to program
- People who want to learn how to program
- Over 80% of DS pros worldwide
- Areas liek DS, AI, ML, Web Dev, IoT devices (Raspberry Pi)
- Large Orgs (IBM, Wikipedia, Google, Yahoo!, CERN, etc)

### 2.2. Benefits of Python
- General purpose language
- Large standard library
- DS Libraries: Pandas, NumPy, SciPy, Matplotlib
- AI Libraries: TensorFlow, PyTorch, Keras, Scikit-Learn
- NLP Library: Natural Language Toolkit (NLTK)

### 2.3. Describe the diversity and inclusion efforts of the Python community
>**Our Community**
>
>Members of the Python community are **open**, **considerate**, and **respectful**. Behaviours that reinforce these values contribute to a positive environment, and include:
>
>- **Being open**. Members of the community are open to collaboration, whether it's on PEPs, patches, problems, or otherwise.
>- **Focusing on what is best for the community**. We're respectful of the processes set forth in the community, and we work within them.
>- **Acknowledging time and effort**. We're respectful of the volunteer efforts that permeate the Python community. We're thoughtful when addressing the efforts of others, keeping in mind that often times the labor was completed simply for the good of the community.
>- **Being respectful of differing viewpoints and experiences**. We're receptive to constructive comments and criticism, as the experiences and skill sets of other members contribute to the whole of our efforts.
>- **Showing empathy towards other community members**. We're attentive in our communications, whether in person or online, and we're tactful when approaching differing views.
>- **Being considerate**. Members of the community are considerate of their peers -- other Python users.
>- **Being respectful**. We're respectful of others, their positions, their skills, their commitments, and their efforts.
>- **Gracefully accepting constructive criticism**. When we disagree, we are courteous in raising our issues.
>- **Using welcoming and inclusive language**. We're accepting of all who wish to take part in our activities, fostering an environment where anyone can participate and everyone can make a difference.

## 3. Intro to Jupyter

>Jupyter is a freely available web application that enables creation and sharing of documents containing **equations**, **live coding**, **visualizations**, and **narrative text**. Jupyter provides an **interactive computing environment** that supports multiple programming languages, including Python, R, Julia, and more, but it shines brightest when used with Python.  Jupyter revolves around **notebooks**, documents containing a mix of code, visualizations, narrative text, equations, and multimedia content. These notebooks allow users to create, share, and collaborate on computational projects seamlessly.

### 3.1. Why Jupyter?
Jupyter's popularity stems from its flexibility and ease of use.

### 3.2. Key Features of Jupyter

- Interactive Computing
- Support for Multiple Languages
- Rich Output
- Integration with Data Science Libraries
- Collaboration and Sharing

### 3.3. Jupyter in Data Science

- Jupyter has become an indispensable tool for researchers, analysts, and developers in data science.
- Seamless integration with popular libraries such as NumPy, pandas, and sci-kit-learn makes it the go-to choice for data manipulation, analysis, and machine learning. 
- Jupyter provides a user-friendly interface, interactive capabilities, and robust collaboration features
- Jupyter empowers you to work more efficiently and share your insights with others.

## 4. Data Types in Python

| Value              | Data Type |
|:---:               |:---:      |
| 11                 | int       |
| 21.213             | float     |
| "Hello Python 101" | str       |
| True               | bool      |

## 5. Expressions and Variables

Expressions are *mathematical operations*

### 5.1. Expression
43+60+16+41

43 = operand \
'+'  = operator 

 \
Variables are used to *store values*

### 5.2. Variable

`my_variable = 1`

## 6. Strings

### 6.1. Intro
A string is a sequence of characters contained between quotes, either double or single quotes \
A string can be spaces or digits \
A string can also be special characters

### 6.2. A Sequence
It is helpful to think of a string as an *ordered sequence* \
Each element in the sequence can be accessed by an *index*, or *numbered position* in the string, *starting at 0* or going in reverse where the last element of the string starts at -1

### 6.3. Combining Strings
Strings can also be combined `Name[::2]` only grabs every other element in the string `Name` \
Slicing is another tool we can use that looks like `Name[0:5:2]` where every other element is grabbed from element `0` to element `5`

### 6.4. `Len()`
We can use `len(Name)` command to obtain the length of the string

### 6.5. Concatenation
The action of combining strings with the addition `+` operator \
```
Name1 = 'Well, '
Name2 = 'Actually'
Name3 = Name1 + Name2
Print(Name3)

'Well, Actually'
```


## 7. Tuples and Lists
>Tuples and Lists are considered *compound data types*

### 7.1. Tuples
an ordered sequence, written as comma-separated values between *parentheses* `()` \
multiple type of variables can be contained withina tuple
tuples are **immutable**, meaning they **cannot** be changed


### 7.2. Lists
Also an ordered sequence, written as comma-separated values between *brackets* `[]` \
multiple type of variables can be contained within a tuple
lists are **mutable**, meaning they **can** be changed

For a list or tuple `a` we can use `help(a)` for a list of all methods available to use


## 8. Dictionaries
Similar to lists, which have a `indexes` and `elements`, dictionaries have `keys` and `values` \
dictionaries are denoted by curly brackets `{}` \
`keys` must *immutable* and *unique*

### 8.1. keys
`keys` are an index but rather than being limited to numbers, `keys` are typically characters, making them a bit easier to remember

### 8.2. values
`values` are similar to an element, in which they store information at a specific `key`


## 9. Sets

### 9.1. intro
sets are a type of *collection*, similar to lists and tuples, you can input *different* python data types within a set \
however, unline lists and tuples, **sets are unordered** meaning they *do not* record element positon \
**sets only have unique elements** \
sets are denoted by curly brackets `{}` like dictionaries but do not take a key \
if duplicate items are put into a set, they will not be present past the initial entry

### 9.2. set operations
| Operation | Action |
|:---:| --- |
| `.add()` | add unique item to set |
| `.remove()` | remove item from set |
| ` & ` or `.intersection`() | find intersection between two sets |
| `.issubset()` | check if a set is a subset of another set, used if set 1 is entirely present in set 2 |
| `.issuperset()` | check if the set is a superset of another set, used if set 2 is entirely present in set 1 |
| `.difference()` | find the difference between two sets |
| `.union()` | find the common elements between two sets |


## 10. Conditons and Branching

### 10.1. Comparison operators
| Operator | Action |
|:---:| --- |
| `==` | returns `true` or `false` if two values are equal to each other |
| `>` | returns `true` or `false` if value 1 is *greater than* value 2 |
| `>=` | returns `true` or `false` if value 1 is *greater than or equal to* value 2 |
| `<` | returns `true` or `false` if value 1 is *less than* value 2 |
| `<=` | returns `true` or `false` if value 1 is *less than or equal to* value 2 |
| `!=` | returns `true` or `false` if value 1 is *not equal to* value 2 |

### 10.2. Branching
| Statement | Action |
|:---:| --- |
| `if (statement): {task}` | if the statement returns `true`, the `if` task will run, otherwise the task will be skipped |
| `if (statement): {task} else: {task}` | if the statement returns `true`, the `if` task will run, otherwise the task state for `else` will be run |
| `elif {task}` | continuation of `if (statement): {task} else {task}` but the following statements will continue to be run if the previous statement is not met |

### 10.3. Logic operators
| Operator | Action |
|:---:| --- |
| `not(True)` | if statement is *not true*, returns `True` |
| `not(False)` | if statement is *not false*, returns `True` |
| `or` | if either value 1 *or* value 2 is true, returns `True` |
| `and` | if value 1 *and* value 2 are true, returns `True` |


## 11. Loops

### 11.1. Loop Functions
| Function | Action |
|:---:| --- |
| `range(N)` | outputs ordered sequence as a list `i` |

### 11.2. For Loops
loops repeat a task `n` number of times

```python
squares = ["red", "yellow", "green", "purple", "blue"]

for color in range(0,5):
    squares[color] = "white"
```

### 11.3. While Loops
loops repeat a task until some condition is met

```python
squares = ["orange", "orange", "purple", "orange", "blue"]
Newsquares = []
i = 0

while(squares[i]=="orange"):
    Newsquares.append(squares[i])
    i=i+1
```


## 12. Exception Handling

### 12.1. try...except
```python
try:
    ... #initial action youre attempting to perform
except:
    ... #what to do if unable to perform task
else:
    ... #what to do after successful attempt
finally:
    ... #what to do after everything, regardless of success or failure
```

common types of errors

- `ZeroDivisonError` - error when dividing by zero
- `NameError` - trying to use a variable that hasn't been defined
- `IndexError` - trying to access data from an index in a list that doesn't exist \
[here's a list of more errors that are built into python](https://docs.python.org/3/library/exceptions.html)


## 13. Objects and Classes

Python has a lot of data types
- `integers`
- `floats`
- `strings`
- `lists`
- `dictionaries`

Each of those data types is an `object`.

Every `object` has;
- A **type**
- An internal data representation (*a blueprint*)
- A set of procedures for interacting with the object (*method*)

An `object` is an **instance** of a particular **type**

### 13.1. How to create a class
```python
# create a class for a circle
class Circle(object):
    def __init__(self, radius, color):
        self.radius = radius
        self.color = color

# create an object of the class Circle
RedCircle = Circle(10,"red")
```

### 13.2. Methods
**functions** that interact or change the attributes of an object

```python
# once again, create the Circle class
class Cirlce(object):
    def __init__(self, radius, color):
        self.radius = radius
        self.color = color
    # now add the method that will allow us to change the radius of an object created from this class.
    def add_radius(self, r):
        self.radius = self.radius + r
```

use `dir()` to get a list of the attributes and methods associated with a class