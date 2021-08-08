# Medical Premium Predicted

## Medical Insurance Premium 
A medical insurance premium is an upfront payment made on behalf of an individual or family in order to keep their health insurance policy active.

## Data Understanding

A Medical Insurance Company Has Released Data For Almost 1000 Customers. The Data Is Voluntarily Given By Customers. 
The Dataset Contains Health Related Parameters Of The Customers, The Premium Price Is In INR(₹) Currency And Showcases Prices For A Whole Year.

•	Source Data: https://www.kaggle.com/tejashvi14/medical-insurance-premium-prediction  

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
   Summary(model_object)
   Residual Diagnostic
    
   • 	Residual Plot
   
   ![image](https://user-images.githubusercontent.com/88583319/128622590-4970740a-2869-429c-910b-bc23c9a62166.png)
    
   • 	Residual Plot using ggplot2
    
   ![image](https://user-images.githubusercontent.com/88583319/128622578-ac49b108-b32b-45f7-a6e0-618c291d7181.png)
    
   •	Residual Normally
    
### 4. Predict Data
   Using the trained model to predict test data using predict()
   ![image](https://user-images.githubusercontent.com/88583319/128622622-32f066da-24c3-4238-82ea-19ea2074a8d8.png)
   
### 5. Evaluate The Model
   Evaluate the model on test data using MAE and MAPE
 
On averange, our prediction deviates the true Premium Price by 2624.7. Moreover, this 2624.7is equivalent to 12% deviation relative to the true Premium Price.

## Summary

Based on linear regression, the Mean Absolute Percentage Error(MAPE) value is 12%. The MAPE value is 12% indicates that the prediction results are accurate and can be used to estimate premium prices in the following year. 
