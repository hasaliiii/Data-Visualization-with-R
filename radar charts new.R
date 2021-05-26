#installing fmsb library
install.packages("fmsb")
library(fmsb)

#dataset
test_scores1 <- data.frame(
  row.names = c("Max","Min","Anne", "Mary", "David"),
  Combined_Mathematics = c(100,0,80, 50, 67),
  Physics = c(100,0,56, 42, 98),
  Chemistry = c(100,0,34, 89, 75),
  General_English = c(100,0,78, 88, 90),
  Information_technology = c(100,0,60, 65,85 )
)
test_scores1

#defining fill colours and line colours
colors_fill<-c(scales::alpha("blue", 0.1), scales::alpha("yellow", 0.1),scales::alpha("orange", 0.1))
colors_line<-c(scales::alpha("red", 0.8), scales::alpha("black", 0.8),scales::alpha("dark blue", 0.8))

#creating radar chart
radarchart(test_scores1,seg=5, title="Test Scores", pcol =colors_line, pfcol= colors_fill,plwd =2)

#legend
legend(x=0.7,y=1.5, legend=row.names(test_scores1[c(2,3,4,5),]), bty="n", pch=20, col=colors_line,cex=1.2 ,pt.cex=3)