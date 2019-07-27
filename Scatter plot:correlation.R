#The following code was used to create plots in
#Aesthetic Responses on Microtonal Intervals.
#Ho, M-J., Tomokane, J., Konno, R., McDermott, J.H., Fujii, S., Savage, P.E.
#2019 July

#following packages must be loaded
library(ggplot2)
library(ggrepel)

#set workdrive
setwd("/Users/MelodyHo/Documents/KEIO/CompMusic/Consonance/")

#import data
data<-read.csv("Ho et al. 2019.csv", header=TRUE, row.names = 1)

#melodic vs. harmonic intervals
#pleasantness ratings/diotic as as example, change x, y, R^2 value, and title for other plots
#calculate correlation coefficient 
r_value <- cor(data$P.MD, data$P.HD)^2
r_value
#plot
MH <- ggplot(data, aes(x = P.MD, y = P.HD, label = rownames(dt), color=group)) + 
  geom_point() 
MH <- MH + geom_smooth(aes(group = 1), method=lm, se=FALSE, fullrange=TRUE, color ="black", formula = y~x)
MH <- MH + geom_label_repel(force = 7,  size = 3)
MH <- MH + annotate("text", x = 3, y = 3.8, label = "R^2== 0.61" , parse = TRUE)
MH <- MH + scale_color_manual(values = c('#0066FF','#FF9900','#CC0000'))
MH <- MH + xlim(1, 4) + ylim(1,4)
MH <- MH + labs(title =" Melodic vs. Harmonic Intervals",
                          subtitle ="Pleasantness Ratings-Diotic",
                          x = "Mean Ratings on Melodic Intervals",
                          y = "Mean Ratings on Harmonic Intervals",
                          color = "Interval Type")
MH + theme_minimal()

#diotic vs. dichotic conditions
#pleasantness ratings/melodic intervals as as example,  change x, y, R^2 value, and title for other plots
#calculate correlation coefficient 
r_value <- cor(data$P.MD, data$P.MDC)^2
r_value
#plot
DDC <- ggplot(data, aes(x = P.MD, y = P.MDC, label = rownames(dt), color=group)) + 
  geom_point() 
DDC <- DDC + geom_smooth(aes(group = 1), method=lm, se=FALSE, fullrange=TRUE, color ="black", formula = y~x)
DDC <- DDC + geom_label_repel(force = 7,  size = 3)
DDC <- DDC + annotate("text", x = 3, y = 3.8, label = "R^2== 0.61" , parse = TRUE)
DDC <- DDC + scale_color_manual(values = c('#0066FF','#FF9900','#CC0000'))
DDC <- DDC + xlim(1, 4) + ylim(1,4)
DDC <- DDC + labs(title ="Diotic vs. Dichotic Intervals",
                  subtitle ="Pleasantness Ratings-Melodic intervals",
                  x = "Mean Ratings on Diotic Intervals",
                  y = "Mean Ratings on Dichotic Intervals",
                  color = "Interval Type")
DDC


#harmonicity vs. mean ratings
#pleasantness ratings/harmonic intervals/diotic as example,  change x, y, R^2 value, and title for other plots
#calculate correlation coefficient 
r_value <- cor(data$HS.JI, data$P.HD)^2
r_value
#plot
correlation <- ggplot(data, aes(x = HS.JI, y = P.HD, label = rownames(dt), color=group)) + 
  geom_point() 
correlation <- correlation + geom_smooth(aes(group = 1), method=lm, se=FALSE, fullrange=TRUE, color ="black", formula = y~x)
correlation <- correlation+ geom_label_repel(force = 7,  size = 3)
correlation <- correlation + annotate("text", x = 65, y = 3.9, label = "R^2 == 0.49", parse = TRUE)
correlation <- correlation + scale_color_manual(values = c('#0066FF','#FF9900','#CC0000'))
correlation <- correlation + xlim(0,100) + ylim(1,4)
correlation <- correlation + labs(title ="Harmonic Similarity Score vs. Rating-harmonic diotic intervals",
                          subtitle ="Pleasantness",
                          x = "Harmonic Similarity Score (%)",
                          y = "Mean Ratings",
                          color = "Interval Types")
correlation + theme_minimal()


#List of variable names:
#P.MD : Pleasantness ratings/melodic intervals/diotic condition
#P.MDC : Pleasantness ratings/melodic intervals/dichotic condition
#P.HD : Pleasantness ratings/harmonic intervals/diotic condition
#P.HDC : Pleasantness ratings/harmonic intervals/dichotic condition

#C.MD : Consonance ratings/melodic intervals/diotic condition
#C.MDC : Consonance ratings/melodic intervals/dichotic condition
#C.HD : Consonance ratings/harmonic intervals/diotic condition
#C.HDC : Consonance ratings/harmonic intervals/dichotic condition

#B.MD : Beauty ratings/melodic intervals/diotic condition
#B.MDC : Beauty ratings/melodic intervals/dichotic condition
#B.HD : Beauty ratings/harmonic intervals/diotic condition
#B.HDC : Beauty ratings/harmonic intervals/dichotic condition

#HS.JI : Harmonic similarity score by Gill & Purves (2009)
#roughess : Dissonance by Hutchinson & Knopoff (1978)
#ratio.simplicity : Soothed relative periodicity by Stolzenburg (2015)
#harmonicity : Harmonicity by Harrison & Pearce (2018)
