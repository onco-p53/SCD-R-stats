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

SCD.df <- read_csv("SCDSpecimens2.csv")
head(SCD.df)
tail(SCD.df)
summary(SCD.df, maxsum=10)

SCD.df %>% 
  glimpse

#the export file is borked. non standard csv file


# OK the actual problem is the export file. Try "leaf instead???

## --------------------- Load data -----------------------------------
SCD.full <- read.csv("SCDSpecimens.csv", row.names=NULL) #row.names=NULL ignores the first column
head(SCD.full)
summary(SCD.full, maxsum=40)

#summarise the bacteria or fungi
summary(PreferredName_C1)

#summarise the hosts
summary(PreferredName_C2)

#ggplot code for kingdom
attach(SCD.full) #this means we don't need the $ sign
require(ggplot2)
p <- ggplot(SCD.full, aes(SpecimenType)) + labs(title = "ICMP by Kingdom") + labs(x = "Taxon", y = "number of isolates")
p <- p + theme(axis.text.x=element_text(angle=-90, hjust=0))
p + geom_histogram()+ coord_flip()
print_bars <- p + geom_histogram()+ coord_flip()
ggsave(print_bars, file='ICMP_kingdoms.pdf', width=10, height=10)

#plain code for a kingdom barchart
attach(ICMP.dump) 
require(ggplot2)
p <- ggplot(ICMP.dump, aes(SpecimenType)) + labs(title = "Cultures in the ICMP by Kingdom") + labs(x = "Taxon", y = "number of isolates")
p <- p + theme(axis.text.x=element_text(angle=-90, hjust=0))
p + geom_bar()+ coord_flip()
print_bars <- p + geom_bar()+ coord_flip()
ggsave(print_bars, file='ICMP_kingdoms.png', width=7, height=7)

#ggplot code for country
attach(SCD.full) #this means we don't need the $ sign
require(ggplot2)
p <- ggplot(SCD.full, aes(Country_CE1)) + labs(title = "isolates by country") + labs(x = "Taxon", y = "number of isolates")
p <- p + theme(axis.text.x=element_text(angle=-90, hjust=0))
p + geom_histogram()+ coord_flip()
print_bars <- p + geom_histogram()+ coord_flip()
ggsave(print_bars, file='ICMP_country.pdf', width=10, height=10)

#ggplot code for price category
attach(SCD.full) #this means we don't need the $ sign
require(ggplot2)
p <- ggplot(SCD.full, aes(Flags)) + labs(title = "isolates by country") + labs(x = "Taxon", y = "number of isolates")
p <- p + theme(axis.text.x=element_text(angle=-90, hjust=0))
p + geom_histogram()+ coord_flip()
print_bars <- p + geom_histogram()+ coord_flip()
ggsave(print_bars, file='ICMP_kingdoms.pdf', width=10, height=10)


#ggplot code for host (too many)
attach(SCD.full) #this means we don't need the $ sign
require(ggplot2)
p <- ggplot(SCD.full, aes(TaxonName_C2)) + labs(title = "isolates by country") + labs(x = "Taxon", y = "number of isolates")
p <- p + theme(axis.text.x=element_text(angle=-90, hjust=0))
p + geom_histogram()+ coord_flip()
print_bars <- p + geom_histogram()+ coord_flip()
ggsave(print_bars, file='ICMP_kingdoms.pdf', width=10, height=10)

#minor test github update

