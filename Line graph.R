#The following code was used to create plots in
#Aesthetic Responses on Microtonal Intervals.
#Ho, M-J., Tomokane, J., Konno, R., McDermott, J.H., Fujii, S., Savage, P.E.
#2019 July

#following package must be loaded
library(ggplot2)

#set workdrive
setwd("/Users/MelodyHo/Documents/KEIO/CompMusic/Consonance/")

#import data
ratings<-read.csv("Ho et al. 2019raw.csv", header=TRUE, row.names = 1)

#Line graph of mean ratings by # of intervals with error bars of 95% CI.

#Melodic and hamonic intervals 
#pleasantness rating/diotic condition as example, change y, errorbars, and title for other plots
#plot
ggplot(ratings, aes(x = Intervals, y= P.D, group = MH.grouping, color = MH.grouping)) + 
      geom_errorbar(aes(ymin=P.D - P.D_CI, ymax = P.D + P.D_CI), width=.1) +
      geom_line() +
      geom_point() + 
      ylim(1,4) +
      scale_x_continuous(breaks=seq(0, 12, 1)) +
      labs(title="Melodic and Harmonic Intervals Pleasantness Ratings",
          subtitle ="Diotic Condition",
          x = "Intervals (semitones)",
          y = "Mean Ratings",
          color = "Interval Type") +
          scale_color_brewer(palette="Paired") +
      theme_minimal()

#For melodic and harmonic intervals plots
#MH.grouping : melodic or harmonic interval type
#P.D : Pleasantness ratings/diotic condition
#P.DC : Pleasantness ratings/dichotic condition
#C.D : Consonance ratings/diotic condition
#C.DC : Consonance ratings/dichotic condition
#B.D : Beauty ratings/diotic condition
#B.DC : Beauty ratings/dichotic condition
##add _CI at the end for error bars


#Diotic and Dichotic intervals 
#pleasantness rating/melodic intervals as example, change y, errorbars, and title for other plots
#plot
ggplot(ratings, aes(x = Intervals, y= P.M, group = DDC.grouping, color = DDC.grouping)) + 
  geom_errorbar(aes(ymin=P.M - P.M_CI, ymax = P.M + P.M_CI), width=.1) +
  geom_line() +
  geom_point() + 
  ylim(1,4) +
  scale_x_continuous(breaks=seq(0, 12, 1)) +
  labs(title="Diotic and Dichotic Intervals Pleasantness Ratings",
       subtitle ="Melodic Intervals",
       x = "Intervals (semitones)",
       y = "Mean Ratings",
       color = "Interval Type") +
  scale_color_brewer(palette="Paired")

#For diotic and dichotic conditions plots
#DDC.grouping : diotic or dichotic condition type
#P.M : Pleasantness ratings/melodic intervals
#P.H : Pleasantness ratings/harmonic intervals
#C.M : Consonance ratings/melodic intervals
#C.H : Consonance ratings/harmonic intervals
#B.M : Beauty ratings/melodic intervals
#B.H : Beauty ratings/harmonic intervals
##add _CI at the end for error bars
