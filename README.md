# BIOSCI220, semester 1, 2021.

**This repository contains the materials for Module 1 (weeks 1 to 6) only**

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

+ **Lab exercises** 5% x 12 = 60% Total (5% per week; 6 x 5% = 30% Module 1)
  - Due weekly by 5pm
+ **Weekly quizzes** 10% Total (11 quizzes in Total; 5 for Module 1, weeks 2--6)
  - Due weekly by 5pm
+ ** Final Exam** 30%

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

+ Model-based inference, parameter inference with Maximum Likelihood, ftting curvilinear models
+ Statistical model comparison, using the principle of parsimony to penalise more complex models (with
AIC). Fitting SIR models to real-world SARS-CoV-2 data.
+ The crucial role of models in science & society; critical thinking about models, inference, and public policy.


## Outline, Module 1

### Motivation

+ Given a dataset what question might we want to answer. I will have two or three carefully chosen datasets for the students to explore. They will be asked to plot and carry out some basic EDA and articulate what "structure" in the data they want to investigate. Obviously I'll be leading them down some paths (i.e., OOOO look at these clusters/groups etc.) To try and avoid the confusion caused by R troubles I was envisaging using something similar to this RShiny dashboard I created to bridge the gaps between point-and-click (that they know) and R code (they may have only just come across) and mathsy stuff (many are scared of). Check out the modelling tab in the app for a brief demo!

+ Given a question (e.g., Who grows the best pumpkins?) how might we investigate this and what tools we need to answer the questions. So given a vague question (about pumpkins say) this tries to build on a student's common knowledge to then introduce statistical terms and issues (e.g., variation, bias, noise etc.) As students are typically introduced to experimental design via textbook examples I built this virtual platform that lets students "collect" their own data. The idea being that students have a bit of fun and more of a connection to their data when we (re)introduce some of the statistical tools they can use for analysis.

### Weekly themes

| Week  | Theme  | Required reading  |
|---    |---             |---      |  
|  1 | Course intro/lecturers/goals/ intro to R |  N/A  |
|  2 | Data exploration and visualization (what questions do we have given the data)  | Chapter 5: Indigenous Data and Policy in Aotearoa New Zealand, Andrew Sporle, Maui Hudson and Kiri West. Indigenous Data Sovereignty and Policy. Edited By Maggie Walter, Tahu Kukutai, Stephanie Russo Carroll, Desi Rodriguez-Lonebear |
|  3 | Statistical toolbox (what tools to we have to answer our questions) |  Wilkinson, E. B., Grabowski, J. H., Sherwood, G. D., and Yund, O. Y. (2015) Influence of predator identity on the strength of predator avoidance responses in lobsters. Journal of Experimental Marine
Biology and Ecology, 465, 107–112. | 	
|  4 | Validation (how can we trust our answers)  | Ronald L. Wasserstein & Nicole A. Lazar (2016) The ASA Statement on p-Values: Context, Process, and Purpose, The American Statistician, 70:2, 129-133. & Replication power and regression to the mean by Leonhard Held,  Samuel Pawel, and  Simon Schwab. Significance December, 2020.
 |
|  5 | What if we have a specific question (collecting data to answer a question) | Ramasamy MN, Minassian AM, Ewer KJ, et al. Safety and immunogenicity of ChAdOx1 nCoV-19 vaccine administered in a prime-boost regimen in young and old adults (COV002): a single-blind, randomised, controlled, phase 2/3 trial [published online ahead of print, 2020 Nov 18]. Lancet. 2020;S0140-6736(20)32466-1 |
|  6 | Statistical toolbox+ (what tools to we have to answer our question)  | Park, Jong-Lyul, Jong Hwan Kim, Eunhye Seo, Dong Hyuck Bae, Seon-Young Kim, Han-Chul Lee, Kwang-Man Woo, and Yong Sung Kim. "Identification and evaluation of age-correlated DNA methylation markers for forensic use." Forensic Science International: Genetics 23 (2016): 64-70.  |


### Learning Objectives


### Assessment

 + The weekly quizzes will begin in week 2; for module 1, therefore, there will be 5 quizzes (weeks 2--6) Each week the quizzes will be set based on the required reading; the quizzes will consist of 10 MQCs, you will have two attempts (no time limit) and the best score will count.

 + The weekly labs for Module 1 will begin in week 1 and end in week 6 (6 in total @ 5% each).
 + Each lab will be based on a particular dataset and roughly be split into three components:
   - Some MCQs based on EDA of the data
   - A longer form answer (e.g., CANVAS Discussion answer and/or CANVAS file upload) based on your own analysis of the data.
   - A peer review/discussion element


### Datasets

+ DNA methylation markers
+ Predator avoidance responses in lobsters
+ Invasice dicots and herbicide
+ AstraZeneca vaccine trails