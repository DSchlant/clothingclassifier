#https://www.pluralsight.com/guides/deploying-image-classification-on-the-web-with-streamlit-and-heroku

import streamlit as st
import numpy as np
import pickle
import time
import pandas as pd
from PIL import Image
from image_classifier import image_classifier

with open("/image_classifier.pkl", "rb") as file:
  image_classifier = pickle.load(file)

if user_image is not None:
    image = Image.open(user_image)
    st.image(image, caption='Uploaded photo.', use_column_width=True)
    st.write("")
    with st.spinner("Making an assessment..."):
      time.sleep(2)
      labels = image_classifier(image)
    st.write('This is a '+labels[0]+' '+labels[1]+' and it is a toot.')
