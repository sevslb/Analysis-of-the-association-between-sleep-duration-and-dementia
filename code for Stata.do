/*****************************************************************************************************************************/
/************************************************Stata code*****************************************************************/
/*****************************************************************************************************************************/

/*****************************************************************************************************************************/
/****************descriptive table for age 50 and repeated for age 60, 70, and accelerometer data ***************/
/*****************************************************************************************************************************/

recode esmoke_50y (1/2=0) (3=1), gen (currsmk_50y)
recode class_fvg_50y (0=0) (1/2=1), gen (dailfvg_50y)
recode class_alc_50y (0=0) (1=1) (2=0), gen (moddrink_50y)
gen obese_50y=1 if class_bmi_50y==4
replace obese_50y=0 if class_bmi_50y!=4
tab sex slphrs_3c_50y if  select_50==1, col chi2
tab ethn_ds slphrs_3c_50y if select_50==1, col chi2
tab low_edu slphrs_3c_50y if select_50==1, col chi2
tab marcoh_50y slphrs_3c_50y if select_50==1, col chi2
tab moddrink_50y slphrs_3c_50y if select_50==1, col chi2
tab currsmk_50y slphrs_3c_50y if select_50==1, col chi2
bys slphrs_3c_50y:sum modvighrs_50y if select_50==1
reg modvighrs_50y i.slphrs_3c_50y if select_50==1
test (7.slphrs_3c_50y = 0)  (8.slphrs_3c_50y = 0)
tab dailfvg_50y slphrs_3c_50y if select_50==1, col chi2
tab obese_50y slphrs_3c_50y if select_50==1, col chi2
tab diabetes_50y slphrs_3c_50y if select_50==1, col chi2
tab hypert_50y slphrs_3c_50y if select_50==1, col chi2
tab cvd_50y slphrs_3c_50y if select_50==1, col chi2
tab ghqdepg_50y slphrs_3c_50y if select_50==1, col chi2
tab cnsdrg_50y slphrs_3c_50y if select_50==1, col chi2
tab mentaldis_b65 slphrs_3c_50y if select_50==1, col chi2
tab sex demence if select_50==1, col chi2
tab ethn_ds demence if select_50==1, col chi2
tab low_edu demence if select_50==1, col chi2
tab marcoh_50y demence if select_50==1, col chi2
tab moddrink_50y demence if select_50==1, col chi2
tab currsmk_50y demence if select_50==1, col chi2
ttest modvighrs_50y if select_50==1, by(demence)
tab dailfvg_50y demence if select_50==1, col chi2
tab obese_50y demence if select_50==1, col chi2
tab diabetes_50y demence if select_50==1, col chi2
tab hypert_50y demence if select_50==1, col chi2
tab cvd_50y demence if select_50==1, col chi2
tab ghqdepg_50y demence if select_50==1, col chi2
tab cnsdrg_50y demence if select_50==1, col chi2
tab mentaldis_b65 demence if select_50==1, col chi2

/*************************************age 60y*************************************/

recode esmoke_60y (1/2=0) (3=1), gen (currsmk_60y)
recode class_fvg_60y (0=0) (1/2=1), gen (dailfvg_60y)
recode class_alc_60y (0=0) (1=1) (2=0), gen (moddrink_60y)
gen obese_60y=1 if class_bmi_60y==4
replace obese_60y=0 if class_bmi_60y!=4
tab sex slphrs_3c_60y if  select_60==1, col chi2
tab ethn_ds slphrs_3c_60y if select_60==1, col chi2
tab low_edu slphrs_3c_60y if select_60==1, col chi2
tab marcoh_60y slphrs_3c_60y if select_60==1, col chi2
tab moddrink_60y slphrs_3c_60y if select_60==1, col chi2
tab currsmk_60y slphrs_3c_60y if select_60==1, col chi2
bys slphrs_3c_60y:sum modvighrs_60y if select_60==1
reg modvighrs_60y i.slphrs_3c_60y if select_60==1
test (7.slphrs_3c_60y = 0)  (8.slphrs_3c_60y = 0)
tab dailfvg_60y slphrs_3c_60y if select_60==1, col chi2
tab obese_60y slphrs_3c_60y if select_60==1, col chi2
tab diabetes_60y slphrs_3c_60y if select_60==1, col chi2
tab hypert_60y slphrs_3c_60y if select_60==1, col chi2
tab cvd_60y slphrs_3c_60y if select_60==1, col chi2
tab ghqdepg_60y slphrs_3c_60y if select_60==1, col chi2
tab cnsdrg_60y slphrs_3c_60y if select_60==1, col chi2
tab mentaldis_b65 slphrs_3c_60y if select_60==1, col chi2

/*************************************age 70y*************************************/
recode esmoke_70y (1/2=0) (3=1), gen (currsmk_70y)
recode class_fvg_70y (0=0) (1/2=1), gen (dailfvg_70y)
recode class_alc_70y (0=0) (1=1) (2=0), gen (moddrink_70y)
gen obese_70y=1 if class_bmi_70y==4
replace obese_70y=0 if class_bmi_70y!=4
tab sex slphrs_3c_70y if  select_70==1, col chi2
tab ethn_ds slphrs_3c_70y if select_70==1, col chi2
tab low_edu slphrs_3c_70y if select_70==1, col chi2
tab marcoh_70y slphrs_3c_70y if select_70==1, col chi2
tab moddrink_70y slphrs_3c_70y if select_70==1, col chi2
tab currsmk_70y slphrs_3c_70y if select_70==1, col chi2
bys slphrs_3c_70y:sum modvighrs_70y if select_70==1
reg modvighrs_70y i.slphrs_3c_70y if select_70==1
test (7.slphrs_3c_70y = 0)  (8.slphrs_3c_70y = 0)
tab dailfvg_70y slphrs_3c_70y if select_70==1, col chi2
tab obese_70y slphrs_3c_70y if select_70==1, col chi2
tab diabetes_70y slphrs_3c_70y if select_70==1, col chi2
tab hypert_70y slphrs_3c_70y if select_70==1, col chi2
tab cvd_70y slphrs_3c_70y if select_70==1, col chi2
tab ghqdepg_70y slphrs_3c_70y if select_70==1, col chi2
tab cnsdrg_70y slphrs_3c_70y if select_70==1, col chi2
tab mentaldis_b65 slphrs_3c_70y if select_70==1, col chi2

/*************************************accelerometer data*************************************/
recode fesmoke_i (1/2=0) (3=1), gen (fcurrsmk)
recode fclass_fvg (0=0) (1/2=1), gen (fdailfvg)
recode fclass_alc (0=0) (1=1) (2=0), gen (fmoddrink)
gen fobese=1 if fclass_bmi==4
replace fobese=0 if fclass_bmi!=4
tab sex tert_timeslp if  fupacc!=., col chi2
tab ethn_ds tert_timeslp if fupacc!=., col chi2
tab low_edu tert_timeslp if fupacc!=., col chi2
tab fmarcoh tert_timeslp if fupacc!=., col chi2
tab fmoddrink tert_timeslp if fupacc!=., col chi2
tab fcurrsmk tert_timeslp if fupacc!=., col chi2
bys tert_timeslp:sum fmodvighrs if fupacc!=.
reg fmodvighrs i.tert_timeslp if fupacc!=.
test (2.tert_timeslp = 0)  (3.tert_timeslp = 0)
tab fdailfvg tert_timeslp if fupacc!=., col chi2
tab fobese tert_timeslp if fupacc!=., col chi2
tab fdiabetes tert_timeslp if fupacc!=., col chi2
tab fhypert tert_timeslp if fupacc!=., col chi2
tab fcvd tert_timeslp if fupacc!=., col chi2
tab fghqdepg_i tert_timeslp if fupacc!=., col chi2
tab fcnsdrg_i tert_timeslp if fupacc!=., col chi2
tab mentaldis_b65 tert_timeslp if fupacc!=., col chi2
bys tert_timeslp:sum fage if fupacc!=.
reg fage i.tert_timeslp if fupacc!=.
test (2.tert_timeslp = 0)  (3.tert_timeslp = 0)






/*****************************************************************************************************************************/
/*********************************************incidence rate***************************************************************/
/*****************************************************************************************************************************/

    
/*****50 y******/
glm demence  ib7.slphrs_3c_50y#c.fup50 , family(poisson) link(id) noconst
 
/*****60 y******/
	glm demence  ib7.slphrs_3c_60y#c.fup60 , family(poisson) link(id) noconst
  
/*****70 y******/
 glm demence  ib7.slphrs_3c_70y#c.fup70 , family(poisson) link(id) noconst
 	
/*****50-70 y******/

  gen fup_traj=(demence_date-phdate_traj)/365.25 if select_traj==1

  glm demence  ib7._traj_Group#c.fup_traj , family(poisson) link(id) noconst
 
 	
  /****************accelerometer**********/
     glm demence  ib7.tert_timeslp#c.fupacc , family(poisson) link(id) noconst


glm demence  ib7.slphrs_3c_50y#c.fup50 , family(poisson) link(id) noconst





/*****************************************************************************************************************************/
/**************************** Nelson-Aalen cumulative hazards of dementia**********************************/
/*****************************************************************************************************************************/
	
stset demence_date, failure (demence==1) id (stno) origin (dateob_c) enter (phdate_50y) scale(365.25)
sts graph, by (slphrs_3c_50y)
sts graph, cumhaz by(slphrs_3c_50y) ci
stphplot, by (slphrs_3c_50y) 

stset demence_date, failure (demence==1) id (stno) origin (dateob_c) enter (phdate_60y) scale(365.25)
sts graph, by (slphrs_3c_60y)
sts graph, cumhaz by(slphrs_3c_60y) 
stphplot, by (slphrs_3c_60y) 

stset demence_date if select_70==1, failure (demence==1) id (stno) origin (dateob_c) enter (phdate_70y) scale(365.25)
sts graph, by (slphrs_3c_70y)
sts graph, cumhaz by(slphrs_3c_70y) ci
stphplot, by (slphrs_3c_70y)



/*****************************************************************************************************************************/
/**********************************************Cox regression at 50 y****************************************************/
/*****************************************************************************************************************************/

stset demence_date, failure (demence==1) id (stno) origin (dateob_c) enter (phdate_50y) scale(365.25)
stcox ib7.slphrs_3c_50y, strata(cohob)
estat phtest, det /*schoenfeld residuals*/
stcox ib7.slphrs_3c_50y i.sex i.ethn_ds i.edu marcoh_50y, strata(cohob) /*Model 1*/
stcox ib7.slphrs_3c_50y i.sex i.ethn_ds i.edu marcoh_50y ib1.class_alc_50y ib1.esmoke_50y modvighrs_50y ib0.class_fvg_50y , strata(cohob)  /*Model 2*/
stcox ib7.slphrs_3c_50y i.sex i.ethn_ds i.edu marcoh_50y ib2.class_bmi_50y diabetes_50y hypert_50y cvd_50y ghqdepg_50y cnsdrg_50y, strata(cohob) /*Model 3*/
stcox ib7.slphrs_3c_50y i.sex i.ethn_ds i.edu marcoh_50y ib1.class_alc_50y ib1.esmoke_50y modvighrs_50y ib0.class_fvg_50y ib2.class_bmi_50y diabetes_50y hypert_50y cvd_50y ghqdepg_50y cnsdrg_50y, strata(cohob)  /*Model 4*/

stcox ib7.slphrs_3c_50y##i.sex i.ethn_ds i.edu marcoh_50y ib1.class_alc_50y ib1.esmoke_50y modvighrs_50y ib0.class_fvg_50y ib2.class_bmi_50y diabetes_50y hypert_50y cvd_50y ghqdepg_50y cnsdrg_50y, strata(cohob)
testparm slphrs_3c_50y#sex /*interaction with sex*/

/****************************************no mental disorder************************************************************/

stset demence_date if mentaldis_b65==0, failure (demence==1) id (stno) origin (dateob_c) enter (phdate_50y) scale(365.25)
stcox ib7.slphrs_3c_50y i.sex i.ethn_ds i.edu marcoh_50y ib1.class_alc_50y ib1.esmoke_50y modvighrs_50y ib0.class_fvg_50y ib2.class_bmi_50y diabetes_50y hypert_50y cvd_50y ghqdepg_50y cnsdrg_50y, strata(cohob)

/****************************************************IPW******************************************************************/

stset demence_date [pw=weight_50], failure (demence==1) id (stno) origin (dateob_c) enter (phdate_50y) scale(365.25)
stcox ib7.slphrs_3c_50y i.sex i.ethn_ds i.edu marcoh_50y ib1.class_alc_50y ib1.esmoke_50y modvighrs_50y ib0.class_fvg_50y ib2.class_bmi_50y diabetes_50y hypert_50y cvd_50y ghqdepg_50y cnsdrg_50y, strata(cohob)

/******************************************analyses adjusted for apoe*************************************************/

stcox ib7.slphrs_3c_50y i.sex i.ethn_ds i.edu marcoh_50y i.ethn_ds i.edu marcoh_50y ib1.class_alc_50y ib1.esmoke_50y modvighrs_50y ib0.class_fvg_50y ib2.class_bmi_50y diabetes_50y hypert_50y cvd_50y ghqdepg_50y cnsdrg_50y if apoe4!=., strata(cohob) /*in apoe population*/
stcox ib7.slphrs_3c_50y i.sex i.apoe4 i.ethn_ds i.edu marcoh_50y ib1.class_alc_50y ib1.esmoke_50y modvighrs_50y ib0.class_fvg_50y ib2.class_bmi_50y diabetes_50y hypert_50y cvd_50y ghqdepg_50y cnsdrg_50y, strata(cohob) /*adjusted for apoe */

/***************************************Alzheimer's disease type of dementia**************************************/
stset demence_date, failure (dem_ad==1) id (stno) origin (dateob_c) enter (phdate_50y) scale(365.25)
tab slphrs_3c_50y dem_ad if select_50==1
stcox ib7.slphrs_3c_50y i.sex i.ethn_ds i.edu marcoh_50y ib1.class_alc_50y ib1.esmoke_50y modvighrs_50y ib0.class_fvg_50y ib2.class_bmi_50y diabetes_50y hypert_50y cvd_50y ghqdepg_50y cnsdrg_50y, strata(cohob)




/*****************************************************************************************************************************/
/**********************************************Cox regression at 60 y****************************************************/
/*****************************************************************************************************************************/

stset demence_date, failure (demence==1) id (stno) origin (dateob_c) enter (phdate_60y) scale(365.25)
stcox ib7.slphrs_3c_60y, strata(cohob)
estat phtest, det /*schoenfeld residuals*/
stcox ib7.slphrs_3c_60y i.sex i.ethn_ds i.edu marcoh_60y, strata(cohob) /*Model 1*/
stcox ib7.slphrs_3c_60y i.sex i.ethn_ds i.edu marcoh_60y ib1.class_alc_60y ib1.esmoke_60y modvighrs_60y ib0.class_fvg_60y , strata(cohob)  /*Model 2*/
stcox ib7.slphrs_3c_60y i.sex i.ethn_ds i.edu marcoh_60y ib2.class_bmi_60y diabetes_60y hypert_60y cvd_60y ghqdepg_60y cnsdrg_60y, strata(cohob) /*Model 3*/
stcox ib7.slphrs_3c_60y i.sex i.ethn_ds i.edu marcoh_60y ib1.class_alc_60y ib1.esmoke_60y modvighrs_60y ib0.class_fvg_60y ib2.class_bmi_60y diabetes_60y hypert_60y cvd_60y ghqdepg_60y cnsdrg_60y, strata(cohob)  /*Model 4*/

stcox ib7.slphrs_3c_60y##i.sex i.ethn_ds i.edu marcoh_60y ib1.class_alc_60y ib1.esmoke_60y modvighrs_60y ib0.class_fvg_60y ib2.class_bmi_60y diabetes_60y hypert_60y cvd_60y ghqdepg_60y cnsdrg_60y, strata(cohob)
testparm slphrs_3c_60y#sex /*interaction with sex*/

/****************************************no mental disorder************************************************************/

stset demence_date if mentaldis_b65==0, failure (demence==1) id (stno) origin (dateob_c) enter (phdate_60y) scale(365.25)
stcox ib7.slphrs_3c_60y i.sex i.ethn_ds i.edu marcoh_60y ib1.class_alc_60y ib1.esmoke_60y modvighrs_60y ib0.class_fvg_60y ib2.class_bmi_60y diabetes_60y hypert_60y cvd_60y ghqdepg_60y cnsdrg_60y, strata(cohob)

/****************************************************IPW******************************************************************/

stset demence_date [pw=weight_50], failure (demence==1) id (stno) origin (dateob_c) enter (phdate_60y) scale(365.25)
stcox ib7.slphrs_3c_60y i.sex i.ethn_ds i.edu marcoh_60y ib1.class_alc_60y ib1.esmoke_60y modvighrs_60y ib0.class_fvg_60y ib2.class_bmi_60y diabetes_60y hypert_60y cvd_60y ghqdepg_60y cnsdrg_60y, strata(cohob)

/******************************************analyses adjusted for apoe*************************************************/

stcox ib7.slphrs_3c_60y i.sex i.ethn_ds i.edu marcoh_60y i.ethn_ds i.edu marcoh_60y ib1.class_alc_60y ib1.esmoke_60y modvighrs_60y ib0.class_fvg_60y ib2.class_bmi_60y diabetes_60y hypert_60y cvd_60y ghqdepg_60y cnsdrg_60y if apoe4!=., strata(cohob) /*in apoe population*/
stcox ib7.slphrs_3c_60y i.sex i.apoe4 i.ethn_ds i.edu marcoh_60y ib1.class_alc_60y ib1.esmoke_60y modvighrs_60y ib0.class_fvg_60y ib2.class_bmi_60y diabetes_60y hypert_60y cvd_60y ghqdepg_60y cnsdrg_60y, strata(cohob) /*adjusted for apoe */

/***************************************Alzheimer's disease type of dementia**************************************/
stset demence_date, failure (dem_ad==1) id (stno) origin (dateob_c) enter (phdate_60y) scale(365.25)
tab slphrs_3c_60y dem_ad if select_50==1
stcox ib7.slphrs_3c_60y i.sex i.ethn_ds i.edu marcoh_60y ib1.class_alc_60y ib1.esmoke_60y modvighrs_60y ib0.class_fvg_60y ib2.class_bmi_60y diabetes_60y hypert_60y cvd_60y ghqdepg_60y cnsdrg_60y, strata(cohob)




/*****************************************************************************************************************************/
/**********************************************Cox regression at 70 y****************************************************/
/*****************************************************************************************************************************/

stset demence_date, failure (demence==1) id (stno) origin (dateob_c) enter (phdate_70y) scale(365.25)
stcox ib7.slphrs_3c_70y, strata(cohob)
estat phtest, det /*schoenfeld residuals*/
stcox ib7.slphrs_3c_70y i.sex i.ethn_ds i.edu marcoh_70y, strata(cohob) /*Model 1*/
stcox ib7.slphrs_3c_70y i.sex i.ethn_ds i.edu marcoh_70y ib1.class_alc_70y ib1.esmoke_70y modvighrs_70y ib0.class_fvg_70y , strata(cohob)  /*Model 2*/
stcox ib7.slphrs_3c_70y i.sex i.ethn_ds i.edu marcoh_70y ib2.class_bmi_70y diabetes_70y hypert_70y cvd_70y ghqdepg_70y cnsdrg_70y, strata(cohob) /*Model 3*/
stcox ib7.slphrs_3c_70y i.sex i.ethn_ds i.edu marcoh_70y ib1.class_alc_70y ib1.esmoke_70y modvighrs_70y ib0.class_fvg_70y ib2.class_bmi_70y diabetes_70y hypert_70y cvd_70y ghqdepg_70y cnsdrg_70y, strata(cohob)  /*Model 4*/

stcox ib7.slphrs_3c_70y##i.sex i.ethn_ds i.edu marcoh_70y ib1.class_alc_70y ib1.esmoke_70y modvighrs_70y ib0.class_fvg_70y ib2.class_bmi_70y diabetes_70y hypert_70y cvd_70y ghqdepg_70y cnsdrg_70y, strata(cohob)
testparm slphrs_3c_70y#sex /*interaction with sex*/

/****************************************no mental disorder************************************************************/

stset demence_date if mentaldis_b65==0, failure (demence==1) id (stno) origin (dateob_c) enter (phdate_70y) scale(365.25)
stcox ib7.slphrs_3c_70y i.sex i.ethn_ds i.edu marcoh_70y ib1.class_alc_70y ib1.esmoke_70y modvighrs_70y ib0.class_fvg_70y ib2.class_bmi_70y diabetes_70y hypert_70y cvd_70y ghqdepg_70y cnsdrg_70y, strata(cohob)

/****************************************************IPW******************************************************************/

stset demence_date [pw=weight_50], failure (demence==1) id (stno) origin (dateob_c) enter (phdate_70y) scale(365.25)
stcox ib7.slphrs_3c_70y i.sex i.ethn_ds i.edu marcoh_70y ib1.class_alc_70y ib1.esmoke_70y modvighrs_70y ib0.class_fvg_70y ib2.class_bmi_70y diabetes_70y hypert_70y cvd_70y ghqdepg_70y cnsdrg_70y, strata(cohob)

/******************************************analyses adjusted for apoe*************************************************/

stcox ib7.slphrs_3c_70y i.sex i.ethn_ds i.edu marcoh_70y i.ethn_ds i.edu marcoh_70y ib1.class_alc_70y ib1.esmoke_70y modvighrs_70y ib0.class_fvg_70y ib2.class_bmi_70y diabetes_70y hypert_70y cvd_70y ghqdepg_70y cnsdrg_70y if apoe4!=., strata(cohob) /*in apoe population*/
stcox ib7.slphrs_3c_70y i.sex i.apoe4 i.ethn_ds i.edu marcoh_70y ib1.class_alc_70y ib1.esmoke_70y modvighrs_70y ib0.class_fvg_70y ib2.class_bmi_70y diabetes_70y hypert_70y cvd_70y ghqdepg_70y cnsdrg_70y, strata(cohob) /*adjusted for apoe */

/***************************************Alzheimer's disease type of dementia**************************************/
stset demence_date, failure (dem_ad==1) id (stno) origin (dateob_c) enter (phdate_70y) scale(365.25)
tab slphrs_3c_70y dem_ad if select_50==1
stcox ib7.slphrs_3c_70y i.sex i.ethn_ds i.edu marcoh_70y ib1.class_alc_70y ib1.esmoke_70y modvighrs_70y ib0.class_fvg_70y ib2.class_bmi_70y diabetes_70y hypert_70y cvd_70y ghqdepg_70y cnsdrg_70y, strata(cohob)




/*****************************************************************************************************************************/
/****************************trajectories of sleep duration between age 50 and 70 y***********************************/
/*****************************************************************************************************************************/
net from http://www.andrew.cmu.edu/user/bjones/traj
net install traj, force
egen nmiss_age=rowmiss(slphrs_3c_50y slphrs_3c_60y slphrs_3c_70y)	
keep if demence_date>phdate_traj & nmiss_age<2

/*repeated for order 11111, 111111, 1111111, and then for 111112, 111122, 111222, 112222, 122222, and 222222*/

traj, var(slphrs_3c_50y slphrs_3c_60y slphrs_3c_70y) indep(age_50y age_60y age_70y) model(cnorm) min(6) max(8) order(1 1 1 1 1)
trajplot, xtitle(Age) ytitle(sleep hours) 
 sum _traj_ProbG1 if _traj_Group ==1
sum _traj_ProbG2 if _traj_Group ==2
sum _traj_ProbG3 if _traj_Group ==3
sum _traj_ProbG4 if _traj_Group ==4
sum _traj_ProbG5 if _traj_Group ==5

/************************************************best model retained****************************************************/
 traj, var(slphrs_3c_50y slphrs_3c_60y slphrs_3c_70y) indep(age_50y age_60y age_70y) model(cnorm) min(6) max(8) order(1 1 1 2 2 2)
trajplot, xtitle(Age) ytitle(sleep hours) 

/**********************************************Cox regression trajectories 50  70 y********************************/

bys _traj_Group: sum slphrs_3c_50y slphrs_3c_60y slphrs_3c_70y if demence_date>phdate_traj

stset demence_date, failure (demence==1) id (stno) origin (dateob_c) enter (phdate_traj) scale(365.25)
stcox ib3._traj_Group , strata(cohob)
estat phtest, det
stcox ib3._traj_Group i.sex i.ethn_ds i.edu marcoh_traj, strata(cohob) /*Model 1*/
stcox ib3._traj_Group i.sex i.ethn_ds i.edu marcoh_traj ib1.class_alc_traj ib1.esmoke_traj modvighrs_traj ib0.class_fvg_traj , strata(cohob) /*Model 2*/
stcox ib3._traj_Group i.sex i.ethn_ds i.edu marcoh_traj ib2.class_bmi_traj diabetes_traj hypert_traj cvd_traj ghqdepg_traj cnsdrg_traj, strata(cohob) /*Model 3*/
stcox ib3._traj_Group i.sex i.ethn_ds i.edu marcoh_traj ib1.class_alc_traj ib1.esmoke_traj modvighrs_traj ib0.class_fvg_traj ib2.class_bmi_traj diabetes_traj hypert_traj cvd_traj ghqdepg_traj cnsdrg_traj, strata(cohob) /*Model 4*/

/****************************************no mental disorder************************************************************/
stset demence_date if mentaldis_b65==0, failure (demence==1) id (stno) origin (dateob_c) enter (phdate_traj) scale(365.25)
stcox ib3._traj_Group i.sex i.ethn_ds i.edu marcoh_traj ib1.class_alc_traj ib1.esmoke_traj modvighrs_traj ib0.class_fvg_traj ib2.class_bmi_traj diabetes_traj hypert_traj cvd_traj ghqdepg_traj cnsdrg_traj, strata(cohob)

/****************************************************IPW******************************************************************/
stset demence_date [pw=weight_506070], failure (demence==1) id (stno) origin (dateob_c) enter (phdate_traj) scale(365.25)
stcox ib3._traj_Group i.sex i.ethn_ds i.edu marcoh_traj ib1.class_alc_traj ib1.esmoke_traj modvighrs_traj ib0.class_fvg_traj ib2.class_bmi_traj diabetes_traj hypert_traj cvd_traj ghqdepg_traj cnsdrg_traj, strata(cohob)

/******************************************analyses adjusted for apoe*************************************************/
  stset demence_date if apoe4!=., failure (demence==1) id (stno) origin (dateob_c) enter (phdate_traj) scale(365.25)

stcox ib3._traj_Group i.sex i.ethn_ds i.edu marcoh_traj ib1.class_alc_traj ib1.esmoke_traj modvighrs_traj ib0.class_fvg_traj ib2.class_bmi_traj diabetes_traj hypert_traj cvd_traj ghqdepg_traj cnsdrg_traj if apoe4!=., strata(cohob)
stcox ib3._traj_Group i.apoe4 i.sex i.ethn_ds i.edu marcoh_traj ib1.class_alc_traj ib1.esmoke_traj modvighrs_traj ib0.class_fvg_traj ib2.class_bmi_traj diabetes_traj hypert_traj cvd_traj ghqdepg_traj cnsdrg_traj, strata(cohob)

/***************************************Alzheimer's disease type of dementia**************************************/
stset demence_date, failure (dem_ad==1) id (stno) origin (dateob_c) enter (phdate_traj) scale(365.25)
tab _traj_Group dem_ad if select_traj==1 
stcox ib3._traj_Group i.sex i.ethn_ds i.edu marcoh_traj ib1.class_alc_traj ib1.esmoke_traj modvighrs_traj ib0.class_fvg_traj ib2.class_bmi_traj diabetes_traj hypert_traj cvd_traj ghqdepg_traj cnsdrg_traj, strata(cohob)





/****************************************************************************************************************************/
/**********************************************Cox regression trajectories 50  70 y**************************************/
/*****************************************************************************************************************************/

stset demence_date if selectp11cov==1  & exclusion==0, failure (demence==1) id (stno) origin (dateob_c) enter (fphdate) scale(365.25)
stcox  ib2.tert_timeslp i.sex i.ethn_ds c.edu_imp fmarcoh  , strata(cohob) /*Model 1*/
stcox  ib2.tert_timeslp i.sex i.ethn_ds c.edu_imp fmarcoh   ib1.fclass_alc ib1.fesmoke_i fmodvighrs ib0.fclass_fvg , strata(cohob) /*Model 2*/
stcox ib2.tert_timeslp i.sex i.ethn_ds c.edu_imp fmarcoh ib2.fclass_bmi fdiabetes fhypert fcvd fghqdepg_i fcnsdrg_i  , strata(cohob) /*Model 3*/
stcox  ib2.tert_timeslp i.sex i.ethn_ds c.edu_imp fmarcoh ib1.fclass_alc ib1.fesmoke_i fmodvighrs ib0.fclass_fvg   ib2.fclass_bmi fdiabetes fhypert fcvd fghqdepg_i fcnsdrg_i , strata(cohob) /*Model 4*/

/****************************************************IPW******************************************************************/
stset demence_date [pw=weight_acc] if selectp11sleepdur==1 & exclusion==0, failure (demence==1) id (stno) origin (dateob_c) enter (fphdate) scale(365.25)
stcox  ib2.tert_timeslp i.sex i.ethn_ds c.edu_imp fmarcoh ib1.fclass_alc ib1.fesmoke_i fmodvighrs ib0.fclass_fvg   ib2.fclass_bmi fdiabetes fhypert fcvd fghqdepg_i fcnsdrg_i , strata(cohob)

/******************************************analyses adjusted for apoe*************************************************/
stset demence_date if selectp11cov==1  & exclusion==0, failure (demence==1) id (stno) origin (dateob_c) enter (fphdate) scale(365.25)
tab tert_timeslp demence if selectp11cov==1  & exclusion==0 & apoe4!=.
stcox  ib2.tert_timeslp i.sex i.ethn_ds c.edu_imp fmarcoh ib1.fclass_alc ib1.fesmoke_i fmodvighrs ib0.fclass_fvg   ib2.fclass_bmi fdiabetes fhypert fcvd fghqdepg_i fcnsdrg_i if apoe4!=., strata(cohob)
stcox  ib2.tert_timeslp i.apoe4 i.sex i.ethn_ds c.edu_imp fmarcoh ib1.fclass_alc ib1.fesmoke_i fmodvighrs ib0.fclass_fvg   ib2.fclass_bmi fdiabetes fhypert fcvd fghqdepg_i fcnsdrg_i if apoe4!=., strata(cohob)

/***************************************Alzheimer's disease type of dementia**************************************/

stset demence_date if selectp11cov==1  & exclusion==0, failure (dem_ad==1) id (stno) origin (dateob_c) enter (fphdate) scale(365.25)
tab tert_timeslp dem_ad if selectp11cov==1  & exclusion==0 & demence_date>fphdate, row 
stcox  ib2.tert_timeslp i.sex i.ethn_ds c.edu_imp fmarcoh ib1.fclass_alc ib1.fesmoke_i fmodvighrs ib0.fclass_fvg   ib2.fclass_bmi fdiabetes fhypert fcvd fghqdepg_i fcnsdrg_i , strata(cohob)





/********************************************************************************************************************************/
/********************************************Splines for accelerometer data ************************************************/
/*******************************************************************************************************************************/

mkspline ftimeslp_hrs_sp = ftimeslp_hrs_rnd if selectp11cov==1  & exclusion==0 & demence_date>fphdate & ftimeslp_hrs_rnd>3.8 & ftimeslp_hrs_rnd<9,  cubic displayknots
stset demence_date if selectp11cov==1  & exclusion==0, failure (demence==1) id (stno) origin (dateob_c) enter (fphdate) scale(365.25)
stcox  i.sex i.ethn_ds c.edu fmarcoh ib1.fclass_alc ib1.fesmoke_i fmodvighrs ib0.fclass_fvg   ib2.fclass_bmi fdiabetes fhypert fcvd fghqdepg_i fcnsdrg_i  ftimeslp_hrs_sp*, strata(cohob)
 testparm ftimeslp_hrs_sp2 ftimeslp_hrs_sp3 ftimeslp_hrs_sp4
levelsof ftimeslp_hrs_rnd if inrange(ftimeslp_hrs_rnd,  3.9, 8.9 )
xblc ftimeslp_hrs_sp1 - ftimeslp_hrs_sp4, covname(ftimeslp_hrs_rnd) at(`r(levels)') eform reference(7) generate(syst hr lb ub)
* graph the result
twoway (line hr syst, sort) (line lb ub syst, sort lc(black black) lp(- -)), ///
    legend(off) yscale(log) ylab( 0.25 0.5 0.75 1 2 5 10) xlab(4(1)9) ///
    xtitle(Objective measure of sleep duration (hours)) ytitle(Hazard ratio for dementia) yline(1)

/********************************************************************IPW***************************************************/

stset demence_date [pw=weight_acc] if selectp11sleepdur==1 & exclusion==0, failure (demence==1) id (stno) origin (dateob_c) enter (fphdate) scale(365.25)
stcox  i.sex i.ethn_ds c.edu fmarcoh ib1.fclass_alc ib1.fesmoke_i fmodvighrs ib0.fclass_fvg   ib2.fclass_bmi fdiabetes fhypert fcvd fghqdepg_i fcnsdrg_i  ftimeslp_hrs_sp*, strata(cohob)
testparm ftimeslp_hrs_sp2 ftimeslp_hrs_sp3 ftimeslp_hrs_sp4
drop syst hr lb ub
levelsof ftimeslp_hrs_rnd if inrange(ftimeslp_hrs_rnd ,  3.9, 8.9 )
xblc ftimeslp_hrs_sp1 - ftimeslp_hrs_sp4, covname(ftimeslp_hrs_rnd) at(`r(levels)') eform reference(7) generate(syst hr lb ub)
* graph the result
twoway (line hr syst, sort) (line lb ub syst, sort lc(black black) lp(- -)), ///
    legend(off) yscale(log) ylab( 0.25 0.5 1 2 5 10) xlab(4(1)9) ///
    xtitle(Objective measure of sleep duration (hours)) ytitle(Hazard ratio for dementia) yline(1)	
