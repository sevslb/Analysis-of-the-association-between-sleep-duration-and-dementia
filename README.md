# Analysis-of-the-association-between-sleep-duration-and-dementia

Data were analysed using **Stata 16.1**, analyses required downloading of the 2 following packages:

-	for analysis of trajectories of sleep duration between age 50 and 70 y
net from http://www.andrew.cmu.edu/user/bjones/traj
net install traj, force

-	for spline regression in adjusted Cox regression
https://ageconsearch.umn.edu/record/166260/files/sjart_st0215.pdf 
net install st0215-1.pkg 

Analyses undertaken are Cox regression using stset and stcox commands in Stata. For help, see https://www.stata.com/manuals/ststset.pdf and https://www.stata.com/manuals/ststcox.pdf
Age was the time-scale into the models so that origin date was date of birth. Models were repeated with different adjustment levels as described in the Stata code.

Extraction and derivation of sleep duration from accelerometers were done in **R version 3.6.3** (https://cran.r-project.org/bin/windows/base/old/3.6.3/) using GGIR v2.0-1 as described in the R code. We chose the option to analyse the data using sleep log information from the participants as described in https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0142533
Details on the package are given in https://cran.r-project.org/web/packages/GGIR/vignettes/GGIR.html
