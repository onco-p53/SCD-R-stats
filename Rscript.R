## R Script to process SCD data ##

## --------------------- Load data -----------------------------------
SCD.full <- read.csv("SCDSpecimens.csv") #note need someway to ignore first column
head(SCD.full)
summary(SCD.full, maxsum=40)

#ggplot code for kingdom
attach(SCD.full) #this means we don't need the $ sign
require(ggplot2)
p <- ggplot(SCD.full, aes(SpecimenType)) + labs(title = "ICMP by Kingdom") + labs(x = "Taxon", y = "number of isolates")
p <- p + theme(axis.text.x=element_text(angle=-90, hjust=0))
p + geom_bar()+ coord_flip()
print_bars <- p + geom_bar()+ coord_flip()
ggsave(print_bars, file='ICMP_kingdoms.pdf', width=10, height=10)

#ggplot code for country
attach(SCD.full) #this means we don't need the $ sign
require(ggplot2)
p <- ggplot(SCD.full, aes(Country_CE1)) + labs(title = "isolates by country") + labs(x = "Taxon", y = "number of isolates")
p <- p + theme(axis.text.x=element_text(angle=-90, hjust=0))
p + geom_bar()+ coord_flip()
print_bars <- p + geom_bar()+ coord_flip()
ggsave(print_bars, file='ICMP_kingdoms.pdf', width=10, height=10)

#git chnge test