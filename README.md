# R Subsetting Error: Handling Missing Column Names
This repository demonstrates a common error in R when subsetting data frames using character vectors, and provides a solution to handle cases where some specified column names might be missing.

## Bug Description:
When you try to subset a data frame in R using a character vector specifying the column names, an error occurs if any of the names in the vector do not exist as column names in the data frame. This is demonstrated in the `bug.R` file.

## Solution:
The solution, found in `bugSolution.R`, involves checking if all the specified columns exist in the data frame before attempting the subsetting.  If a column is missing, it's either skipped or a proper error message is generated, preventing the code from crashing.