#The following code was used to create plots in
#Aesthetic Responses on Microtonal Intervals.P.M
#Ho, M-J., Tomokane, J., Konno, R., McDermott, J.H., Fujii, S., Savage, P.E.
#2019 July

#following packages must be loaded
library(ggplot2)
library(dplyr)

set.seed(836)

#set workdrive
setwd("/Users/MelodyHo/Documents/KEIO/CompMusic/Consonance/")

#import data
data<-read.csv("Ho et al. 2019.csv", header=TRUE)

#Violin plot by interval types of consonance, dissonance and microtone (Fig.4A, 4B and S6, S7)

#multiple diagrams by aesthetic rating/interval type/condition
#pleasantness ratings/melodic intervals/diotic
PMD <- ggplot(data, aes(x=group, y=P.MD, fill=group, label=rownames(dt))) +
      geom_violin()
PMD <- PMD + scale_fill_manual(values = c('#0066FF','#FF9900','#CC0000'))
PMD <- PMD + geom_dotplot(binaxis='y', stackdir='center', dotsize=0.5, binwidth = 0.1, fill="white")
PMD <- PMD + stat_summary(fun.y='mean', geom="point", shape = 23, fill="black", size =2) 
PMD <- PMD + ylim(1,4)
PMD <- PMD + labs(title="",
                  subtitle ="Pleasantness Ratings-Diotic/Melodic Interval",
                  x = "Interval Types",
                  y = "Mean Ratings",
                  fill = "Interval Types")
PMD + theme_light()

#pleasantness ratings/melodic intervals/dichotic
PMDC <- ggplot(data, aes(x=group, y=P.MDC, fill=group, label=rownames(dt))) +
  geom_violin()
PMDC <- PMDC + scale_fill_manual(values = c('#0066FF','#FF9900','#CC0000'))
PMDC <- PMDC + geom_dotplot(binaxis='y', stackdir='center', dotsize=0.5, binwidth = 0.1, fill="white")
PMDC <- PMDC + stat_summary(fun.y='mean', geom="point", shape = 23, fill="black", size =2) 
PMDC <- PMDC + ylim(1,4)
PMDC <- PMDC + labs(title="",
                  subtitle ="Pleasantness Ratings-Dichotic/Melodic Interval",
                  x = "Interval Types",
                  y = "Mean Ratings",
                  fill = "Interval Types")
PMDC + theme_light()

#pleasantness ratings/harmonic intervals/diotic
PHD <- ggplot(data, aes(x=group, y=P.HD, fill=group, label=rownames(dt))) +
  geom_violin()
PHD <- PHD + scale_fill_manual(values = c('#0066FF','#FF9900','#CC0000'))
PHD <- PHD + geom_dotplot(binaxis='y', stackdir='center', dotsize=0.5, binwidth = 0.1, fill="white")
PHD <- PHD + stat_summary(fun.y='mean', geom="point", shape = 23, fill="black", size =2) 
PHD <- PHD + ylim(1,4)
PHD <- PHD + labs(title="",
                  subtitle ="Pleasantness Ratings-Diotic/Harmonic Interval",
                  x = "Interval Types",
                  y = "Mean Ratings",
                  fill = "Interval Types")
PHD + theme_light()

#pleasantness ratings/harmonic intervals/diotic
PHDC <- ggplot(data, aes(x=group, y=P.HDC, fill=group, label=rownames(dt))) +
  geom_violin()
PHDC <- PHDC + scale_fill_manual(values = c('#0066FF','#FF9900','#CC0000'))
PHDC <- PHDC + geom_dotplot(binaxis='y', stackdir='center', dotsize=0.5, binwidth = 0.1, fill="white")
PHDC <- PHDC + stat_summary(fun.y='mean', geom="point", shape = 23, fill="black", size =2) 
PHDC <- PHDC + ylim(1,4)
PHDC <- PHDC + labs(title="",
                  subtitle ="Pleasantness Ratings-Dichotic/Harmonic Interval",
                  x = "Interval Types",
                  y = "Mean Ratings",
                  fill = "Interval Types")
PHDC + theme_light()

#consonance ratings/melodic intervals/diotic
CMD <- ggplot(data, aes(x=group, y=C.MD, fill=group, label=rownames(dt))) +
  geom_violin()
CMD <- CMD + scale_fill_manual(values = c('#0066FF','#FF9900','#CC0000'))
CMD <- CMD + geom_dotplot(binaxis='y', stackdir='center', dotsize=0.5, binwidth = 0.1, fill="white")
CMD <- CMD + stat_summary(fun.y='mean', geom="point", shape = 23, fill="black", size =2) 
CMD <- CMD + ylim(1,4)
CMD <- CMD + labs(title="",
                  subtitle ="Consonance Ratings-Diotic/Melodic Interval",
                  x = "Interval Types",
                  y = "Mean Ratings",
                  fill = "Interval Types")
PMD + theme_light()

#consonance ratings/melodic intervals/dichotic
CMDC <- ggplot(data, aes(x=group, y=C.MDC, fill=group, label=rownames(dt))) +
  geom_violin()
CMDC <- CMDC + scale_fill_manual(values = c('#0066FF','#FF9900','#CC0000'))
CMDC <- CMDC + geom_dotplot(binaxis='y', stackdir='center', dotsize=0.5, binwidth = 0.1, fill="white")
CMDC <- CMDC + stat_summary(fun.y='mean', geom="point", shape = 23, fill="black", size =2) 
CMDC <- CMDC + ylim(1,4)
CMDC <- CMDC + labs(title="",
                    subtitle ="Consonance Ratings-Dichotic/Melodic Interval",
                    x = "Interval Types",
                    y = "Mean Ratings",
                    fill = "Interval Types")
CMDC + theme_light()

#consonance ratings/harmonic intervals/diotic
CHD <- ggplot(data, aes(x=group, y=C.HD, fill=group, label=rownames(dt))) +
  geom_violin()
CHD <- CHD + scale_fill_manual(values = c('#0066FF','#FF9900','#CC0000'))
CHD <- CHD + geom_dotplot(binaxis='y', stackdir='center', dotsize=0.5, binwidth = 0.1, fill="white")
CHD <- CHD + stat_summary(fun.y='mean', geom="point", shape = 23, fill="black", size =2) 
CHD <- CHD + ylim(1,4)
CHD <- CHD + labs(title="",
                  subtitle ="Consonance Ratings-Diotic/Harmonic Interval",
                  x = "Interval Types",
                  y = "Mean Ratings",
                  fill = "Interval Types")
CHD + theme_light()

#consonance ratings/harmonic intervals/diotic
CHDC <- ggplot(data, aes(x=group, y=C.HDC, fill=group, label=rownames(dt))) +
  geom_violin()
CHDC <- CHDC + scale_fill_manual(values = c('#0066FF','#FF9900','#CC0000'))
CHDC <- CHDC + geom_dotplot(binaxis='y', stackdir='center', dotsize=0.5, binwidth = 0.1, fill="white")
CHDC <- CHDC + stat_summary(fun.y='mean', geom="point", shape = 23, fill="black", size =2) 
CHDC <- CHDC + ylim(1,4)
CHDC <- CHDC + labs(title="",
                    subtitle ="Consonance Ratings-Dichotic/Harmonic Interval",
                    x = "Interval Types",
                    y = "Mean Ratings",
                    fill = "Interval Types")
CHDC + theme_light()

#beauty ratings/melodic intervals/diotic
BMD <- ggplot(data, aes(x=group, y=P.MD, fill=group, label=rownames(dt))) +
  geom_violin()
BMD <- BMD + scale_fill_manual(values = c('#0066FF','#FF9900','#CC0000'))
BMD <- BMD + geom_dotplot(binaxis='y', stackdir='center', dotsize=0.5, binwidth = 0.1, fill="white")
BMD <- BMD + stat_summary(fun.y='mean', geom="point", shape = 23, fill="black", size =2) 
BMD <- BMD + ylim(1,4)
BMD <- BMD + labs(title="",
                  subtitle ="Beauty Ratings-Diotic/Melodic Interval",
                  x = "Interval Types",
                  y = "Mean Ratings",
                  fill = "Interval Types")
BMD + theme_light()

#beauty ratings/melodic intervals/dichotic
BMDC <- ggplot(data, aes(x=group, y=P.MDC, fill=group, label=rownames(dt))) +
  geom_violin()
BMDC <- BMDC + scale_fill_manual(values = c('#0066FF','#FF9900','#CC0000'))
BMDC <- BMDC + geom_dotplot(binaxis='y', stackdir='center', dotsize=0.5, binwidth = 0.1, fill="white")
BMDC <- BMDC + stat_summary(fun.y='mean', geom="point", shape = 23, fill="black", size =2) 
BMDC <- BMDC + ylim(1,4)
BMDC <- BMDC + labs(title="",
                    subtitle ="Beauty Ratings-Dichotic/Melodic Interval",
                    x = "Interval Types",
                    y = "Mean Ratings",
                    fill = "Interval Types")
BMDC + theme_light()

#beauty ratings/harmonic intervals/diotic
BHD <- ggplot(data, aes(x=group, y=P.HD, fill=group, label=rownames(dt))) +
  geom_violin()
BHD <- BHD + scale_fill_manual(values = c('#0066FF','#FF9900','#CC0000'))
BHD <- BHD + geom_dotplot(binaxis='y', stackdir='center', dotsize=0.5, binwidth = 0.1, fill="white")
BHD <- BHD + stat_summary(fun.y='mean', geom="point", shape = 23, fill="black", size =2) 
BHD <- BHD + ylim(1,4)
BHD <- BHD + labs(title="",
                  subtitle ="Beauty Ratings-Diotic/Harmonic Interval",
                  x = "Interval Types",
                  y = "Mean Ratings",
                  fill = "Interval Types")
BHD + theme_light()

#beauty ratings/harmonic intervals/diotic
BHDC <- ggplot(data, aes(x=group, y=B.HDC, fill=group, label=rownames(dt))) +
  geom_violin()
BHDC <- BHDC + scale_fill_manual(values = c('#0066FF','#FF9900','#CC0000'))
BHDC <- BHDC + geom_dotplot(binaxis='y', stackdir='center', dotsize=0.5, binwidth = 0.1, fill="white")
BHDC <- BHDC + stat_summary(fun.y='mean', geom="point", shape = 23, fill="black", size =2) 
BHDC <- BHDC + ylim(1,4)
BHDC <- BHDC + labs(title="",
                    subtitle ="Beauty Ratings-Dichotic/Harmonic Interval",
                    x = "Interval Types",
                    y = "Mean Ratings",
                    fill = "Interval Types")
BHDC + theme_light()



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

