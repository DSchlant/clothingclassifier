
#code guidance
#https://www.pluralsight.com/guides/deploying-image-classification-on-the-web-with-streamlit-and-heroku

import tensorflow
from tensorflow.keras.models import load_model
import numpy as np
from PIL import Image,ImageOps
import cv2
import pickle

def image_classifier(image):

    #load in best performing models
    garment_model = load_model('../final_models/model_vg_nsa_001')
    pattern_model = load_model('../final_models/model_vp_nsa_001')

    #manually state classes
    pattern_labels = {0:'animal print',1:'checkered',2:'chevron striped',3:'horizontal striped',4:'paisley',
                    5:'polkadot',6:'solid',7:'vertical striped'}
    garment_labels = {0:'coat',1:'dress',2:'jacket',3:'pants',4:'shorts',
                    5:'skirt',6:'sweater',7:'top',8:'tshirt'}

    #create/shape array
    size=(224,224)
    image = ImageOps.fit(image, size)
    img_array = np.asarray(image)
    data = np.ndarray(shape=(1, 224, 224, 3), dtype=np.float32)
    data[0] = img_array

    #feed array into models, make predictions
    p_pred = pattern_labels.get(np.argmax(pattern_model.predict(data),axis=1)[0])
    g_pred = garment_labels.get(np.argmax(garment_model.predict(data),axis=1)[0])
    
    return [g_pred,p_pred]

#save down the function as a pickle file
with open("./image_classifier.pkl", "wb") as file:
    pickle.dump(image_classifier, file)
