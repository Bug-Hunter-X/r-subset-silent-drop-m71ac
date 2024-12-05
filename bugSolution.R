```r
# This improved code checks for the existence of all columns before subsetting.

data <- data.frame(A = 1:3, B = 4:6)
columns_to_subset <- c("A", "C", "D")

# Check if all columns exist
if (all(columns_to_subset %in% names(data))) {
  subset_data <- data[, columns_to_subset]
} else {
  missing_cols <- setdiff(columns_to_subset, names(data))
  stop(paste("Error: Columns", paste(missing_cols, collapse = ", "), "not found in data frame."))
}
```