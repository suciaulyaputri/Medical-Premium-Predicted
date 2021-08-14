# Medical Premium Predicted
To predict medical insurance premium and the result can be used to estimate premium prices in the following year. 

### About this Project

This project is focused on making predictions models of medical insurance premium. By applying a linear regression model and evaluating the model, I will illustrate that whether the predictions model results are accurate and can be used to estimate premium prices in the following year. 

## Medical Insurance Premium 
A medical insurance premium is an upfront payment made on behalf of an individual or family in order to keep their health insurance policy active.

## Data Understanding

A Medical Insurance Company Has Released Data For Almost 1000 Customers. The Data Is Voluntarily Given By Customers. 
The Dataset Contains Health Related Parameters Of The Customers, The Premium Price Is In INR(₹) Currency And Showcases Prices For A Whole Year.
[Source Data](https://www.kaggle.com/tejashvi14/medical-insurance-premium-prediction)

•	Data Dictionary:
    
   - Age : Age Of Customer 
    
   - Diabetes : Whether The Person Has Abnormal BloodSugar Levels
    
   - BloodPressureProblems : Whether The Person Has Abnormal Blood Pressure Levels
    
   - AnyTransplants : Any Major Organ Transplants
    
   - AnyChronicDiseases : Whether Customer Suffers From Chronic Ailments Like Asthama, Etc.
    
   - Height : Height Of Customer
    
   - Weight : Weight Of Customer
    
   - KnownAllergies : Whether The Customer Has Any Known Allergies
    
   - HistoryOfCancerInFamily : Whether Any Blood Relative Of The Customer Has Had Any Form Of Cancer
    
   - NumberOfMajorSurgeries : The Number Of Major Surgeries That The Person Has Had
    
   - PremiumPrice : The Premium Price Is In INR(₹) Currency And Showcases Prices For A Whole Year.

## Data preparation
•	Code Used : RStudio 

•	Packages : caTools, ggplot2

## Modeling Flow : 
### 1. Split Data : train – test
   Split data into training data and testing data
### 2. Fit the model on training data
   Build and train the model on the training data using lm() function
### 3. Model Diagnostic
  
 Interpret and pre-evaluate the model
  
 -Model's Summary
 
 ![image](https://user-images.githubusercontent.com/88583319/129437689-402dc97d-a648-4efd-a453-bde2d3eceaf3.png)

  The model with an adjusted R-square value of 0.6225. The adjusted R-square value indicates that 62.25% total variation of PremiumPrice can be explained by all the features.
  
 - Model's Residual Diagnostic
    
   • 	Residual Plot
   
   ![image](https://user-images.githubusercontent.com/88583319/129439319-ec1f6464-cfc8-4cae-995c-a00cc4514892.png)
   
 The model diagnostic plots above show that the linear regression model fits the data well. There is a straight-line relationship between the residual and the fitted_value, residuals have a constant variance, and residuals are normally distributed.
    
### 4. Predict Data
   Using the trained model to predict test data using predict()
   ![image](https://user-images.githubusercontent.com/88583319/128622622-32f066da-24c3-4238-82ea-19ea2074a8d8.png)
   
### 5. Evaluate The Model
   Evaluate the model on test data using MAE and MAPE
 Based on the linear regression model, the Mean Absolute Error (MAE) value is 25 and the Mean Absolute Percentage Error (MAPE) value is 28.
On averange, our prediction deviates the true Premium Price by 2624.7. Moreover, this 2624.7is equivalent to 12% deviation relative to the true Premium Price.

# Summary

Based on the linear regression model, the Mean Absolute Error (MAE) value is 25 and the Mean Absolute Percentage Error (MAPE) value is 28.
On averange, our prediction deviates the true Premium Price by 2624.7. Moreover, this 2624.7 is equivalent to 12% deviation relative to the true Premium Price.
The MAPE value is 12% indicates that the prediction results are accurate and can be used to estimate premium prices in the following year. 
