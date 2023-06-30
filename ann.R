install.packages('keras')
library(keras)
install_keras(tensorflow="gpu")

fashion_mnist <- dataset_fashion_mnist()
C(train_images, train_labels) <- fashion_mnist$train
C(test_images, test_labels) <- fashion_mnist$test

