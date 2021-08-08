# Name : Suci Aulya Putri
"Medical Premium Prediction"

#Import Data
library(readr)
medical_premium <- read_csv("Medicalpremium.csv")
medical_premium

# 1. Split data: train - test 
library(caTools)
set.seed(123)
sample <- sample.split(medical_premium$PremiumPrice, SplitRatio = .80)
train <- subset(medical_premium, sample == TRUE)
test <- subset(medical_premium, sample == FALSE) 

#modeling
PremiumPrice_lm <- lm(PremiumPrice ~ . , data=train)

summary(PremiumPrice_lm)

# diagnostic studies

# plotting the regression line 

# residual plot
PremiumPrice_lm_res <- resid(PremiumPrice_lm)
# to check assumptions: linearity, constant variance, and independence
plot(predict(PremiumPrice_lm, train), PremiumPrice_lm_res, 
     ylab="Residuals", xlab="Fitted Values", 
     main="Premium Price") 
abline(0, 0)

# draw using ggplot2
library(ggplot2)
PremiumPrice_lm_res_df <- data.frame(fitted_value=predict(PremiumPrice_lm, train), 
                                     residual=resid(PremiumPrice_lm))

ggplot(PremiumPrice_lm_res_df, aes(x=fitted_value, y=residual)) +
  geom_point() +
  geom_hline(yintercept=0, color='blue')+
  labs(
    title = 'Regressing Premium Price With ggplot2'
  )
# QQ plot
# normality of residuals
PremiumPrice_lm_stdres = rstandard(PremiumPrice_lm)
qqnorm(PremiumPrice_lm_stdres, 
       ylab="Standardized Residuals", 
       xlab="Normal Scores", 
       main="Premium Price ") 
qqline(PremiumPrice_lm_stdres)


# prediction
predicted <- predict(PremiumPrice_lm, test)
actual_pred <- data.frame(cbind(actual=test$PremiumPrice, predicted=predicted))
predicted

# model evaluation
# MAE
MAE <- mean(abs(actual_pred$actual-actual_pred$predicted))
MAE

# MAPE
MAPE <- mean(abs((actual_pred$predicted - actual_pred$actual))/actual_pred$actual) 
MAPE
