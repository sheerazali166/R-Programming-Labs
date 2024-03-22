
library(dslabs)

installed.packages()

a <- 1
b <- 1
c <- -1

a

print(a)

ls()

(-b + sqrt(b^2 - 4*a*c) ) / ( 2*a )

(-b - sqrt(b^2 - 4*a*c) ) / ( 2*a )

log(8)

log(a)

help("log")

help("Kinza Sheikh is chocolaty")
help("But i love this girl so so much")

?log

args(log)
#> function (x, base = exp(1)) 
#> #> NULL

log(8, base = 2)

log(x = 8, base = 2)
#> [1] 3

log(8, 2)

log(base = 2, x = 8)

# answer? reverse?
log(base = 8, x = 2)

2 ^ 3

help("+")

?"+"

help(">")

# Or
?">"

# and the relational operators by typing:
help(">")

data()

co2

pi

Inf

Inf + 1 

solotion_1 <- (-b + sqrt(b^2 - 4*a*c)) / (2*a)
solotion_2 <- (-b - sqrt(b^2 - 4*a*c)) / (2*a)

a <- 3
b <- 2
c <- 1

(-b + sqrt(b^2 - 4*a*c)) / (2*a)
(-b - sqrt(b^2 - 4*a*c)) / (2*a)


## Code to compute solution to quadratic equation of the form ax^2 + bx + c
## define the variables
a <- 3
b <- 2
c <- -1
## now compute the solution
(-b + sqrt(b^2 - 4*a*c)) / (2*a)
(-b - sqrt(b^2 - 4*a*c)) / (2*a)

# 2.3 Exercises
n <- 1000
x <- seq(1, n)

sum(x)





# a. log(10^x)
log(10^x)

# b. log10(x^10)
log10(x^10)

# c. log(exp(x))
log(exp(x))

# d. exp(log(x, base = 2))
exp(log(x, base = 2))

# 2.4 Data types

a <- 2

class(a)

library(dslabs)
data("murders")

class(murders)

# 2.4.2 Examining an object
str(murders)

head(murders)

murders$population

names(murders)

# 2.4.4 Vectors: numerics, characters, and logical
pop <- murders$population
length(pop)

class(pop)

class(murders$state)

z <- 3 == 2
z

class(z)

?Comparison

# 2.4.5 Factors

class(murders$region)

levels(murders$region)

region <- murders$region
region

value <- murders$total
value

region <- reorder(region, value, FUN = sum)
levels(region)

# 2.4 Data types
record

record$student_id

record$grades

record$final_grade

class(record)

record$student_id

record[["student_id"]]

record2

record2[1]

record2[[1]]

# 2.4.7 Matrices

mat <- matrix(1: 12, 4, 3)
mat

mat[2, 3]

mat[2, ]

mat[, 3]

mat

mat[, 2: 3]

mat

mat[1: 2, 2: 3]

as.data.frame(mat)

data("murders")

murders[25, 1]

murders[2: 3, ]

# 2.5 Exercises
# 1. Load the US murders dataset.

class(murders$region)

# 2.6 Vectors

# 2.6.1 Creating vectors

codes <- c(380, 124, 818)
codes

country <- c("italy", "canada", "egypt")
country

country <- c('italy', 'canada', 'egypt')
country

country <- c(italy, canada, egypt)

# 2.6.2 Names
codes <- c(italy = 380, canada = 124, egypt = 818)
codes

class(codes)

names(codes)

codes <- c("italy" = 380, "canada" = 124, "egypt" = 818)
codes

codes <- c(380, 124, 818)
country <- c("italy", "canada", "egypt")

names(codes) <- country
codes

# 2.6.3 Sequences
seq(1, 10)

seq(1, 10, 2)

1: 10

class(1: 10)

class(seq(1, 10, 0.5))


# 2.6.4 Subsetting
codes[2]

codes[c(1, 3)]

# 2.7 Coercion
codes[1:2]

codes["canada"]

codes[c("egypt", "italy")]

# 2.7 Coercion

x <- c(1, "canada", 3)
x

class(x)

x <- 1: 5
y <- as.character(x)
y

as.numeric(y)

print("i am not same answer again and again")

x <- c(1, "b", 3)
as.numeric(x)

4/7: 6
6 + 4/7
6 + 8/7 

a <- seq(1, 10, 0.5)
a

seq(1, 10)

x <- c("1", "3", "5")
x

# 2.9 Sorting
library(dslabs)

data("murders")

sort(murders$total)

# 2.9.2 order

x <- c(31, 4, 15, 92, 65)
sort(x)

murders$state[1: 6]

murders$abb[1: 6]

ind <- order(murders$total)
murders$abb[ind]

max(murders$total)

# 2.10 Sorting
i_max <- which.max(murders$total)
murders$state[i_max]

# 2.9.4 rank

x <- c(31, 4, 15, 92, 65)
rank(x)

x <- c(1, 2, 3)
y <- c(10, 20, 30, 40, 50, 60, 70)

x + y

library(dslabs)
data("murders")

temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

city_temps <- data.frame(name = city, temperature = temp)

data("na_example")

str(na_example)

mean(na_example)

library(dslabs)

data("murders")

murders$state[which.max(murders$population)]

# 2.11.1 Rescaling a vector
inches <- c(69, 62, 66, 70, 70, 73, 67, 73, 67, 70)

inches * 2.54

inches - 69

# 2.11.2 Two vectors
murder_rate <- murders$total / murders$population * 100000

murders$abb[order(murder_rate)]

# 2.13 Indexing

# 2.13 Indexing
library(dslabs)
data("murders")

# 2.13.1 Subsetting with logicals
murder_rate <- murders$total / murders$population * 100000

ind <- murder_rate < 0.71
ind

ind <- murder_rate <= 0.71
ind

murders$state[ind]
sum(ind)

# 2.13.2 Logical operators
TRUE & TRUE

TRUE & FALSE

FALSE & FALSE

west <- murders$region == "West"
safe <- murder_rate <= 1

ind <- safe & west
murders$state[ind]

# 2.13.3 which
ind <- which(murders$state == "California")
murder_rate[ind]

# 2.13.4 match
ind <- match(c("New York", "Florida", "Texas"), murders$state)
ind

murder_rate[ind]

# 2.14 Exercises

# 2.13.5 %in%
c("Boston", "Dakota", "Washington") %in% murders$state

match(c("New York", "Florida", "Texas"), murders$state)

which(murders$state %in% c("New York", "Florida", "Texas"))

# 2.14 Exercises
library(dslabs)
data("murders")

# 2.15 Basic plots

# 2.15.1 plot

x <- murders$population / 10^6
y <- murders$total 

plot(x, y)

with(murders, plot(population, total))

# 2.15.2 hist

# 2.15 Basic plots

x <- with(murders, total / population * 100000)
hist(x)

murders$state[which.max(x)]

# 2.15.3 boxplot

murders_rate <- with(murders, total / population * 100000)
boxplot(murder_rate~region, data = murders)

# 2.15.4 image
x <- matrix(1: 120, 12, 10)
image(x)

# 2.16 Exercises
library(dslabs)

data("murders")

population_in_millions <- murders$population / 10^6
total_gun_murders <- murders$total

plot(population_in_millions, total_gun_murders)

print("Bravo")








































































































































































































