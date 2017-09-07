## R Script to process SCD data ##

## --------------------- Load data -----------------------------------
SCD.full <- read.csv("SCDSpecimens.csv") #note need someway to ignore first column
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
ggsave(print_bars, file='ICMP_country.pdf', width=10, height=10)

#ggplot code for price category
attach(SCD.full) #this means we don't need the $ sign
require(ggplot2)
p <- ggplot(SCD.full, aes(Flags)) + labs(title = "isolates by country") + labs(x = "Taxon", y = "number of isolates")
p <- p + theme(axis.text.x=element_text(angle=-90, hjust=0))
p + geom_bar()+ coord_flip()
print_bars <- p + geom_bar()+ coord_flip()
ggsave(print_bars, file='ICMP_kingdoms.pdf', width=10, height=10)


#ggplot code for host (too many)
attach(SCD.full) #this means we don't need the $ sign
require(ggplot2)
p <- ggplot(SCD.full, aes(TaxonName_C2)) + labs(title = "isolates by country") + labs(x = "Taxon", y = "number of isolates")
p <- p + theme(axis.text.x=element_text(angle=-90, hjust=0))
p + geom_bar()+ coord_flip()
print_bars <- p + geom_bar()+ coord_flip()
ggsave(print_bars, file='ICMP_kingdoms.pdf', width=10, height=10)

#minor test github update

