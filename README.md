# Canonical narrowing
This implementation is related to a paper: https://link.springer.com/chapter/10.1007/978-3-031-12441-9_8.

This work improves the canonical narrowing previously implemented using Maude 2.7.1 by taking advantage of the new functionalities that Maude 3.2 offers. In order to perform more faithful comparisons between algorithms, we have also implemented the Maude's standard narrowing and, since the built-in narrowing implemented at the C++ level returns only one solution, we have implemented a function to collect all the solutions. Our experiments on these three narrowing algorithms show that canonical narrowing outperforms Maude's standard narrowing, both at the C++ level and at the meta-level. The results of these experiments are relevant for narrowing-based protocol analysis tools, as well as for improving the analysis of many other narrowing-based applications such as logical model checking, theorem proving or partial evaluation.


## Requisites
In order to run the files, Maude version 3.2.1 is required, which can be found in http://maude.cs.illinois.edu/w/index.php/The_Maude_System.

## Repository structure
###### root folder
At the root of the project are the modules that define, on the one hand, the file to call standard narrowing or canonical narrowing that we have implemented, and on the other hand, the file that recursively calls Maude's built-in narrowing.

###### experimental-modules
In this folder we can find the four modules defined to carry out the tests.

###### experiments
This folder in turn contains a subfolder for each of the defined experimental modules. In each of them, there are several "row*.maude" files that contain the resulting calls in the rows of the tables where the results of the experiments are captured. We can also find "run*.sh" files, which are the ones that have to be executed to carry out each set of experiments. In addition, there is an "outputs" folder in which the files with the output of the experiments will be generated automatically when they are executed.

## Algorithm execution
The first step in running the algorithms is to run Maude. Once this is done, it is necessary to load the modules that are in the files in the root of the project. To do this, the "load [file]" command is used. Note that "native-narrowing.maude" is only neccesary if we want to compare with the original narrowing from Maude. It is also necessary to load the file containing the rewrite theory to be used. In our case, these files are located in "experimental-modules", but the user can specify any other. Finally, the call to the algorithm must be executed as follows:

```
reduce in NARROWING :
        narrowing(upModule(<module_name>, false),
              <initial_term>,
              =>*,
              <target_term>,
              <narrowing_type>, <variant_option_set>, <irreducibility_constrainst>, 
              <variable_qid>, <maximum_depth>, <maximum_solutions>) .
``` 

Where the parameters that are between "<" and ">" are at the user's choice. The options are as follows:
* module_name: Name of the module that defines the rewrite theory to use.
* initial_term: Initial term for narrowing.
* target_term: Target term for narrowing.
* narrowing_type: It can be "standard" or "canonical". In the second case, irreducibility constraints will be used to eliminate unnecessary narrowing steps.
* variant_option_set: It can be "filter" or "none" (review Maude's original command). The first case only works correctly for standard narrowing.
* irreducibility_constrainst: Takes the value of the list of initial irreducibility constraints. It can be empty. In fact, if standard narrowing is used, it will be ignored even if it is given another value.
* variable_qid: This parameter is important if an identifier is used for variables in the start and/or target terms that is '@, '#, or '%. It must be indicated in it which of them is used. In case none are used, choose any of them for this parameter.
* maximum_depth: Maximum depth that you want to deploy the search tree for narrowing.
* maximum_solutions: Maximum solutions that you want the narrowing algorithm to find.

### Running example
Now we give an example of use if, for example, we want to execute a reachability problem using the narrowing-vending-machine. The first thing, after executing Maude, is to load the necessary modules for it. Let's imagine that we are at the root of this project:

```
load canonical-narrowing.maude
load experimental-modules/narrowing-vending-machine.maude
```

Now we can run a problem. For example, we will use the reachability problem M:Money => St:State. That is, we are asking that, from any amount of money, all the states of the search tree be taken as a solution. Also, the depth limit will be 5 and we will ask for unlimited solutions. In this case, the two calls to use both standard and canonical narrowing would be:

```
reduce in NARROWING :
        narrowing(upModule('NARROWING-VENDING-MACHINE, false),
              '<_>['M:Money],
              =>*,
              'St:State,
              standard, none, empty, '@, 5, unbounded) .
              
reduce in NARROWING :
        narrowing(upModule('NARROWING-VENDING-MACHINE, false),
              '<_>['M:Money],
              =>*,
              'St:State,
              canonical, none, empty, '@, 5, unbounded) .              
```
