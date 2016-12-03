A trajectory in NumPy array format is in the form T x (3N), 
where T is the number of time steps, N is the number of atoms, 
and 3N is the dimension of the corresponding configuration space 
(for N atoms in 3D Euclidean space):

    1st time step:
    --------------
       [     Atom 1     |      Atom 2     | ... |      Atom N     ]
       [x1_1, y1_1, z1_1, x1_2, y1_2, z1_2, ... , x1_N, y1_N, z1_N]

    2nd time step:
    --------------
       [     Atom 1     |      Atom 2     | ... |      Atom N     ]
       [x2_1, y2_1, z2_1, x2_2, y2_2, z2_2, ... , x2_N, y2_N, z2_N]

    Full trajectory:
    ----------------
      [
       [x1_1, y1_1, z1_1, x1_2, y1_2, z1_2, ... , x1_N, y1_N, z1_N],
       [x2_1, y2_1, z2_1, x2_2, y2_2, z2_2, ... , x2_N, y2_N, z2_N],
         .
         .
         .
       [xT_1, yT_1, zT_1, xT_2, yT_2, zT_2, ... , xT_N, yT_N, zT_N]
      ]


Figures:
* DetailedMenaTaskBreakDownLong.pdf : This figure show the comparison between 
      Vanilla-RP and RP-Spark. The experiment configuration was: 1)CA atoms,
      2) 192 trajectories in total, 3) Long trajectory. The number of cores range
      from 21, 36, 78, 136, 300, 528. The selection of the cores was done based
      on the following equation n(n+1)/2 where n divides 192. The Vanilla-RP
      tasks read their data in parallel. The RP-Spark reads all the data serially,
      organizes them so that each map task takes the same amount of data and 
      finally it creates an RDD.
* DetailedMenaTaskBreakDownMed.pdf : This figure show the comparison between 
      Vanilla-RP and RP-Spark. The experiment configuration was: 1)CA atoms,
      2) 192 trajectories in total, 3) Medium trajectory. The number of cores range
      from 21, 36, 78, 136, 300, 528. The selection of the cores was done based
      on the following equation n(n+1)/2 where n divides 192.The Vanilla-RP
      tasks read their data in parallel. The RP-Spark reads all the data serially,
      organizes them so that each map task takes the same amount of data and 
      finally it creates an RDD.
* DetailedMenaTaskBreakDownShort.pdf : This figure show the comparison between 
      Vanilla-RP and RP-Spark. The experiment configuration was: 1)CA atoms,
      2) 192 trajectories in total, 3) Short trajectory. The number of cores range
      from 21, 36, 78, 136, 300, 528. The selection of the cores was done based
      on the following equation n(n+1)/2 where n divides 192.The Vanilla-RP
      tasks read their data in parallel. The RP-Spark reads all the data serially,
      organizes them so that each map task takes the same amount of data and 
      finally it creates an RDD.
* DetailedMenaTaskBreakDownLongPr.pdf : This figure show the comparison between 
      Vanilla-RP and RP-Spark. The experiment configuration was: 1)CA atoms,
      2) 192 trajectories in total, 3) Long trajectory. The number of cores range
      from 21, 36, 78, 136, 300, 528. The selection of the cores was done based
      on the following equation n(n+1)/2 where n divides 192. The Vanilla-RP
      tasks read their data in parallel. The RP-Spark tasks read the data in
      parallel.
* DetailedMenaTaskBreakDownMedPr.pdf : This figure show the comparison between 
      Vanilla-RP and RP-Spark. The experiment configuration was: 1)CA atoms,
      2) 192 trajectories in total, 3) Medium trajectory. The number of cores range
      from 21, 36, 78, 136, 300, 528. The selection of the cores was done based
      on the following equation n(n+1)/2 where n divides 192.The Vanilla-RP
      tasks read their data in parallel. The RP-Spark tasks read the data in
      parallel.
* DetailedMenaTaskBreakDownShortPr.pdf : This figure show the comparison between 
      Vanilla-RP and RP-Spark. The experiment configuration was: 1)CA atoms,
      2) 192 trajectories in total, 3) Short trajectory. The number of cores range
      from 21, 36, 78, 136, 300, 528. The selection of the cores was done based
      on the following equation n(n+1)/2 where n divides 192.The Vanilla-RP
      tasks read their data in parallel. The RP-Spark tasks read the data in
      parallel.

