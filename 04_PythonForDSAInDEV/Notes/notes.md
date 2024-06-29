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

<!-- /TOC -->

## Course Overview
| Module | Content
| --- | --- |
| 1 - Python Basics | About the Course<br> Types<br> Expressions<br> Variables<br> String Operations |
| 2 - Python Data Structures | List and Tuples<br> Dictionaries<br> Sets |
| 3 - Python Programming Fundamentals | Conditions and Branching<br> Loops<br> Functions<br> Exception Handling<br> Objects and Classes<br> Practice with Python Programming Fundamentals |
| 4 - Working with Data in Python | Reading and Writing Files with Open<br> Pandas<br> Numpy |
| 5 - APIs and Data Collection | Simple APIs<br> REST APIs, Web Scraping, and Working with Files<br> Final Exam |

## Intro to Python

### Identify the Users of Python
- People who already know how to program
- People who want to learn how to program
- Over 80% of DS pros worldwide
- Areas liek DS, AI, ML, Web Dev, IoT devices (Raspberry Pi)
- Large Orgs (IBM, Wikipedia, Google, Yahoo!, CERN, etc)

### Benefits of Python
- General purpose language
- Large standard library
- DS Libraries: Pandas, NumPy, SciPy, Matplotlib
- AI Libraries: TensorFlow, PyTorch, Keras, Scikit-Learn
- NLP Library: Natural Language Toolkit (NLTK)

### Describe the diversity and inclusion efforts of the Python community
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

## Intro to Jupyter

>Jupyter is a freely available web application that enables creation and sharing of documents containing **equations**, **live coding**, **visualizations**, and **narrative text**. Jupyter provides an **interactive computing environment** that supports multiple programming languages, including Python, R, Julia, and more, but it shines brightest when used with Python.  Jupyter revolves around **notebooks**, documents containing a mix of code, visualizations, narrative text, equations, and multimedia content. These notebooks allow users to create, share, and collaborate on computational projects seamlessly.

### Why Jupyter?
Jupyter's popularity stems from its flexibility and ease of use.

### Key Features of Jupyter

- Interactive Computing
- Support for Multiple Languages
- Rich Output
- Integration with Data Science Libraries
- Collaboration and Sharing

### Jupyter in Data Science

- Jupyter has become an indispensable tool for researchers, analysts, and developers in data science.
- Seamless integration with popular libraries such as NumPy, pandas, and sci-kit-learn makes it the go-to choice for data manipulation, analysis, and machine learning. 
- Jupyter provides a user-friendly interface, interactive capabilities, and robust collaboration features
- Jupyter empowers you to work more efficiently and share your insights with others.

## Data Types in Python

| Value              | Data Type |
|:---:               |:---:      |
| 11                 | int       |
| 21.213             | float     |
| "Hello Python 101" | str       |
| True               | bool      |

## Expressions and Variables

Expressions are *mathematical operations*

### Expression
43+60+16+41

43 = operand \
'+'  = operator 

 \
Variables are used to *store values*

### Variable

`my_variable = 1`

## Strings

### Intro 
A string is a sequence of characters contained between quotes, either double or single quotes \
A string can be spaces or digits \
A string can also be special characters

### A Sequence 
It is helpful to think of a string as an *ordered sequence* \
Each element in the sequence can be accessed by an *index*, or *numbered position* in the string, *starting at 0* or going in reverse where the last element of the string starts at -1

### Combining Strings
Strings can also be combined `Name[::2]` only grabs every other element in the string `Name` \
Slicing is another tool we can use that looks like `Name[0:5:2]` where every other element is grabbed from element `0` to element `5`

### `Len()` 
We can use `len(Name)` command to obtain the length of the string

### Concatenation 
The action of combining strings with the addition `+` operator \
```
Name1 = 'Well, '
Name2 = 'Actually'
Name3 = Name1 + Name2
Print(Name3)

'Well, Actually'
```


## Tuples and Lists
>Tuples and Lists are considered *compound data types*

### Tuples
an ordered sequence, written as comma-separated values between *parentheses* `()` \
multiple type of variables can be contained withina tuple
tuples are **immutable**, meaning they **cannot** be changed


### Lists
Also an ordered sequence, written as comma-separated values between *brackets* `[]` \
multiple type of variables can be contained within a tuple
lists are **mutable**, meaning they **can** be changed

For a list or tuple `a` we can use `help(a)` for a list of all methods available to use


## Dictionaries
Similar to lists, which have a `indexes` and `elements`, dictionaries have `keys` and `values` \
dictionaries are denoted by curly brackets `{}` \
`keys` must *immutable* and *unique*

### keys
`keys` are an index but rather than being limited to numbers, `keys` are typically characters, making them a bit easier to remember

### values
`values` are similar to an element, in which they store information at a specific `key`


## Sets

### intro
sets are a type of *collection*, similar to lists and tuples, you can input *different* python data types within a set \
however, unline lists and tuples, **sets are unordered** meaning they *do not* record element positon \
**sets only have unique elements** \
sets are denoted by curly brackets `{}` like dictionaries but do not take a key \
if duplicate items are put into a set, they will not be present past the initial entry

### set operations
| Operation | Action |
|:---:| --- |
| `.add()` | add unique item to set |
| `.remove()` | remove item from set |
| ` & ` or `.intersection`() | find intersection between two sets |
| `.issubset()` | check if a set is a subset of another set, used if set 1 is entirely present in set 2 |
| `.issuperset()` | check if the set is a superset of another set, used if set 2 is entirely present in set 1 |
| `.difference()` | find the difference between two sets |
| `.union()` | find the common elements between two sets |