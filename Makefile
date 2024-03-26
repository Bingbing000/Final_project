#! TO DO:
#! add a rule to build the report
report.html: report.Rmd \
 clean_data/clean_data.rds output/make_table.rds output/heat_map.png \
	output/ct.png output/bn.png output/bc.png output/ma.png output/nn.png \
	output/un.png
 Rscript code/report.R

#! TO DO:
#! add a rule to clean data
clean_data/clean_data.rds: code/clean_data.R data/breast_cancer.csv
	Rscript code/clean_data.R
	
#! TO DO:
#! add a rule to create the output of 
#! code/make_table.R
output/make_table.rds: code/make_table.R clean_data/clean_data.rds
 Rscript code/make_table.R

#! TO DO:
#! add a rule to create the output of 
#! code/02_make_output2.R
output/heat_map.png: code/heat_map.R clean_data/clean_data.rds
 Rscript code/heat_map.R
 
#! TO DO:
#! add a rule to create the output of 
#! code/0ct.R
output/ct.png: code/ct.R clean_data/clean_data.rds
 Rscript code/ct.R
 
#! TO DO:
#! add a rule to create the output of 
#! code/bn.R
output/bn.png: code/bn.R clean_data/clean_data.rds
 Rscript code/bn.R
 
#! TO DO:
#! add a rule to create the output of 
#! code/bc.R
output/bc.png: code/bc.R clean_data/clean_data.rds
 Rscript code/bc.R

#! TO DO:
#! add a rule to create the output of 
#! code/ma.R
output/ma.png: code/ma.R clean_data/clean_data.rds
 Rscript code/ma.R
 
#! TO DO:
#! add a rule to create the output of 
#! code/nn.R
output/nn.png: code/nn.R clean_data/clean_data.rds
 Rscript code/nn.R
 
#! TO DO:
#! add a rule to create the output of 
#! code/um.R
output/um.png: code/um.R clean_data/clean_data.rds
 Rscript code/um.R
 

 