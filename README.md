# (Draft) Proposal for GSoC 2019
OWASP Seraphimdroid


# About me
Name: xihajun
University: University of Bristol
Email: mw18386@bristol.ac.uk
I am studying MSc Mathematics of Cybersecurity in the University of Bristol. I believe I am qualified for this project because I have the following abilities:
Familiar with a series of machine learning techniques
Understood the cybersecurity knowledge
Had the experience to do anomaly detection
Had the experience to deal with unbalanced data

# Project Name
OWASP Seraphimdroid

# Project Expectation
Develop an advanced system/model to detect the anomaly usage and distinguish different types of malicious apps by applying machine learning techniques.

# Project Description
OWASP Seraphimdroid has previously applied a system, based on permissions, which is able to distinguish malicious apps from non-malicious. But it still has some false positive, like foodpanda app. In order to improve OWASP Seraphimdroid’s  performance, we would like to learn from other outputs (like network, CPU, buttery and memory usage, system call logs) can monitor about application whether it can be malicious.  

# Project Overview
My plan mainly consists of three stages: preparation, application designing and modelling, comparison.

In the preparation stage, I will firstly work on data collection and Android malware behaviours research. Now, I have found two datasets contain the network traffic data for both malware and benign applications, which might be useful in our project. Also, there is an open source app named AnotherMonitor, through which we are able to get the CPU and memory usage information. However, it should be noticed that in Android 7+ Google has made undocumented changes and has significantly restricted access to the proc file system. This means it is hard to obtain more information for new Android versions. As for Android malware behaviours research, I will combine with reading paper and analysing malware data to obtain a better intuition.

In the application designing and modelling stage, since Seraphimdroid has the ability to distinguish some malicious apps already, my plan can be divided into two main parts:

The first part is to collect user’s dynamic CPU, memory, etc. usage data, through which we are able to build a model for anomaly detection to calculate the probability of the situation occurring given the normal data. If the probability is lower than the threshold we defined, the system will give the user a warning message. Here is a diagram of my thought.

(Diagram: zoom in, the installed application here means the test application)

The second part is to train the existing dynamic dataset do malware classification. After the unknown application installed, we can do the same job to collect smartphone usage information (for this application). After collecting a certain period, two days, for example, we are able to train the machine to distinguish this application from malware and benign. In addition, rather than only malware and benign classification, it can contain more clusters for different types of malware apps. If the malware data is limited, SMOTE algorithm might be a feasible choice for oversampling.

As for system log files, I have a rough idea either use topic modelling methods to extract the abnormal behaviours or inductive logic programming to build a rule for classification, like behaviour 1, behaviour 2 -> malware behaviour.

Lastly, it is necessary to do a comparison to evaluate our model. For the anomaly detection part, choosing a suitable model distributions and thresholds might be the key to improve. I will compare different models and thresholds and try to visualise the results. For the classification part, ideally, Deep Learning can perform well given a large training set. It is worth to test the previous false positive apps and see how the system improved.


# Dataset
Obtain the dataset is the key of starting to do this project, I have found two datasets, CICAAGM dataset and CICAndMal2017 respectively, containing the network traffic data for both malware and benign applications. Of course, it is not enough in order to get a better result, it is worth to find more datasets maybe contain the memory, battery or CPU usage. I will keep finding during the first 3 weeks. Also, if we decided to use these datasets, we should also start to consider to get the same type of data through our simulation.


# Expected Timeline
I may have limited time developing in May because of the exams, but I will be full-time working after that.


|Date|Work|
|---|---|
|Before - May 6|Read more papers.<br>Play around with the existing datasets to have a rough understanding.<br>Keep exploring new datasets and the Android application output data collection methods.<br>|
|6 - 31 May|Discuss with my mentor about the implementation of the model. Investigate the classic model which we can refer to.<br>Confirm a way to collect system indicators data, find more tools like AnotherMonitor to obtain CPU and memory information.<br>Implement different algorithms on our exist datasets.|
|1 - 24 June|Do simulation on Google Android sandbox to collect the data and learn the normal user behaviour.<br>Start working on model choosing for anomaly detection and discuss with my mentor.
30 June - 22 July|Pick the models and algorithms with high performance.<br>Do a comparison between previous work.<br>Write a document of evaluation and comparison.
23 July- 19 August|Update the document of Seraphimdroid.<br>Write a project summary.

# Extra Information


## Coding Skills
Operating system: Macbook
Programming languages: Matlab, Python, C, a bit java
Relevant course: Anomaly Detection, Machine Learning, Data Science Toolbox, Bayesian Modelling


## Set up
Github page: https://github.com/xihajun/OWASP-Seraphimdroid



## Reason for Participation
I am studying mathematics of cybersecurity and know the harm of the malware applications. It is obvious that building a system to detect malware applications is meaningful. After reviewing this project introduction, I found it is doable for me since I have done a lot classification problems in Data Science Toolbox course and learned anomaly detection last term. So I believe I could do a great job for this project this summer. Also, I really appreciate open source program, so I believe that working with OWASP, the Open Web Application Security Project, will be the beginning of my open source life as well as my first big cybersecurity project!

I am looking forward to working on the project with OWASP!

