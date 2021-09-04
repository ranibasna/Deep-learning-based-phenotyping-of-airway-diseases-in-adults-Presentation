library(dplyr)
library(tidyverse)
library(ggplot2)
library(reshape2)

install.packages("GGally")
install.packages("plotly")
install.packages("Rtsne")
install.packages("ggthemes")
install.packages("cowplot")
install.packages("viridis")
install.packages("hrbrthemes") # takes long time
install.packages("revealjs")
install.packages("FactoMineR") # takes too too long time
library(ggthemes)

library(FactoMineR)
#library(factoextra)
#library(arsenal)
library(plotly)
library(cowplot)
#library(treeClust)
library(Rtsne)
library(viridis)
library(GGally)
library(hrbrthemes)


x <- list(batch=3,label="Lung Cancer Patients", subtype=c("A","B","C"))

a <- 1:3
b <- 4:6
c <- 11:14
d <- 13:16
l <- list(a,b)

l
ll <- list(data = l, hidden = list(c, d) )
ll

l <- list(data = data.frame(a = 1:3, b = 4:6),
          hidden = list(obj1 = 1, obj2 = 2))

l = list(data = data.frame(a = 1:3, b = 4:6), hidden = list(obj1 = 1, obj2 = 2))

foo <- function(x){
  attr(x$data,"hidden") <- x$hidden
  x$data
}

k_l <- foo(ll)
k_l

k_l <- foo(l)
k_l
