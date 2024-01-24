# Implicit Declaration Lesson
this is an example to demonstrate implicit declaration of variables and how they are handled.

When you implicitly declare a variable, you essentially allow the compiler to declare it for you, however it will only create a single bit variable

You can also assign variables that are mismatched sizes without any problems from verilog unlesss you incude the following compiler directive in your code
`default_nettype none

This directive will instruct the compiler to define any implicit variables as type "none" which will create errors when you try to assign values to them.


