# BIOSCI220, semester 1, 2021.

## Copyright

All files are (C)Copyright by the University of Auckland unless explicitly stated otherwise. Distrubution without prior written permission is prohibited.


**This repository contains the materials for Module 1 (weeks 1 to 6) only**

### Course book [here](https://stats-uoa.github.io/BIOSCI220/)

### Slides [here](https://biosci220.netlify.app/)

## Teaching team

 + Module 1: Charlotte M. Jones-Todd [c.jonestodd@auckland.ac.nz](c.jonestodd@auckland.ac.nz)

 + Module 2: Nobuto Takeuchi [nobuto.takeuchi@auckland.ac.nz](nobuto.takeuchi@auckland.ac.nz)

 + Module 3: Nicholas Matzke [n.matzke@auckland.ac.nz](n.matzke@auckland.ac.nz)

## Timetable

+ **Lecture** in 405-460 Monday 9–10am
+ **Labs** in 106-014
  - Monday 2–5pm
  - Tuesday 10am–1pm
  - Thursday 10am–1pm
  - Friday 10am–1pm

## Assessment

+ **Lab exercises**  60% Total (11 labs in Total; 6 for Module 1, weeks 1--6)
  - Due weekly by 5pm
+ **Weekly quizzes** 10% Total (11 quizzes in Total; 5 for Module 1, weeks 2--6)
  - Due weekly by 5pm
+ **Final Exam** 30%
+ **Extra Credit** Keep an eye out throughout the course

## Key Topics

### Module I. Data Exploration and Statistical Inference

+ Data wrangling and visualization. Introduction to R, importing and plotting data, R packages
+ Experimental design and introduction to linear models
+ Linear models with multiple variables; interpretation; ANOVA
+ Interpretation of p-values; model critique and model comparison
+ Large data, exploratory data analysis, introduction to clustering and dimensionality reduction

### Module II. Biological modelling

+ Forward modelling in general; what we can learn from models of biological processes; introduction to
growth models
+ The SIR model (Susceptible-Infectious-Recovered) as an example model highly relevant to medicine
(epidemiology, COVID-19), similar to ecology population models, relevant to evolution (birth-death
processes)
+ Modelling the evolution of virulence

### Module III. Model-based inference, and critical thinking about models

+ Model-based inference, parameter inference with Maximum Likelihood, fitting curvilinear models
+ Statistical model comparison, using the principle of parsimony to penalise more complex models (with
AIC). Fitting SIR models to real-world SARS-CoV-2 data.
+ The crucial role of models in science & society; critical thinking about models, inference, and public policy.


## Outline, Module 1

### Motivation

+ *Given a dataset what question might we want to answer?* Given a dataset students will be asked to explore it and carry out some basic EDA; they will be expected to articulate what "structure" in the data they want to investigate. 

+ *Given a question (e.g., Who grows the best pumpkins?) how might we investigate this and what tools we need to answer the questions?* So given a vague question (about pumpkins say) we will build on a student's common knowledge to then introduce statistical terms and issues (e.g., variation, bias, noise etc.) 

### Weekly themes

| Week  | Theme  | Required reading  |
|---    |---             |---      |  
|  1 | Course intro/lecturers/goals/ intro to R |  N/A  |
|  2 | Data exploration and visualization (what questions do we have given the data)  | Chapter 5: Indigenous Data and Policy in Aotearoa New Zealand, Andrew Sporle, Maui Hudson and Kiri West. Indigenous Data Sovereignty and Policy. Edited By Maggie Walter, Tahu Kukutai, Stephanie Russo Carroll, Desi Rodriguez-Lonebear |
|  3 | Statistical toolbox (what tools to we have to answer our questions) |  [Wilkinson, E. B., Grabowski, J. H., Sherwood, G. D., and Yund, O. Y. (2015) Influence of predator identity on the strength of predator avoidance responses in lobsters. Journal of Experimental Marine Biology and Ecology, 465, 107–112.](https://github.com/STATS-UOA/BIOSCI220/blob/master/reading/required/lobster_predator.pdf) | 	
|  4 | Validation (how can we trust our answers)  | [Ronald L. Wasserstein & Nicole A. Lazar (2016) The ASA Statement on p-Values: Context, Process, and Purpose, The American Statistician, 70:2, 129-133.](https://github.com/STATS-UOA/BIOSCI220/blob/master/reading/required/ASA_pvalue.pdf) \& [Replication power and regression to the mean by Leonhard Held,  Samuel Pawel, and  Simon Schwab. Significance December, 2020.](https://github.com/STATS-UOA/BIOSCI220/blob/master/reading/required/replication_power_pvalue.pdf)|
|  5 | What if we have a specific question (collecting data to answer a question) | [Ramasamy MN, Minassian AM, Ewer KJ, et al. Safety and immunogenicity of ChAdOx1 nCoV-19 vaccine administered in a prime-boost regimen in young and old adults (COV002): a single-blind, randomised, controlled, phase 2/3 trial. Lancet. 2020; S0140-6736(20)32466-1](https://github.com/STATS-UOA/BIOSCI220/blob/master/reading/required/AstraZeneca_covid_trial.pdf) |
|  6 | Statistical toolbox+ (what tools to we have to answer our question)  | [Park, Jong-Lyul, Jong Hwan Kim, Eunhye Seo, Dong Hyuck Bae, Seon-Young Kim, Han-Chul Lee, Kwang-Man Woo, and Yong Sung Kim. "Identification and evaluation of age-correlated DNA methylation markers for forensic use." Forensic Science International: Genetics 23 (2016): 64-70.](https://github.com/STATS-UOA/BIOSCI220/blob/master/reading/required/DNA_methylation_markers.pdf)  |


### Learning Objectives

#### Week 1

+ Define the difference between R and RStudio
+ Distinguish between different data types (e.g., integers, characters, binary, numerical)
+ Explain what an R function is; describe what an argument to an R function is
+ Explain what an R package is; distinguish between the functions **install.packages()** and **library()**
+ Use the appropriate R function to read in a `.csv` data; carry out basic exploratory data analysis using in-built R functions

#### Week 2

+ Define data sovereignty and explain this in relation to a researcher's obligation when collecting, displaying, and analysing data
+ Create and communicate informative data visualisations using R
+ Discuss and critique data visualisations
+ Carry out and interpret the outputs of basic exploratory data analysis using in-built R functions


#### Week 3

+ Formulate a question/hypothesis to investigate based on the given data
+ Use an appropriate visualization or other summary to motivate and communicate your hypothesis
+ Explain and discuss the limitations of different hypothesis testing techniques (e.g., single and two-sample t-tests, ANOVA, randomisation test)
+ Explain and discuss the limitations of statistical linear regression
  - with a single continuous explanatory variable
  - with a multiple continuous explanatory variables
  - with a single factor explanatory variable
  - with a multiple explanatory variables, both continuous and factor
+ In each of the situations above interpret and communicate the estimated coefficients to both a statistical and non-statistical audience 

#### Week 4

+ Explain what a p-value represents (e.g., in the context of hypothesis testing \& model selection)
+ Perform, interpret, and critique hypothesis tests (e.g., single and two-sample t-tests, ANOVA, randomisation test) using R
+ Perform, interpret, and critique statistical regression using R

#### Week 5

+ Formulate a hypothesis to investigate based on a given question
+ Explain the relevance of randomisation, replication, and blocking in the context of experimental design
+ Design an effective experiment adhering to the three fundamental principles: randomisation, replication, blocking
+ Use an appropriate statistical technique to test your hypothesis/answer your question

#### Week 6

+ Analyse and interpret multivariate data using an appropriate method (e.g., Principal Component Analysis, Cluster Analysis)
+ Interpret and communicate, to both a statistical and non-statistical audience, multivariate data techniques

### Assessment

 + The weekly quizzes will begin in week 2; for module 1, therefore, there will be 5 quizzes (weeks 2--6) Each week the quizzes will be set based on the required reading; the quizzes will consist of 10 MQCs, you will have two attempts (no time limit) and the best score will count.

 + The weekly labs for Module 1 will begin in week 1 and end in week 6.
 + Each lab will be based on a particular dataset and roughly be split into three components:
   - Some MCQs based on EDA of the data
   - A longer form answer (e.g., CANVAS Discussion answer and/or CANVAS file upload) based on your own analysis of the data.
   - A peer review/discussion element


### Datasets

+ [DNA methylation markers](https://github.com/STATS-UOA/BIOSCI220/blob/master/data/DNA_forensic.csv)
+ [Predator avoidance responses in lobsters](https://github.com/STATS-UOA/BIOSCI220/blob/master/data/lobster.csv)
+ Invasive dicots and herbicide
+ AstraZeneca vaccine trails
