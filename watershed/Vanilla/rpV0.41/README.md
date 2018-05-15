Each folder is named from the size of the Dateset that was tested.

What is more, there is a sample_inputs folder which contains some images to segment,
and a sample_outputs folder which contains the results after the application of the algorithm.



For the experiments, which was conducted at datasets of 8GB, 16GB and 32GB, the number of pilot cores 

(24, 48, 96, 192) was equal to the number of the CUs used.

_____
For the Weak Scaling experiments we tested the following configurations:
- (8GB - 24 pilot cores, 16GB - 48 pilot cores, 32GB - 96 pilot cores) - Weak_Scaling-1
- (8GB - 48 pilot cores, 16GB - 96 pilot cores, 32GB - 192 pilot cores) - Weak_Scaling-2

_____
The storng_scaling_plotting.py and weak_scaling_plotting.py scripts were used, as their name implies, for plotting. 
