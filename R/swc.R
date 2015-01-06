# SWC intermediate R exercises
# using assignment operators

x <- 5
x 
x = 8
x

# load data
surveys <- read.csv(file = "surveys.csv")
inflam2 <- read.csv(file = "inflammation-02.csv", header = FALSE)

# basic stats 
avg_day_inflam <- apply(inflam2, MARGIN = 2, mean)
plot(avg_day_inflam)

max_day_inflam <- apply(inflam2, MARGIN = 2, max)
plot(max_day_inflam)

min_day_inflam <- apply(inflam2, MARGIN = 2, min)
plot(min_day_inflam)

sd_day_inflam <- apply(inflam2, MARGIN = 2, sd)
plot(sd_day_inflam)

# functions
fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5/9)) + 273.15
  return(kelvin)
}

fahr_to_kelvin(7)
fahr_to_kelvin(32)
fahr_to_kelvin(212)

kelvin_to_c <- function(temp) {
  celsius <- temp - 273.15
  return(celsius)
}

fahr_to_c <- function(temp) {
  kelvin <- fahr_to_kelvin(temp)
  celsius <- kelvin_to_c(kelvin)
  return(celsius)
}

# vectors
vec <- c(1, 2, 3)
best_practice <- c("Write", "programs", "for", "people", "not", "computers")
asterisk <- "***"

fence <- function(original, wrapper) {
  result <- c(wrapper, original, wrapper)
  return(result)
}

# function to analyze data
analyze <- function(filename) {
  inflam <- read.csv(filename, header = FALSE)
  avg_day <- apply(inflam, MARGIN = 2, mean)
  max_day <- apply(inflam, MARGIN = 2, max)
  min_day <- apply(inflam, MARGIN = 2, min)
  plot(avg_day)
  plot(max_day)
  plot(min_day)
}

# loops
for (variable in collection) {
  do things
}

length(best_practice)
len <- 0
for (v in best_practice) {
  len <- len + 1
}
  
values <- c(1, 2, 3)
# function to sum elements of vector, using a for loop
sum_fun <- function(x) {
  result <- 0
  for (i in values) {
    result <- result + x[i]
  }
  result
}

# creating a loop to batch analyze inflammation data

filenames <- list.files(pattern = "inflammation")

for (f in filenames) {
  print(f)
  analyze(f)
}
  
analyze_all <- function(pattern) {
  filenames <- list.files(pattern = pattern)
  for (f in filenames) {
    print(f)
    analyze(f)
  }
}

# adding a comment to demo git in rstudio
  
  



