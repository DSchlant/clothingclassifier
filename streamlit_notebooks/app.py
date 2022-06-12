

import streamlit as st
import numpy as np
import pickle
import time
import pandas as pd
from PIL import Image,ImageOps
from image_classifier import image_classifier
import cv2

#load in image classifying function from pickle file
with open("image_classifier.pkl", "rb") as file:
  image_classifier = pickle.load(file)

st.title("What is that??")
st.header("Upload a Photo, the proprietary model will attempt to identify the article of clothing.")

#set up image uploader widget
user_image = st.file_uploader('Please select a photo.',type=['jpeg','jpg'])

#code for opening image, executing prediction, reading prediction to screen.
if user_image is not None:
    col1, col2, col3 = st.columns(3)
    with col1:
      st.write(' ')
    image = Image.open(user_image)
    new_size=(1064,1064)
    n_image = image.resize(new_size)
    with col2:  
      st.image(n_image, caption='Your next LOOK!')
      st.write("")
      with st.spinner("Making an assessment..."):
        time.sleep(1)
        labels = image_classifier(image)
        st.write('This is a(n) '+labels[1]+' '+labels[0]+' and it is a TOOT.')
    with col3:
      st.write(' ')
    st.write('')
    st.write('')

