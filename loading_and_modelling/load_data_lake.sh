mount -t ext4 /dev/xvdf /data
/root/start-hadoop.sh
su - w205
hdfs dfs -mkdir /user/w205/Exercise_1
hdfs dfs -mkdir /user/w205/Exercise_1/hospitals_compare

hdfs dfs -mkdir /user/w205/Exercise_1/hospitals_compare/hospitals
hdfs dfs -mkdir /user/w205/Exercise_1/hospitals_compare/effective_care
hdfs dfs -mkdir /user/w205/Exercise_1/hospitals_compare/readmissions
hdfs dfs -mkdir /user/w205/Exercise_1/hospitals_compare/measures
hdfs dfs -mkdir /user/w205/Exercise_1/hospitals_compare/survey_responses

wget -O hospital_compare.zip https://data.medicare.gov/views/bg9k-emty/files/7825b9e4-e595-4f25-86e0-32a68d7ac7a4?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip
unzip hospital_compare.zip

tail -n +2 "Hospital General Information.csv" > hospitals.csv
tail -n +2 "Timely and Effective Care - Hospital.csv" > effective_care.csv
tail -n +2 "Readmissions and Deaths - Hospital.csv" > readmissions.csv
tail -n +2 "Measure Dates.csv" > measures.csv
tail -n +2 "hvbp_hcahps_02_18_2016.csv" > survey_responses.csv

hdfs dfs -put measures.csv /user/w205/Exercise_1/hospitals_compare/measures
hdfs dfs -put hospitals.csv /user/w205/Exercise_1/hospitals_compare/hospitals
hdfs dfs -put effective_care.csv /user/w205/Exercise_1/hospitals_compare/effective_care
hdfs dfs -put readmissions.csv /user/w205/Exercise_1/hospitals_compare/readmissions
hdfs dfs -put survey_responses.csv /user/w205/Exercise_1/hospitals_compare/survey_responses

