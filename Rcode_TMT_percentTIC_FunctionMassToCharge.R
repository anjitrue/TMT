library(ggplot2)


# TMT Data
TMT_MS2 <- read.csv("P:/EAT_DRB_TMTdataset_20191115/In-House TMT/TMT_Stats_EATedits.csv", 
                                            header = TRUE, sep = ",", stringsAsFactors = FALSE)
TMT_MS2_massToCharge <- TMT_MS2[,c(5,12:14)]
TMT_MS2_massToCharge <- TMT_MS2_massToCharge[order(TMT_MS2_massToCharge$Mass.to.Charge),]

p <- ggplot(TMT_MS2_massToCharge, aes(x= Mass.to.Charge, y= Labeled.Precursor.1)) +
  geom_point() +
  #xlim(200,1500) +
  scale_x_continuous(limits = c(200,1500), breaks = seq(200,1500,100)) +
  theme_light()
p + labs(title = "Labeled precursor as a function mass to charge" ,subtitle = "TMT MS/MS Data", y = "Percent of TIC Explained", x ="Mass to Charge Ratio")

p <- ggplot(TMT_MS2_massToCharge, aes(x= Mass.to.Charge, y= Labeled.Fragments.1)) +
  geom_point() +
  #xlim(200,1500) +
  scale_x_continuous(limits = c(200,1500), breaks = seq(200,1500,100)) +
  theme_light()
p + labs(title = "Labeled fragments as a function mass to charge" ,subtitle = "TMT MS/MS Data", y = "Percent of TIC Explained", x ="Mass to Charge Ratio of Precusor")


p <- ggplot(TMT_MS2_massToCharge, aes(x= Mass.to.Charge, y= Reporter.Ion.Signal.1)) +
  geom_point() +
  #xlim(200,1500) +
  scale_x_continuous(limits = c(200,1500), breaks = seq(200,1500,100)) +
  theme_light()
p + labs(title = "Reporter Ion as a function Precusor mass to charge" ,subtitle = "TMT MS/MS Data", y = "Percent of TIC Explained", x ="Mass to Charge Ratio of Precusor")


h <- ggplot(TMT_MS2_massToCharge, aes(x= Mass.to.Charge))+
  geom_histogram(binwidth = 10, colour = "black", fill = "lightblue")+
  scale_x_continuous(limits = c(200,1500), breaks = seq(200,1500,100)) +
  theme_light()
h + labs(title = "Histogram of Precusor Mass to Charge" ,subtitle = "TMT MS/MS Data", y = "count", x ="Mass to Charge Ratio")


# iTRAQ Data
iTRAQ <- read.csv("P:/EAT_DRB_TMTdataset_20191115/iTRAQ/iTRAQ_Stats_EATedits.csv", 
                    header = TRUE, sep = ",", stringsAsFactors = FALSE)

iTRAQ_massToCharge <- iTRAQ[,c(5,12:14)]
iTRAQ_massToCharge <- iTRAQ_massToCharge[order(iTRAQ_massToCharge$Mass.to.Charge),]

#column names "Mass.to.Charge"        "Reporter.Ion.Signal.1" "Labeled.Fragments.1"   "Labeled.Precursor.1"  
p <- ggplot(iTRAQ_massToCharge, aes(x= Mass.to.Charge, y= Labeled.Precursor.1)) +
  geom_point() +
  scale_x_continuous(limits = c(200,1500), breaks = seq(200,1500,100)) +
  theme_light()
p + labs(title = "Labeled precursor as a function mass to charge" ,subtitle = "iTRAQ Data", y = "Percent of TIC Explained", x ="Mass to Charge Ratio")

p <- ggplot(iTRAQ_massToCharge, aes(x= Mass.to.Charge, y= Labeled.Fragments.1)) +
  geom_point() +
  #xlim(200,1500) +
  scale_x_continuous(limits = c(200,1500), breaks = seq(200,1500,100)) +
  theme_light()
p + labs(title = "Labeled fragments as a function mass to charge" ,subtitle = "iTRAQ Data", y = "Percent of TIC Explained", x ="Mass to Charge Ratio of Precusor")

p <- ggplot(iTRAQ_massToCharge, aes(x= Mass.to.Charge, y= Reporter.Ion.Signal.1)) +
  geom_point() +
  #xlim(200,1500) +
  scale_x_continuous(limits = c(200,1500), breaks = seq(200,1500,100)) +
  theme_light()
p + labs(title = "Reporter Ion as a function Precusor mass to charge" ,subtitle = "iTRAQ Data", y = "Percent of TIC Explained", x ="Mass to Charge Ratio of Precusor")

h <- ggplot(iTRAQ_massToCharge, aes(x= Mass.to.Charge))+
  geom_histogram(binwidth = 10, colour = "black", fill = "lightblue")+
  scale_x_continuous(limits = c(200,1500), breaks = seq(200,1500,100)) +
  theme_light()
h + labs(title = "Histogram of Precusor Mass to Charge" ,subtitle = "iTRAQ Data", y = "count", x ="Mass to Charge Ratio")


#Di_Leu
Di_Leu <- read.csv("P:/EAT_DRB_TMTdataset_20191115/DiLeu/DiLeu_Stats_EATedits.csv", 
                  header = TRUE, sep = ",", stringsAsFactors = FALSE)

Di_Leu_massToCharge <- Di_Leu[,c(5,12:14)]
Di_Leu_massToCharge <- Di_Leu_massToCharge[order(Di_Leu_massToCharge$Labeled.Precursor.1),]

p <- ggplot(Di_Leu_massToCharge, aes(x= Mass.to.Charge, y= Labeled.Precursor.1)) +
  geom_point() +
  scale_x_continuous(limits = c(200,1500), breaks = seq(200,1500,100)) +
  theme_light()
p + labs(title = "Labeled precursor as a function mass to charge" ,subtitle = "Di_Leu Data", y = "Percent of TIC Explained", x ="Mass to Charge Ratio")


p <- ggplot(Di_Leu_massToCharge, aes(x= Mass.to.Charge, y= Labeled.Fragments.1)) +
  geom_point() +
  #xlim(200,1500) +
  scale_x_continuous(limits = c(200,1500), breaks = seq(200,1500,100)) +
  theme_light()
p + labs(title = "Labeled fragments as a function mass to charge" ,subtitle = "Di_Leu Data", y = "Percent of TIC Explained", x ="Mass to Charge Ratio of Precusor")

p <- ggplot(Di_Leu_massToCharge, aes(x= Mass.to.Charge, y= Reporter.Ion.Signal.1)) +
  geom_point() +
  #xlim(200,1500) +
  scale_x_continuous(limits = c(200,1500), breaks = seq(200,1500,100)) +
  theme_light()
p + labs(title = "Reporter Ion as a function Precusor mass to charge" ,subtitle = "Di_Leu Data", y = "Percent of TIC Explained", x ="Mass to Charge Ratio of Precusor")

h <- ggplot(Di_Leu_massToCharge, aes(x= Mass.to.Charge))+
  geom_histogram(binwidth = 10, colour = "black", fill = "lightblue")+
  scale_x_continuous(limits = c(200,1500), breaks = seq(200,1500,100)) +
  theme_light()
h + labs(title = "Histogram of Precusor Mass to Charge" ,subtitle = "Di_Leu Data", y = "count", x ="Mass to Charge Ratio")
