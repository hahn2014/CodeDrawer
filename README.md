# Code Drawer

Code Drawer is an open source free to use Apple Ecosystem code library. You can add anything from a simple function with minimal features, to a full blown project with folders and linked files. I plan to implement an IDE level of syntax highlighting, with functionalities such as showing source for variables, function calls and so forth.

##Features to expect
* Syntax highlighting for a large range of supported languages
    * Ability to import custom syntax support to come eventually
* Definition linking. When control-clicking on the name of a variable, class, etc.. Code Drawer will redirect the text editor to the respective definition of the name.
* Storage Types:
    * **Function** - a simple function that wouldn't need reference to multiple classes
    * **Algorithm** - When the function type isn't enough, and you need access to more than one class, such as defining Breadth-First-Search requiring access to a BST class
    * **Project** - Straight out hold an entire application source, with folders, classes and anything a standard IDE would control.
* Run from inside program, linking current file to a terminal process and attempt to compile (This is a hopeful feature!)
    * **Function** - Similarly to how GHCI runs a Haskell file, I will define basic constraints to run the function, which will then require user input in the terminal for the arguments
    * **Algorithm** - Ideally, the user includes everything needed in the algorithm to compile in one go, meaning a more complex algorithm would run Similarly to how the simple function runs requiring user input
    * **Project** - Since all source of the project is imported into Code Drawer, it is as simple as running a MAKEFILE to compile the entire program

### Roadmap

Currently I am in early development stages, including learning the basics of SwiftUI for MacOS 11/iOS 14
