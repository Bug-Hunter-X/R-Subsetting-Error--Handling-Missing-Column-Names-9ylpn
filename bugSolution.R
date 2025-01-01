```R
# This code robustly handles missing column names during subsetting.
df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "D", "C")

# Check if all columns exist
missing_cols <- setdiff(cols_to_select, names(df))
if (length(missing_cols) > 0) {
  warning(paste("The following columns are missing:", paste(missing_cols, collapse = ", ")))
  # Option 1: Select only existing columns
  cols_to_select <- intersect(cols_to_select, names(df))
  # Option 2: Handle the error differently (e.g., stop execution)
  # stop("Error: Missing columns in the selection.")
}

subset_df <- df[, cols_to_select, drop = FALSE]
```