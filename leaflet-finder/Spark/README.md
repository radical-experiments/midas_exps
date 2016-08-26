Each entry should contain an explanation for each csv file.

- reports_comet_3_6_2016.csv:
      Experiments executed on Comet with RP-Spark for leaflet finder. The system has 145K phospathe atoms. For the execution 378 partitions were created and we used 48,96,192 and 384 cores
      RADICAL-Pilot Version:v0.40.1-38-ga1e892c@feature-spark
      RADICAL-Utils Version:v0.40
      SAGA-python Version: v0.40.2

- report_comet_6_9_2016_ratio21.csv:
      Experiments executed on Comet with RP-Spark for leaflet finder. The system has 145K phosphate atoms. For the execution the ratio of the partitions over the cores was 2 to 1. 48, 96 192 and 384 cores were used.
      RADICAL-Pilot Version:v0.40.1-38-ga1e892c@feature-spark
      RADICAL-Utils Version:v0.40
      SAGA-python Version: v0.40.2

- reports_comet_26_8_2016.csv:
      Experiments executed on Comet with RP-Spark for leaflet finder. The system has 145K phospathe atoms. For the execution 378 partitions were created and we used 48,96,192 and 384 cores. The Spark script implementation creates a RDD which is a list of lists. Each entry of the RDD has two lists containing the atom position that will be used to calculate the part of the adj matrix. This is similar to the window used in the all-pairs calculation.
      RADICAL-Pilot Version:v0.40.1-172-gcc07e28@feature-spark
      RADICAL-Utils Version:v0.41.1
      SAGA-python Version: v0.41.3
