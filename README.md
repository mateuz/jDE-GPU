# A Self-Adaptive Differential Evolution (jDE) on GPU using CUDA

###### A CUDA-Based implementation of a self-adaptive differential evolution namely jDE [1, 2]. Differential Evolution is one of the most used algorithm for optimization in the continuous domain, but is highly sensitive to parameters. The self-adaptive aims to remove the responsability of the designer to define the parameters values, given more robustness to the algorithm. The jDE algorithm uses a self-adapting mechanism on the control parameters F (mutation scale factor) and CR (crossover probability), changing his values during the run. This implementation uses DE/rand/1/bin strategy to create mutant vectors.

***
##### Requirements

- [CUDA Toolkit](https://developer.nvidia.com/cuda-toolkit) (tested with 9.2)

- [Boost C++ Libraries - Program Options](https://www.boost.org/) (tested with 1.58.0)

##### Compile

```sh
$ cd repo
$ make
```

##### Parameters Setting

```
$ "runs, r"      - Number of Executions
$ "pop_size, p"  - Population Size
$ "dim, d"       - Number of Dimensions
$ "func_obj, o"  - Function to Optimize [1,4]
$ "max_eval, e"  - Number of Function Evaluations
$ "help, h"      - Show this help
```

##### Execute

```sh
$ cd repo
$ ./demo <parameter setting> or make run (with default parameters)
```

##### Clean up

```sh
$ make clean
```

##### TODO

    - Test efficiency of the selection kernel.

    - ~Auto adjust the number of blocks and threads.~
    
    - Dimension parallelization of the DE operation

***

[1] J. Brest, V. Zumer and M. S. Maucec, "Self-Adaptive Differential Evolution Algorithm in Constrained Real-Parameter Optimization," 2006 IEEE International Conference on Evolutionary Computation, Vancouver, BC, 2006, pp. 215-222. doi: 10.1109/CEC.2006.1688311, [URL](http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=1688311&isnumber=35623)

[2] [CUDA is a parallel computing platform and programming model developed by NVIDIA for GPGPU](https://developer.nvidia.com/cuda-zone)
