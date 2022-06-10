#https://www.pluralsight.com/guides/deploying-image-classification-on-the-web-with-streamlit-and-heroku

import streamlit as st
import numpy as np
import pickle
import time
import pandas as pd
from PIL import Image
#from image_classifier import generate_image_class

st.set_page_config(layout="wide")

st.title("What is that??")
st.header("Upload a Photo, the proprietary model will attempt to identify the article of clothing.")

user_image= st.file_uploader('Please select a file to upload.',type='jpeg',accept_multiple_files=False)

if user_image is not None:
    image = Image.open(user_image)
    st.image(image, caption='Uploaded photo.', use_column_width=True)
    st.write("")
    st.write("Classifying...")
    #labels = generate_image_class() 
