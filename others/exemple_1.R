
# Main variables
TARGET <- "Cible"
TRAIN_SET <- mlprepr:::test_dt_1(1000)
TRAIN_SET[, Cible := factor(sample(0:1, .N, replace = T))]
TEST_SET <- mlprepr:::test_dt_1(1000)

# Loading data
dt_train <- TRAIN_SET

# Are there strange variables in the train set ?
my_drift_1 <- drift_detector(TRAIN_SET)
drift_print(my_drift_1)
# Are there strange variables in the test set ?
my_drift_2 <- drift_detector(TRAIN_SET[, - (TARGET), with = F], TEST_SET)
drift_print(my_drift_2)

# Define parameters
params <- learn_transformer_parameters(target_colname = TARGET)

# Learn the transformations needed
transformer <- learn_transformer(dt_train, params = params)

# Apply them
apply_transformer(dt_train, transformer)

# Apply them for test set
dt_test <- TEST_SET
apply_transformer(dt_test, transformer)

# Control
control_output_table(dt_test)
