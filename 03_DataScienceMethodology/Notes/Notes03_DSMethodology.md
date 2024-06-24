# Data Science Methodology

<!-- TOC tocDepth:2..3 chapterDepth:2..6 -->

- [Terminology](#terminology)
    - [CRISP - DM](#crisp---dm)

<!-- /TOC -->

## 14 key, high-level takeaway facts you’ll want to remember from this course.

**Foundational methodology**\
a cyclical, iterative data science methodology developed by John Rollins, consists of 10 stages, starting with Business Understanding and ending with Feedback.

**CRISP-DM**\
an open source data methodology, combines several data-related methodology stages into one stage and omits the Feedback stage resulting in a six-stage data methodology.

The **primary goal** of the **Business Understanding** stage is to *understand* the business problem and *determine* the data needed to answer the core business question. 

**Analytic Approach**\
choose from *descriptive diagnostic*, *predictive*, and *prescriptive analytic* approaches and whether to use machine learning techniques.

**Data Requirements**\
scientists identify the *correct* and *necessary* data content, formats, and sources needed for the specific analytical approach.

**Data Collection**\
expert data scientists revise data requirements and make critical decisions regarding the quantity and quality of data. Data scientists apply descriptive statistics and visualization techniques to thoroughly assess the content, quality, and initial insights gained from the collected data, identify gaps, and determine if new data is needed, or if they should substitute existing data.

**Data Understanding**\
encompasses all activities related to constructing the data set. This stage answers the question of whether the collected data represents the data needed to solve the business problem. Data scientists might use descriptive statistics, predictive statistics, or both.

Data scientists commonly apply **Hurst**, **univariates**, and **statistics** such as mean, median, minimum, maximum, standard deviation, pairwise correlation, and histograms. 

**Data Preparation**\
data scientists must address missing or invalid values, remove duplicates, and validate that the data is properly formatted. Feature engineering and text analysis are key techniques data scientists apply to validate and analyze data during the Data Preparation stage.

**Modeling stage**
The end goal is that the data model answers the business question. During the Modeling stage, data scientists use a training data set. Data scientists test multiple algorithms on the training set data to determine whether the variables are required and whether the data supports answering the business question. The outcome of those models is either descriptive or predictive. 

**Evaluation stage**\
consists of two phases, the **diagnostic measures phase**, and the **statistical significance phase**. Data scientists and others assess the quality of the model and determine if the model answers the initial Business Understanding question or if the data model needs adjustment. 

**Deployment stage**\
data scientists release the data model to a targeted group of stakeholders, including solution owners, marketing staff, application developers, and IT administration., 

**Feedback stage**\
stakeholders and users evaluate the model and contribute feedback to assess the model’s performance. 

>The data model’s value depends on its ability to iterate; that is, how successfully the data model incorporates user feedback.


## Terminology

| Term | Definition |
|:---:| --- |
| Analytic Approach | The process of selecting the appropriate method or path to address a specific data science question or problem. |
| Analytics | 	The systematic analysis of data using statistical, mathematical, and computational techniques to uncover insights, patterns, and trends.
| Business Understanding | 	The initial phase of data science methodology involves seeking clarification and understanding the goals, objectives, and requirements of a given task or problem.
| Clustering Association | 	An approach used to learn about human behavior and identify patterns and associations in data.
| Cohort | 	A group of individuals who share a common characteristic or experience is studied or analyzed as a unit.
| Cohort study |An observational study where a group of individuals with a specific characteristic or exposure is followed over time to determine the incidence of outcomes or the relationship between exposures and outcomes.
| Congestive Heart Failure (CHF) | 	A chronic condition in which the heart cannot pump enough blood to meet the body's needs, resulting in fluid buildup and symptoms such as shortness of breath and fatigue.
| CRISP-DM | 	Cross-Industry Standard Process for Data Mining is a widely used methodology for data mining and analytics projects encompassing six phases: business understanding, data understanding, data preparation, modeling, evaluation, and deployment.
| Data analysis | 	The process of inspecting, cleaning, transforming, and modeling data to discover useful information, draw conclusions, and support decision-making.
| Data cleansing | 	The process of identifying and correcting or removing errors, inconsistencies, or inaccuracies in a dataset to improve its quality and reliability
| Data science | 	An interdisciplinary field that combines scientific methods, processes, algorithms, and systems to extract knowledge and insights from structured and unstructured data.
| Data science methodology | 	A structured approach to solving business problems using data analysis and data-driven insights.
| Data scientist | 	A professional using scientific methods, algorithms, and tools to analyze data, extract insights, and develop models or solutions to complex business problems.
| Data scientists | 	Professionals with data science and analytics expertise who apply their skills to solve business problems.
| Data-Driven Insights | 	Insights derived from analyzing and interpreting data to inform decision-making
| Decision tree | 	A supervised machine learning algorithm that uses a tree-like structure of decisions and their possible consequences to make predictions or classify instances.
| Decision Tree Classification Model | 	A model that uses a tree-like structure to classify data based on conditions and thresholds provides predicted outcomes and associated probabilities.
| Decision Tree Classifier | 	A classification model that uses a decision tree to determine outcomes based on specific conditions and thresholds.
| Decision-Tree Model | 	A model used to review scenarios and identify relationships in data, such as the reasons for patient readmissions
| Descriptive approach | 	An approach used to show relationships and identify clusters of similar activities based on events and preferences
| Descriptive modeling | 	Modeling technique that focuses on describing and summarizing data, often through statistical analysis and visualization, without making predictions or inferences
| Domain knowledge | 	Expertise and understanding of a specific subject area or field, including its concepts, principles, and relevant data
| Goals and objectives | 	The sought-after outcomes and specific objectives that support the overall goal of the task or problem.
| Iteration |	A single cycle or repetition of a process often involves refining or modifying a solution based on feedback or new information.
| Iterative process | 	A process that involves repeating a series of steps or actions to refine and improve a solution or analysis. Each iteration builds upon the previous one.
| Leaf | 	The final nodes of a decision tree where data is categorized into specific outcomes.
| Machine Learning | 	A field of study that enables computers to learn from data without being explicitly programmed, identifying hidden relationships and trends.
| Mean | 	The average value of a set of numbers is calculated by summing all the values and dividing by the total number of values.
| Median | 	When arranged in ascending or descending order, the middle value in a set of numbers divides the data into two equal halves.
| Model (Conceptual model) | 	A simplified representation or abstraction of a real-world system or phenomenon used to understand, analyze, or predict its behavior.
| Model building | 	The process of developing predictive models to gain insights and make informed decisions based on data analysis.
| Pairwise comparison (correlation) | 	A statistical technique that measures the strength and direction of the linear relationship between two variables by calculating a correlation coefficient.
| Pattern | 	A recurring or noticeable arrangement or sequence in data can provide insights or be used for prediction or classification.
| Predictive model |	A model used to determine probabilities of an action or outcome based on historical data.
| Predictors |	Variables or features in a model that are used to predict or explain the outcome variable or target variable.
| Prioritization |	The process of organizing objectives and tasks based on their importance and impact on the overall goal.
| Problem solving |	The process of addressing challenges and finding solutions to achieve desired outcomes.
| Stakeholders |	Individuals or groups with a vested interest in the data science model's outcome and its practical application, such as solution owners, marketing, application developers, and IT administration.
| Standard deviation |	A measure of the dispersion or variability of a set of values from their mean; It provides information about the spread or distribution of the data.
| Statistical analysis |	Stand deviations are applied to problems that require counts, such as yes/no answers or classification tasks.
| Statistics |	The collection, analysis, interpretation, presentation, and organization of data to understand patterns, relationships, and variability in the data.
| Structured data (data model) |	Data organized and formatted according to a predefined schema or model and is typically stored in databases or spreadsheets.
| Text analysis data mining |	The process of extracting useful information or knowledge from unstructured textual data through techniques such as natural language processing, text mining, and sentiment analysis.
| Threshold value |	The specific value used to split data into groups or categories in a decision tree.

### CRISP - DM
*Cross-Industry Standard Process for Data Mining*

```mermaid
flowchart TD;
    BU[Business Understanding] --> DU[Data Understanding];
    DU --> BU;
    DU --> DP[Data Preparation];
    DP --> Mo[Modeling];
    Mo --> DP;
    Mo --> Ev[Evaluation];
    Ev --> BU;
    De[Deployment] --> Ev;
```

> You'll continue the CRISP-DM process until the data model and its analysis answer the business questions