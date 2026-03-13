
import warnings
warnings.filterwarnings('ignore')

import tensorflow as tf 
classifierLoad = tf.keras.models.load_model('lungmodel.h5')

import numpy as np
from keras.preprocessing import image
from tensorflow.keras.utils import load_img, img_to_array

img = load_img('Sample/l2.png', target_size=(200, 200))
img_array = img_to_array(img) / 255.0
img_array = np.expand_dims(img_array, axis=0)  # shape: (1, 200, 200, 3)

# Predict
result = classifierLoad.predict(img_array)
pred_index = np.argmax(result[0])
classes = ['Covid', 'Influenza', 'Normal', 'Pneumonia', 'Tuberculosis']
out = classes[pred_index]

print("Predicted:", out)











































# test_image = load_img('Sample/Covid (14).png', target_size = (200, 200))
# #test_image = image.img_to_array(test_image)
# test_image = np.expand_dims(test_image, axis=0)
# print(test_image)
# result = classifierLoad.predict(test_image)
# print(result)
# out=''
# if result[0][0] == 1:
#     print("Covid")
#     out = "Covid"
# elif result[0][1] == 1:
#     print("Influenza")
#     out = "Influenza"
# elif result[0][2] == 1:
#     print("Normal")
#     out = "Normal"
# elif result[0][3] == 1:
#     print("Pneumonia")
#     out = "Pneumonia"
# elif result[0][4] == 1:
#     print("Tuberculosis")
#     out = "Tuberculosis"