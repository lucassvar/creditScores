library(foreign)
library(dplyr)
library(tidyverse)
library(caret)
library(randomForest)
library(rmarkdown)

# Load data
credit_data <- read.arff("rda/credit-g-dataset.arff")

# Check for missing values
missing_values <- colSums(is.na(credit_data))
print(missing_values)

# Convert categorical variables to factors
credit_data <- credit_data %>%
	mutate_if(is.character, as.factor)

# Exploratory Data Analysis (EDA)
summary(credit_data)

# Split the data into training and testing sets
set.seed(123)
train_index <- createDataPartition(credit_data$class, p = 0.8, list = FALSE)
train_data <- credit_data[train_index, ]
test_data <- credit_data[-train_index, ]

# Model Training
model <- randomForest(class ~ ., data = train_data, ntree = 100)

# Model Evaluation
predictions <- predict(model, test_data)
conf_matrix <- confusionMatrix(predictions, test_data$class)
print(conf_matrix)

# Feature Importance
importance <- importance(model)
varImpPlot(model)
