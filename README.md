# Canonical narrowing
This work improves the canonical narrowing previously implemented using Maude 2.7.1 by taking advantage of the new functionalities that Maude 3.2 offers. In order to perform more faithful comparisons between algorithms, we have also implemented the Maude's standard narrowing and, since the built-in narrowing implemented at the C++ level returns only one solution, we have implemented a function to collect all the solutions. Our experiments on these three narrowing algorithms show that canonical narrowing outperforms Maude's standard narrowing, both at the C++ level and at the meta-level. The results of these experiments are relevant for narrowing-based protocol analysis tools, as well as for improving the analysis of many other narrowing-based applications such as logical model checking, theorem proving or partial evaluation.

## Repository structure

###### root folder
At the root of the project are the modules that define, on the one hand, the command to call standard narrowing or canonical narrowing that we have implemented, and on the other hand, the algorithm that recursively calls Maude's built-in narrowing.

###### experimental-modules
In this folder we can find the four modules defined to carry out the tests.

###### experiments
This folder in turn contains a subfolder for each of the defined experimental modules. In each of them, there are several "row*.maude" files that contain the resulting calls in the rows of the tables where the results of the experiments are captured. We can also find "run*.sh" files, which are the ones that have to be executed to carry out each set of experiments. In addition, there is an "outputs" folder in which the files with the output of the experiments will be generated automatically when they are executed.

Note that in order to run the experiments it is necessary to have maude installed on the system. Specifically, the attached files are those necessary to run the test battery in Linux environments.
