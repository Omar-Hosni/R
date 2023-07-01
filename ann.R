install.packages('keras')
library(keras)
install_keras(tensorflow="gpu")

fashion_mnist <- dataset_fashion_mnist()
C(train_images, train_labels) <- fashion_mnist$train
C(test_images, test_labels) <- fashion_mnist$test

#explore the data structure
dim(train_images)
str(train_images)
fobject <- trian_images[5,,]
plot(as.raster(fobject, max=255))
class_names = c('T-shirt/top',
                'Trouser',
                'Pullover',
                'Dress',
                'Coat',
                'Sandal',
                'Shirt',
                'Sneaker',
                'Bag',
                'Ankle boot')

class_names[train_labels[5]+1]

#normalizing [(X-mean)/std.Dev]

train_images <- train_images/255
test_images <- test_images/255

val_indices <- 1:5000
val_images <- train_images[val_indices,,]
part_train_images <- train_images[-val_indeices,,]
val_labels <- train_labels[val_indices]
part_train_labels <- train_labels[-val_indices]

model <- keras_model_sequential()
model %>%
layer_flatten(input_shape=c(28,28))
layer_dense(units=128, activation='relu')
layer_dense(units=10, activation='softmax')

model %>% compile(
optimizer='sgd',
loss='sparse_categorical_crossentropy',
metrics=c('accuracy')
)

model %>% fit(part_train_images, part_train_labels, epochs=30, batch_size=100, validation_data=list(val_images,val_labels))









