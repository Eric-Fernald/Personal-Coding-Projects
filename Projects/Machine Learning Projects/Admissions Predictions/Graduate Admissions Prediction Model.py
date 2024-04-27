import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

import tensorflow as tf
from tensorflow import keras
from tensorflow.keras.callbacks import EarlyStopping
from tensorflow.keras import Sequential
from tensorflow.keras import layers

from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import r2_score

# Load admissions data (modify the file path as needed)
admissions_data = pd.read_csv(r"Projects\Machine Learning Projects\Admissions Predictions\admissions_data.csv")

# Mark predicted values
labels = admissions_data.iloc[:, -1]
features = admissions_data.iloc[:, 1:8]

# Split training and test set
features_train, features_test, labels_train, labels_test = train_test_split(features, labels, test_size=0.25, random_state=42)

# Standardizing data by scaling it
sc = StandardScaler()
features_train_scale = sc.fit_transform(features_train)
features_test_scale = sc.transform(features_test)

# Function to design the model
def design_model(feature_data):
    model = Sequential()
    num_features = feature_data.shape[1]
    model.add(layers.Input(shape=(num_features,)))  # Explicitly define the input shape
    model.add(layers.Dense(16, activation='relu'))
    model.add(layers.Dropout(0.1))
    model.add(layers.Dense(8, activation='relu'))
    model.add(layers.Dropout(0.2))
    model.add(layers.Dense(1))
    
    opt = keras.optimizers.Adam(learning_rate=0.005)
    model.compile(loss='mse', metrics=['mae'], optimizer=opt)
    return model

# Apply the model to the scaled training data
model = design_model(features_train_scale)

# Apply early stopping for efficiency
es = EarlyStopping(monitor='val_loss', mode='min', verbose=1, patience=20)

# Fit the model with 100 epochs and a batch size of 8
history = model.fit(features_train_scale, labels_train.to_numpy(), epochs=100, batch_size=8, verbose=1, validation_split=0.25, callbacks=[es])

# Evaluate the model
val_mse, val_mae = model.evaluate(features_test_scale, labels_test.to_numpy(), verbose=0)
print("MAE: ", val_mae)

# Evaluate r-squared score
y_pred = model.predict(features_test_scale)
print("R-squared Score: ", r2_score(labels_test, y_pred))

# Plot MAE and val_MAE over each epoch
fig = plt.figure()
ax1 = fig.add_subplot(2, 1, 1)
ax1.plot(history.history['mae'])
ax1.plot(history.history['val_mae'])
ax1.set_title('Model MAE')
ax1.set_ylabel('MAE')
ax1.set_xlabel('Epoch')
ax1.legend(['Train', 'Validation'], loc='upper left')

# Plot loss and val_loss over each epoch
ax2 = fig.add_subplot(2, 1, 2)
ax2.plot(history.history['loss'])
ax2.plot(history.history['val_loss'])
ax2.set_title('Model Loss')
ax2.set_ylabel('Loss')
ax2.set_xlabel('Epoch')
ax2.legend(['Train', 'Validation'], loc='upper left')

plt.tight_layout()
plt.show()
# Current MAE: ~0.047
# Current R-Squared Score: ~0.795