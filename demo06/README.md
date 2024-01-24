#Declaring and Instantiating Modules

This demo introduces modules by defining the behavior of my_module in my_module.v 

my_module.v takes two single-bit inputs: A and B and assigns them to a single-bit output Y.

my_module.v is instantiated in the top module and provided inputs.

#Using Parameters

This demo also shows how parameters can be used to help define things inside the module.  

Parameters act as variable constants that define the workings of a particular module.  They can be set or defined by one of the higher level modules that is calling it.

Localparam refers to parameters that cannot be changed from their original definition within the module.