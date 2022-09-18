## R Script to process SCD data ##

#Original version 2017, new version 2022
#Author: Bevan Weir

#============ Load all library packages needed ================

library(tidyverse)
library(lubridate)
library(RColorBrewer)
library(svglite)
library(lubridate)
library(readr)

#============ Load data from csv files ================

SCD.df <- read_csv("SCDSpecimens.csv")
head(SCD.df)
tail(SCD.df)
summary(SCD.df, maxsum=10)

SCD.df %>% 
  glimpse

#============ Simple graphs ================

#Simple sample type barchart
ggplot(SCD.df, aes(SpecimenType)) +
  labs(title = "ICMP cultures from roots by SpecimenType") +
  labs(x = "Taxon", y = "number of isolates") + 
  theme(axis.text.x=element_text(angle=-90, hjust=0)) +
  geom_bar() + 
  coord_flip()
ggsave(file='./ICMP_specimen_types.png', width=7, height=7)


#country
ggplot(SCD.df, aes(VerbatimCountry_CE1)) +  #note Country_CE1 is blank
  labs(title = "isolates by country") +
  labs(x = "Taxon", y = "number of isolates") + 
  theme(axis.text.x=element_text(angle=-90, hjust=0)) +
  geom_bar() + 
  coord_flip()
ggsave(file='./ICMP_countries.png', width=7, height=7)


