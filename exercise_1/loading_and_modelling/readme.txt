Instructions for setting up the environment.

1.) Create a HDFS directories in exercise_1 directory i.e. /user/w205/exercise_1/
2.) Create HDFSsubdirectories /provider /effective /survey
3.) Load the data in hospital_nh.csv into /provider
4.) Load the data in survey_responses_nh.csv into /survey
5.) Load the data in effective_care_nh.csv /effective
6.) In hive: Run the hive_base_ddl.sql file
7.) In hive: Run the tranformations.sql file
8.) The data should be loaded, now you can run the following files to answer questions 1-4
Q1) best_hospitals.sql
Q2) best_states.sql
Q3) variability.sql
Q4) correlation.sql (this will take some time, I don't think I wrote the most elegant query here!).

My answer files are found
Q1) best_hostpitals.txt
Q2) best_states.txt
Q3) variability.txt
Q4) correlation.txt
