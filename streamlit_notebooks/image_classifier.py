
#code guidance
#https://www.pluralsight.com/guides/deploying-image-classification-on-the-web-with-streamlit-and-heroku

import tensorflow
from tensorflow.keras.models import load_model
import numpy as np
from PIL import Image,ImageOps
import cv2
import pickle

def image_classifier(img):

    #load in best performing models
    garment_model = load_model('../final_models/final_garment_model',compile=True)
    pattern_model = load_model('../final_models/final_pattern_model',compile=True)

    #manually state classes
    pattern_labels = {0:'animal print',1:'checkered',2:'chevron striped',3:'horizontal striped',4:'paisley',
                    5:'polkadot',6:'solid',7:'vertical striped'}
    garment_labels = {0:'coat',1:'dress',2:'jacket',3:'pants',4:'shorts',
                    5:'skirt',6:'sweater',7:'top',8:'tshirt'}

    #create/shape array
    size=(224,224)
    image = ImageOps.fit(img, size)
    img_array = np.asarray(image)
    data = np.ndarray(shape=(1, 224, 224, 3), dtype=np.float32)
    n_img_array = (img_array.astype(np.float32) / 127.0) - 1
    data[0] = n_img_array
    

    #feed array into models, make predictions
    # p_pred = pattern_model.predict(data)
    # p_prediction = np.argmax(p_pred,axis=1)
    #p_prediction_label = pattern_labels.get(p_prediction)
    # g_pred = garment_model.predict(data)
    # g_prediction = np.argmax(g_pred,axis=1)
    #g_prediction_label = garment_labels.get(g_prediction)
    #p_pred = pattern_labels.get(np.argmax(pattern_model.predict(data),axis=1)[0])
    #g_pred = garment_labels.get(np.argmax(garment_model.predict(data),axis=1)[0])

    p_pred = pattern_labels.get(np.argmax(pattern_model.predict(data)))
    g_pred = garment_labels.get(np.argmax(garment_model.predict(data)))
    
    return p_pred,g_pred

#save down the function as a pickle file
with open("./image_classifier.pkl", "wb") as file:
    pickle.dump(image_classifier, file)
