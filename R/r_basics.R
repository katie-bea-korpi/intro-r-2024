#### R Basics ####
# "A foolish consistency is the hobgoblin of 
#   little minds"   -Ralph Waldo Emerson 

# Literals ----
"this is a string literal"  #double quotes preferred in R, but not required
42
T
F
t

# Operators ----
# arithmetic
2+3    #note the spacing
2 + 3
2 - 3
2 * 3   #multiplication
2 / 3

2 ** 3  #but be careful; this is an exponent
2^3     #that's better

# Comparison
2 == 2 #tests for equality
"joe" == "Joe"  # case-sensitive
"Joe" == "Joe"

2! = 1 # tests inequality
2 != 1

# somewhat of a cruel joke
TRUE == 1
isTRUE(TURE==1)
isTRUE(1)
isTRUE(TRUE)  #function testing if the argument is literally TRUE
?isTRUE    # queries built-in help

2 < 3 & 2 > 3  # both have to pass to return true
2 < 3 | 2 > 3   # either one true, all true
2 > 3 & (2 == 1 | 2 == 2) # grouping statements for ordering

# type matters (sometimes)
"joe"  # string or character type
typeof("joe")
42 # numeric type (double precision)
typeof(42)
TRUE
typeof(TRUE)  # logical or boolean type

42 == "42" #equality can cross types
identical(42, "42")  # type matters for identity
?ty
??ty


# variables ----
x <- "this is a string"  # in R, read as assigning the sting to variable x
x
typeof(x)
x <- 10
x
x ^ 2
x <- 'pizza'
pizza <- 'x'  #variable names can be most anything
pizza
my_var <- 42
x <- my_var # helps reader follow assignment direction
x
#  my_var.pdx <- 42  #works, but don't
#  always use lower case and underscores










# data structures ----
# vectors have a single dimension, like a column or row of data
a <- c(1, 2, 3) # c() stands for collect (what's inside)
a
a + 1


a <- c(1, 2, 3, "4") # R will auto-type to form that "works"
a
typeof(a)
a + 1

a <- c(1, 2, 3)
a < 3

any(a < 3)
all(a < 3)

3 %in% a  # testing membership in a vector
4 %not in% a  # nope
!4 %in% a  # yep


# data frames - the key structure for data science, multi-dimensional
#   collections of vectors
df <- data.frame(a = c(1,2,3),
                 b = c("joe", "tammy", "matt")) # collection of vectors
df

df$a # references single column
df$b 

df$mode <- c("bike", "car", "bus")  #adding a column
df
summary(df) #summarize by column


# Special type: factors, and putting it all together ----
# factors are categorical variables with a fixed set of
#   potential values


