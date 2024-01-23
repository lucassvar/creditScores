# Credit Risk Prediction Project

This machine learning project focuses on predicting credit risk based on a dataset containing various attributes related to individuals' credit applications. The dataset includes information such as checking account status, credit history, purpose of credit, credit amount, employment details, and more.

## Project Structure

-   **Data Processing**: The dataset is loaded and preprocessed to ensure completeness and compatibility with machine learning algorithms.

-   **Exploratory Data Analysis (EDA)**: Key insights into the dataset are revealed through summary statistics, providing an understanding of the distribution of important variables.

-   **Model Training and Evaluation**: The dataset is split into training and testing sets, and a random forest classifier is trained on the training set. The model is evaluated using a confusion matrix, accuracy, sensitivity, and specificity metrics.

-   **Feature Importance**: The random forest model assigns importance scores to each feature, allowing identification of key factors influencing credit risk.

## Instructions

1.  **Environment Setup**: Ensure you have R and RStudio installed.

2.  **Library Installation**: Install the required R libraries by running the following commands in your R environment:

    ``` r
    install.packages(c("foreign", "dplyr", "tidyverse", "caret", "randomForest", "rmarkdown"))
    ```

3.  **Run the Project**: Copy the code from `ml_algorithm.R` and paste it into your R environment to execute the entire machine learning project.

4.  **Review Results**: Examine the generated HTML report for insights into data preprocessing, EDA, model training, evaluation metrics, and feature importance.

## Results

The project achieves an accuracy of 74% in predicting credit risk, with important features such as checking status, credit amount, and duration playing significant roles.

Feel free to explore and customize the project to suit your needs. For any questions or improvements, please contact the project owner.

Happy coding!
