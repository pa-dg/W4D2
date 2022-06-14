OBJECT-ORIENTED PROGRAMMING
Objectives:
    - know how to extend a class
    - know how to override a method
    - know how to call the original method

4 Principles of OOP
- Abstraction
- Encapsulation
- Inheritance
- Polymorphism

Inheritance
    - subclass can only have ONE superclass, but superclass can have multiple subclasses
    - creates implicit dependencies
    - inherited methods and variables are not listed in the subclass code

    - dont overwrite the interface
        - its ok to change the implementation (but stay DRY)
        - ok to add to the interface

    Extending Class
        - Inheritance is a way to establish a subtype from an existing class in order to reuse code. 
        - "<" denotes the class/child class/subclass gets all of the methods inherited from another class/parent class/superclass

    Module
        - write functionality we can add to classes
        - a class can only inherit from one superclass, it can include any number of modules

    Inheritance & Code Reuse
        - inheritance allowed us to avoid duplicating the methods that are common to parent & child class.

    Calling a super method
        - "super" 
            - if called w/o arguments, the args passed to the method will be implicitly passed on to the parent class's implementation
            - tells Ruby to call the inherited method by the same name as the current method
            - super
            - super(arg)
            - super()

    Decomposition into Objects
        - state of an obj
        - behavior of an obj

    Information hiding/Encapsulation
        - #Private Methods
        - Shy Code - minimize interfaces between your classes. Expose the least possible amt of state & behavior, and have a good reason for every piece of information that you expose

    Unified Moedlling Language (UML)
        - visual way of describing the relationships between diff objects in a system. 
        - a class is usually drawn in UML w/ three components: a name, a set of attributes (instance variables), set of methods

    Singleton
        - Singleton module implements Singleton pattern
            - to use singleton, include the module in your class
            - ensures that only one instance of Class can be created


    Abstraction
        - process of exposing essential features of an obj while hiding inner details that are not necessary to using the feature
        - breaking down complex system into distinct behavior

    Encapsulation
        - gives user access to the things that are safe for them to use. One common way to encapsulate data attributes is by making them only accessible through methods that we explicitly design as programmers
        - hide data and methods within an instance of class

    Public, Private, & Protected Methods
    - expose users to limited interface
    - can be easily refactored w/o changing interface

        - Calling Methods Explicitly vs Implicitly
            - implicitly - w/o receiver
            - explicitly - w/ receiver
        - Public methods
            - API endpoints for user - interface
            - can be inside or outside class def
            - can be called impli. or expli.
        - Private methods
            - called within the class definition
            - implicitly call private methods(except setters)
            - always will called on self
            - helper methods usually are private
        - Protected methods
            - can be called impli. or expli.
            - can only be called within the class def
            - can be used on other instance of the class


