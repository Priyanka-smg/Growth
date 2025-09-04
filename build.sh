#!/bin/bash
#generate .jar file
#ensures faster fail
set -euo pipefail 
build_log="build.log"
#changing directory because pom.xml is in my_app folder
cd my-app
#clean old logs and overwrites
#checks if build.log file is present. if it is present then deletes it. 
[ -f "$build_log" ] && rm "$build_log"
#starts maven run
echo "Starting to build the process...."
#runs the mvn cmdin non interactive way and sends the output to screen as well as to build.log
#here the build.log is set such a way that it is saved one step above the my_app folder. 
if mvn clean package -B | tee -a "../$build_log"; then 
	echo "Maven build completed successfully."
else 
	echo "Maven build failed. check "$build_log" for details"
	#exit 1 means that exiting because its a failure. 
	exit 1 
fi


#checks the file inside directory "target" for the .jar file and head -n 1 makes sure that we take only 1 jar 
#the path will be stored in variable "JAR_FILE"
JAR_FILE=$(find target -name "*.jar"  | head -n 1)

#if the JAR_File is present then it will return that build is successful, otherwise returns an error message. 
if [[ -f "$JAR_FILE" ]]; then
	echo "Build artifact created...."$JAR_FILE" "
	echo "=========================================="
	#runs the java application
	java -cp "$JAR_FILE" com.example.App
	echo "Application executed successfully."
else
	echo "No JAR file found in the target/. Something went wrong."
	exit 1 
fi
	
