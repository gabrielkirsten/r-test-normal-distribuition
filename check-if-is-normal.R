data <- read.table(file.choose(),header=TRUE)

variableOfInterest <- readline("Enter the name of your variable of interest:")

A <- c(getElement(data, variableOfInterest))

if (shapiro.test(A)$p.value < 0.05 ) {
  cat("Non normal distribution")
} else { 
  cat("Normal distribuition")
}
