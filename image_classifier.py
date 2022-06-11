
import tensorflow as tf
from tensorflow.keras.models import load_models
import numpy as np
from PIL import Image,ImageOps
import pickle

def image_classifier(image):

    garment_model = load_model('./model_folder/model_vg_nsa')
    pattern_model = load_model('.//model_folder/model_vp_nsa_r')

    pattern_labels = {0:'animal',1:'checkered',2:'chevron',3:'horiz',4:'paisley',
                    5:'polka',6:'solid',7:'vertical'}
    garment_labels = {0:'coat',1:'dress',2:'jacket',3:'pants',4:'shorts',
                    5:'skirt',6:'sweater',7:'top',8:'tshirt'}
    
    data = np.ndarray(shape=(1, 224, 224, 3), dtype=np.float32)
    size = (224, 224)
    image = ImageOps.fit(image, size, Image.ANTIALIAS)
    image_array = np.asarray(image)
    normalized_image_array = (image_array.astype(np.float32) / 127.0) - 1

    g_pred = pattern_labels.get(np.argmax(garment_model.predict(normalized_image_array),axis=1))
    p_pred = garment_labels.get(np.argmax(pattern_model.predict(normalized_image_array),axis=1))

    return (g_pred,p_pred)

with open("/image_classifier.pkl", "wb") as file:
    pickle.dump(model_object, file)
