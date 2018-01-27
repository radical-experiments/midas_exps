library(ggplot2)
library(gdata)
library(stringr)
library(RColorBrewer)
options(sqldf.driver = "SQLite") # as per FAQ #7 force SQLite
options(gsubfn.engine = "R")
library(sqldf)
library(scales)
library(reshape2)
library(Hmisc)
library(readr)
library(tidyr)
library(dplyr)
library(forcats)
library(gridExtra)
library(scales)



dask = read_csv("tidy_data/WeakScaling/wrangler_dask_NoIO.csv") %>% mutate(Duration = Duration/1000)
mpi4py = read_csv("tidy_data/WeakScaling/wrangler_mpi4py_NoIO.csv")%>% mutate(Duration = Duration/1000)
mpicc = read_csv("tidy_data/WeakScaling/wrangler_mpic++_NoIO.csv") %>% mutate(Duration = Duration/(1000*1000))
spark = read_csv("tidy_data/WeakScaling/wrangler_spark_NoIO.csv")%>% mutate(Duration = Duration/1000)

all = bind_rows(mpicc, dask, spark)
all_plot = all %>% filter(Nodes==1)

summary = all_plot %>% group_by(Framework, Nodes) %>% summarise(mean = mean(Duration), max = max(Duration), median = median(Duration),
                                                           sd = sd(Duration), n = n(),
                                                           two_sigma_mean = quantile(Duration, probs = .95),
                                                           three_sigma_mean = quantile(Duration, probs = .997),
                                                           two_sigma_median = median + 2*sd,
                                                           three_sigma_median = median + 3*sd
                                                      )



pp <- ggplot(all_plot, aes(x=Duration, color=Framework)) + stat_ecdf(pad = FALSE, size=1.5) +
  #geom_line(stat="summary", fun.y="mean",  size=1.1) + geom_point(stat="summary", fun.y="mean", size=1.7, show.legend = F) +
  #stat_summary(fun.data = "mean_sdl", geom = "errorbar", fun.args = list(mult=1), width=.2) + 
  #geom_bar(stat="summary", fun.y="mean",  size=1.05, position = position_dodge()) + #geom_point(stat="summary", fun.y="mean", size=1.7, show.legend = F) +
  #facet_grid(type~Broker_Scenario,  scales = "free_y", space = "fixed")+
  #geom_errorbar(mapping=aes(ymin=mean-stddev, ymax=mean+stddev), width=0.2, size=0.6, position = position_dodge(width = 0.90), color="black") +
  scale_fill_brewer(palette="Paired")+ scale_color_brewer(palette="Paired")+ 
  theme_bw(base_size = 20) + theme(legend.position = "bottom", plot.margin=grid::unit(c(0,0,0,-6), "mm")) + 
  #theme(axis.text.x = element_text(angle=45, hjust=1)) +
  #scale_x_continuous(trans=log2_trans(), breaks=c(1,2,4,8,16,32,64,128))+ 
  #scale_y_continuous(trans=log2_trans())+   
  #scale_x_log10(breaks=c(1,10,100,1000,2500, 5000, 7500, 10000, 15000)) +
  #scale_y_log10(breaks=c(1,10,100,200, 500))+   
  xlab("Time") + 
  ylab("Fraction of Data") +
  guides(fill=guide_legend(reverse=FALSE, ncol=5, keywidth=1)) 
pp

pdf(file="cdf_frameworks.pdf", width = 13, height = 5)
pp
dev.off()

summary_long = summary %>% gather(type, value, c(two_sigma_mean, three_sigma_mean, two_sigma_median, three_sigma_median))

pp <- ggplot(all_plot[all_plot$Framework=="Spark",], aes(x=Duration)) + stat_ecdf(pad = FALSE, size=1.1) +
  #geom_line(stat="summary", fun.y="mean",  size=1.1) + geom_point(stat="summary", fun.y="mean", size=1.7, show.legend = F) +
  #stat_summary(fun.data = "mean_sdl", geom = "errorbar", fun.args = list(mult=1), width=.2) + 
  #geom_bar(stat="summary", fun.y="mean",  size=1.05, position = position_dodge()) + #geom_point(stat="summary", fun.y="mean", size=1.7, show.legend = F) +
  #facet_grid(type~Broker_Scenario,  scales = "free_y", space = "fixed")+
  #geom_errorbar(mapping=aes(ymin=mean-stddev, ymax=mean+stddev), width=0.2, size=0.6, position = position_dodge(width = 0.90), color="black") +
  scale_fill_brewer(palette="Paired")+ scale_color_brewer(palette="Paired")+ #scale_color_brewer(palette="Paired", labels = c(expression(paste(mu, "+2",sigma)), 
                                      #                                                 expression(paste(mu, "+3",sigma)), 
                                      #                                                 expression(paste(median, "+2",sigma)), 
                                      #                                                 expression(paste(median, "+3",sigma))))+ 
  theme_bw(base_size = 20) + theme(legend.position = "bottom", plot.margin=grid::unit(c(0,0,0,-3), "mm")) + 
  geom_vline(aes(xintercept = value,  color=type),  size=1.2,data=summary_long[summary_long$Framework=="Spark",]) +
  
  #geom_vline(aes(xintercept = two_sigma_mean,  color=brewer.pal(6, "Paired")[1]),  size=1.2,data=summary[summary$Framework=="Spark",]) +
  #geom_vline(aes(xintercept = three_sigma_mean,  color=brewer.pal(6, "Paired")[2]), size=1.2,data=summary[summary$Framework=="Spark",]) +
  #geom_vline(aes(xintercept = two_sigma_median,  color=brewer.pal(6, "Paired")[3]), size=1.2,data=summary[summary$Framework=="Spark",]) +
  #geom_vline(aes(xintercept = three_sigma_median,  color=brewer.pal(6, "Paired")[4]), size=1.2, data=summary[summary$Framework=="Spark",]) +
  
  #theme(axis.text.x = element_text(angle=45, hjust=1)) +
  #scale_x_continuous(trans=log2_trans(), breaks=c(1,2,4,8,16,32,64,128))+ 
  #scale_y_continuous(trans=log2_trans())+   
  #scale_x_log10(breaks=c(1,10,100,1000,2500, 5000, 7500, 10000, 15000)) +
  #scale_y_log10(breaks=c(1,10,100,200, 500))+   
  xlab("Time") + 
  ylab("Fraction of Data") +
  guides(fill=guide_legend(reverse=FALSE, ncol=5, keywidth=1)) + labs(color="Straggler Definition"
                                                                      )
pp

pdf(file="cdf_definitions.pdf", width = 13, height = 5)
pp
dev.off()

