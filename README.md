# OGS
#Title: Outlier in Genomics Data
#Version: 0.1.0
#Author: Neeraj Budhlakoti, D C Mishra, Anil Rai and Rajeev Ranjan Kumar
#Maintainer: Neeraj Budhlakoti <neeraj35669@gmail.com>
#Description: Detection of influential observation is one of the crucial step of pre-processing to
identify suspicious elements in data that may be due to error or some other unknown source. Several
statistical measures are already developed for detectionof influential observation but still there
is a challenge to detect a true influential observation for high dimension data like gene expression, 
genotyping data. This package identifies influential observation by implementing meta-analysis based 
approach to combining various least absolute shrinkage and selection operator (LASSO) based diagnostic 
(Rajaratnam (2019) <doi:10.1080/10618600.2019.1598869>) in genomic data hence named as OGS (i.e. outlier 
in genomic data) based on their p-value. This package identifies outlier in genomic data using different
p-value combination methods with suitable p-value
cutoff.
Depends: R (>= 3.6)
Imports: inflaasso, metap, STGS
