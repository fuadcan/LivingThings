---
title: "Explanatory Analysis"
output: pdf_document
geometry: margin=.75in
graphics: yes
---


setwd('~/Documents/musicdata/')
mdat <- read.csv('datasets/fma-rock-vs-hiphop.csv')
attach(mdat)

with(mdat, table(genre_top,language_code))
quantile(interest)
plot(ppoints(interest[interest<200000]), sort(interest[interest<200000]))
plot(1:length(interest), sort(log(interest)))
plot(1:length(listens), sort(log(listens)))
plot(1:length(favorites), sort(log(favorites)))


head(mdat)


max(levels(date_created))

## Does the number of composed songs increase per genre?
SPsectors_Keim <- make_glyphs(sectorAves,glyph_type = "rectangle",
                              width  = c(5,1,12,1),
                              height = c(1,4,1,3),
                              origin = "median", col=cols)
doit(SPsectors_Keim,labels=sectorShortNames, "Sector Averages")


sum(weekdays(as.Date(date_created))=="Cumartesi")

hist(round(bit_rate,-4))

## Does bit rate increases by time?


with(subset(mdat, genre_top != 'Rock'),t(table(substr(as.Date(date_created),1,4),round(bit_rate,-4))))
aa
table

years
## Does Popularity of Rap Increase by Time
