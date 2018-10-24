# Examples of generalized linear modeling for Machine Learning Team
library(data.table)
library(ggplot2)
library(lme4)
library(arm)
library(coefplot2)
library(glmnet)

data(sleepstudy)
sleep <- data.table(sleepstudy)

res <- glm(Reaction ~ Subject + Day, data=sleep, family=gaussian)
print(summary(res))
coefplot(res)

res2 <- lmer(Reaction ~ Days + (Days | Subject), data=sleep)
print(summary(res2))
coefplot2(res2)
