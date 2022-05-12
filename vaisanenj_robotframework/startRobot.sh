#!/bin/bash

#Generate name for report folder
RESULT_PATH=Results/$(date +"%Y-%m-%d_%H.%M.%s")

#Create new folder
mkdir $RESULT_PATH

#Execute robot 
robot --outputdir $RESULT_PATH $@ Tests