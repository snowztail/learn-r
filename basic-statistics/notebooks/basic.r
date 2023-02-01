
### LOADING DATA

# Load a table of data from a CSV file
iris <- read.csv( "../assets/iris.csv" )

# See the variables (column names) that are present in the table
str( iris )

# Get hold of a named column as a data vector
iris$sepal.width


### DISPLAYING DATA

# Load the datasets
titanic <- read.csv( "../assets/titanic.csv" )
iris <- read.csv( "../assets/iris.csv" )

# A frequency table
table( titanic$status )

# A bar chart
barplot( table( titanic$status ) )

# A histogram
hist( iris$petal.length, main="My Histogram", xlab="Petal length /cm" )

# A scatter plot
plot( iris$petal.length, iris$petal.width, xlab="Petal length /cm", ylab="Petal width /cm" )

# Add a regression line
abline( lm( iris$petal.width ~ iris$petal.length ), col="red" )


### DESCRIPTIVE STATISTICS

# The mean
mean( iris$sepal.length )

# The median
median( iris$sepal.length )

# A function to get the mode
getmode <- function(v) {
   uniqv <- unique(v)
   uniqv[which.max(table(match(v, uniqv)))]
}
getmode( titanic$status )

# The interquartile range
IQR( iris$sepal.length )

# A box plot
boxplot( iris$sepal.length, horizontal=TRUE, xlab="Sepal length /cm" )

# The variance
var( iris$sepal.length )

# The standard deviation
sd( iris$sepal.length )

# Pearson correlation
cor( iris$petal.length, iris$petal.width )

### EXERCISE

# Load the datasets
abalone <- read.csv( "../assets/abalone.csv" )

# See the variables (column names) that are present in the table
str( abalone )

# Get hold of a named column as a data vector
abalone$Diameter

# A bar chart
barplot( table( abalone$Sex ) )

# A histogram
hist( abalone$Diameter, main="My Histogram", xlab="Diameter /cm" )

# A scatter plot
plot( abalone$Length, abalone$Weight, xlab="Length /cm", ylab="Weight /kg" )

# Add a regression line
abline( lm( abalone$Length ~ abalone$Weight ), col="red" )



# The mean
mean( abalone$Rings )

# The median
median( abalone$Rings )

# A function to get the mode
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(table(match(v, uniqv)))]
}
getmode( abalone$Height )

# The interquartile range
IQR( abalone$Weight )

# A box plot
boxplot( abalone$Weight, horizontal=TRUE, xlab="Weight /kg" )

# The variance
var( abalone$Weight )

# The standard deviation
sd( abalone$Weight )

# Pearson correlation
cor( abalone$Length, abalone$Height )
