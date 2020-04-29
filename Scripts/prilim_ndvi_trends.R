
library(tidyverse)

##reading in data

city_dat=read_csv("Data/Top8plusLA.csv")
remote_loc=read_csv("Data/remote_locations.csv")


##figures

##figure of 8 top polluted cities and los angeles
city_plot=ggplot(city_dat, aes(x=factor(COVID), y=ndvi, fill=city))+
  geom_boxplot()+
  facet_grid(.~city)+
  theme_bw()+
  ylab("NDVI")+xlab("COVID Year")+
  theme(legend.title = element_blank())

city_plot

##Figure of remote locations in the US, China, and India

remote_plot=ggplot(remote_loc, aes(x=factor(COVID), y=ndvi, fill=city))+
  geom_boxplot()+
  facet_grid(.~city)+
  theme_bw()+
  ylab("NDVI")+xlab("COVID Year")+
  theme(legend.title = element_blank())
remote_plot



