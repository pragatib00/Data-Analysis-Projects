# HR Analytics – Employee Attrition Analysis (EDA + Basic ML)

## Project Overview

This project focuses on analyzing employee data to understand the factors contributing to employee attrition. Employee attrition is a critical issue for organizations as it impacts productivity, cost, and workforce stability.
The project emphasizes exploratory data analysis (EDA) and applies a basic machine learning model to predict employee attrition.

---

## Objectives

- Understand employee attrition patterns
- Identify key factors influencing attrition
- Perform exploratory data analysis using visualizations
- Build and evaluate a basic machine learning model
- Interpret results using appropriate classification metrics

---

## Dataset Description

Source: Kaggle IBM HR Analytics Employee Attrition Dataset (https://www.kaggle.com/datasets/rishikeshkonapure/hr-analytics-prediction)

Key Features:

- Age: Employee age
- Department: Department of the employee
- JobRole: Job role within the organization
- MonthlyIncome: Monthly salary
- JobSatisfaction: Level of job satisfaction
- WorkLifeBalance: Work-life balance rating
- YearsAtCompany: Number of years at the company
- Target Variable:

     - Attrition:

        - 0 → Employee stayed

        - 1 → Employee left
---

## Tools & Technologies

- Python
- NumPy
- Pandas
- Matplotlib
- Seaborn
- Scikit-learn
- Jupyter Notebook

---

## Exploratory Data Analysis (EDA)
- Checked for missing values and duplicates
- Analyzed overall attrition rate
- Attrition analysis by:
     - Department
     - Job Role
     - Gender
- Income distribution comparison using boxplots
- Relationship between attrition and:
    - Job satisfaction
    - Work-life balance
    - Years at company
- Key Visualizations:
     - Count plots for attrition distribution
     - Boxplots for income vs attrition
     - Bar charts for department-wise attrition

---

## Machine Learning Model
- Model Used:
    - Logistic Regression

- Data Preprocessing:

    - Converted categorical variables using Label Encoding
    - Encoded target variable (Attrition)
    - Feature scaling using StandardScaler

- Train-test split

- Evaluation Metrics:
     - Confusion Matrix
     - Precision
     - Recall
     - F1-score

- Classification Report
Accuracy was not treated as the primary metric due to class imbalance.

---

## Key Insights

- Attrition rate is relatively low but impactful
- Employees with lower monthly income show higher attrition
- Certain departments and job roles experience higher attrition
- Job satisfaction and work-life balance strongly influence attrition
- Logistic Regression provides a reasonable baseline for prediction

---

## Conclusion

This project demonstrates how exploratory data analysis combined with a basic machine learning model can help organizations understand and predict employee attrition.
The insights gained can assist HR teams in making data-driven decisions to improve employee retention.

---

## Future Improvements
- Use advanced models (Random Forest, XGBoost)
- Apply feature selection techniques
- Handle class imbalance using SMOTE
- Perform hyperparameter tuning
- Build HR dashboards using Tableau or Power BI