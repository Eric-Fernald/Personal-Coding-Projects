import app
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import tensorflow as tf
from tensorflow	import keras
from tensorflow.keras.models import Sequential
from tensorflow.keras.callbacks import EarlyStopping
from tensorflow.keras import layers
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.preprocessing import Normalizer
from sklearn.compose import ColumnTransformer
from sklearn.metrics import r2_score

df = pd.read_csv('admissions_data.csv')
df.head()
df = df.drop(columns = ["Serial No."])
df.describe()
labels = df.iloc[:, -1]
feature = df.iloc[:, : -1]
features_train, features_test, labels_train, labels_test = train_test_split(feature, labels, test_size = 0.33,random_state = 42)
numerical_features = feature.select_dtypes(include = ['float64', 'int64'])
numerical_columns = numerical_features.columns

ct = ColumnTransformer([("only numeric", StandardScaler(), numerical_columns)],remainder = "passthrough")
features_train_scaled = ct.fit_transform(features_train)
features_test_scaled = ct.transform(features_test)
features_train_norm = pd.DataFrame(features_train_scaled, columns = features_train.columns)

def design_model(X, learning_rate):
  layers = tf.keras.layers
  Dense = tf.keras.layers.Dense
  model = tf.keras.models.Sequential()
  input = layers.InputLayer(input_shape = (X.shape[1], ))
  model.add(input)
  model.add(Dense(7, activation = "relu"))
  model.add(Dense(1))
  opt = tf.keras.optimizers.Adam(learning_rate = learning_rate)
  model.compile( loss = "mse", metrics = ["mae"], optimizer = opt)
  return model

def fit_model(features_train, labels_train, learning_rate, num_epochs):
  model = design_model(features_train, learning_rate)
  stop = tf.keras.callbacks.EarlyStopping(monitor = "val_loss", mode = "min",verbose = 1, patience = 40 )
  history = model.fit(features_train, labels_train, epochs = num_epochs,batch_size = 16, verbose = 0, validation_split = 0.2, callbacks = [stop])
  return history

learning_rate = 0.01
num_epochs = 1000
history = fit_model(features_train_scaled, labels_train, learning_rate, num_epochs)
val_mse, val_mae = history.model.evaluate(features_test, labels_test, verbose = 0)
print("MAE: ", val_mae)

fig = plt.figure(figsize = (15,10))
ax1 = fig.add_subplot(2, 1, 1)
ax1.plot(history.history['mae'])
ax1.plot(history.history['val_mae'])
ax1.set_title('model mae')
ax1.set_ylabel('MAE')
ax1.set_xlabel('epoch')
ax1.legend(['train', 'validation'], loc='upper left')
 
ax2 = fig.add_subplot(2, 1, 2)
ax2.plot(history.history['loss'])
ax2.plot(history.history['val_loss'])
ax2.set_title('model loss')
ax2.set_ylabel('loss')
ax2.set_xlabel('epoch')
ax2.legend(['train', 'validation'], loc='upper left')
 
fig.tight_layout()