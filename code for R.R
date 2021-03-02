#/*****************************************************************************************************************************/
#/*************************R code for derivation of sleep duration from accelerometer**********************************/
#/*****************************************************************************************************************************/
  
install.package("remotes")
library("remotes")
remotes::install_github("wadpac/GGIR", ref="v2.0-1", dependencies = TRUE)
# remotes::install_github("wadpac/GGIR", ref="2.0-2")
library("GGIR")

datadir = "~/binary_data_location"
outputdir = "~/outputdirectory"
loglocation = "~/sleeplog_corrected.csv"
data_cleaning_file = "~/data_cleaning_file.csv"
f0 = c()
f1 = c()

g.shell.GGIR(#=======================================
             # INPUT NEEDED:
             #-------------------------------
             # General parameters
             #-------------------------------
             mode=1:5, #specify above
             datadir=datadir, #specify above
             outputdir=outputdir, #specify above
             do.report=c(2, 4, 5), #for what parts does and report need to be generated? (option: 2, 4 and 5)
             f0=f0, #specify above
             f1=f1, #specify above
             overwrite = F, #overwrite previous milestone data?
             do.parallel = T,
             do.imp=TRUE, # Do imputation? (recommended)
             idloc=2, #id location (1 = file header, 2 = filename)
             print.filename=TRUE,
             storefolderstructure = TRUE,
             data_cleaning_file = data_cleaning_file,
             desiredtz = "Europe/London",
             #-------------------------------
             # Part 1 parameters:
             #-------------------------------
             # Key functions: reading file, auto-calibration, and extracting features
             windowsizes = c(5,900,3600), #Epoch length, non-wear detection resolution, non-wear detection evaluation window
             do.cal= TRUE, # Apply autocalibration? (recommended)
             do.enmo = TRUE, #Needed for physical activity analysis
             do.anglez=TRUE, #Needed for sleep detection
             chunksize=1, #size of data chunks to be read (value = 1 is maximum)
             printsummary=TRUE,
             #-------------------------------
             # Part 2 parameters:
             #-------------------------------
             # Key functions: Non-wear detection, imputation, and basic descriptives
             strategy = 2, #Strategy (see tutorial for explanation)
             ndayswindow=7, #only relevant when strategy = 3
             hrs.del.start = 0, # Only relevant when strategy = 2. How many HOURS need to be ignored at the START of the measurement?
             hrs.del.end = 0, # Only relevant when strategy = 2. How many HOURS need to be ignored at the END of the measurement?
             maxdur = 9, # How many DAYS of measurement do you maximumally expect?
             includedaycrit = 16, # number of minimum valid hours in a day to attempt physical activity analysis
             M5L5res = 10, #resolution in minutes of M5 and L5 calculation
             winhr = c(5,10), # size of M5 and L5 (5 hours by default)
             
             qlevels = c(c(1380/1440),c(1410/1440)), #quantiles to calculate, set value at c() if you do not want quantiles
             qwindow=c(0,24), #window over which to calculate quantiles
             ilevels = c(seq(0,400,by=50),8000), #acceleration values (metric ENMO) from which a frequency distribution needs to be derived, set value at c() if you do not want quantiles
             iglevels = TRUE, # intensitygradient levels
             mvpathreshold =c(100), #MVPA (moderate and vigorous physical activity threshold
             bout.metric = 5,
             closedbout=TRUE,
             IVIS_windowsize_minutes = 60,
             IVIS_epochsize_seconds = 3600,
             IVIS.activity.metric = 2,
             #-------------------------------
             # Part 3 parameters:
             #-------------------------------
             # Key functions: Sleep detection
             timethreshold= c(5), #10
             anglethreshold=5,
             ignorenonwear = TRUE, # if TRUE non-wear is not detected as sleep (if FALSE then it will work with imputed data)
             constrain2range = TRUE,
             do.part3.pdf = TRUE,
             #-------------------------------
             # Part 4 parameters:
             #-------------------------------
             # Key functions: Integrating sleep log (if available) with sleep detection, storing day and person specific summaries of sleep
             excludefirstlast = TRUE, # Exclude first and last night for sleep analysis?
             includenightcrit = 16, # number of minimum valid hours in a day to attempt sleep analysis
             def.noc.sleep = c(1),
             # If sleep log is available:
             loglocation= loglocation, # full directory and name of the log (if available, otherwise leave value as c() )
             outliers.only = TRUE,
             criterror = 4,
             relyonguider = FALSE,
             sleeplogidnum = TRUE, # Is the participant in the sleep log stored as a number (TRUE) or as a character (FALSE)
             colid=1, #colomn in which the participant id or filename is stored
             coln1=2, #column number for first day
             do.visual = TRUE,
             nnights = 9, #number of nights in the sleep log
             
             #-----------------------------------
             # Report generation
             #-------------------------------
             # Key functions: Generating reports based on meta-data
             visualreport=FALSE,
             dofirstpage = FALSE, #first page of pdf-report with simple summary histograms
             viewingwindow=1) #viewingwindow of visual report: 1 centres at day and 2 centers at night


