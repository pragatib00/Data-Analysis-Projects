# Credit Card Fraud Detection (EDA + Basic ML)

## Project Overview
This project focuses on analyzing credit card transaction data to detect fraudulent activities. The dataset is highly imbalanced, making fraud detection a challenging and realistic data analysis problem. The project emphasizes exploratory data analysis (EDA) and applies a basic machine learning model for fraud detection.

---

## Objectives
- Understand transaction patterns in legitimate and fraudulent activities
- Analyze class imbalance in fraud detection datasets
- Perform exploratory data analysis using visualizations
- Build and evaluate a basic machine learning model
- Use appropriate evaluation metrics for imbalanced data

---

## Dataset Description
- Source: Kaggle Credit Card Fraud Detection Dataset (https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud)

- Total transactions: 284,807
- Fraudulent transactions: 492
- Features:
  - V1–V28: PCA-transformed features (anonymized)
  - Time: Seconds elapsed between transactions
  - Amount: Transaction amount
  - Class:
    - 0 → Legitimate transaction
    - 1 → Fraudulent transaction

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
- Checked for missing and duplicate values
- Analyzed class imbalance between fraud and non-fraud transactions
- Visualized transaction amount distributions
- Compared fraud vs non-fraud transaction behavior
- Analyzed feature correlations using a heatmap

---

## Machine Learning Model
- Model Used: Logistic Regression
- Data Preprocessing:
  - Train-test split with stratification
  - Feature scaling using StandardScaler
  - Class weighting to handle imbalance
- Evaluation Metrics:
  - Confusion Matrix
  - Precision and Recall
  - Classification Report

Accuracy was not used as the primary metric due to the highly imbalanced nature of the dataset.

---

## Key Insights
- Fraudulent transactions account for less than 1% of total transactions
- Fraud can occur across a wide range of transaction amounts
- Class imbalance significantly impacts model evaluation
- Precision and recall provide better insights than accuracy for fraud detection

---

## Conclusion
The project demonstrates how exploratory data analysis combined with a simple machine learning model can effectively identify fraud patterns in imbalanced datasets. This approach highlights the importance of proper evaluation metrics in real-world data analysis problems.

---

## Future Improvements
- Experiment with advanced models (Random Forest, XGBoost)
- Apply resampling techniques such as SMOTE
- Tune model hyperparameters
- Create interactive dashboards using Tableau or Power BI

