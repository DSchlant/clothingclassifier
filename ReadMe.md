Daniel Schlant Capstone Project

## Background
The growth of the global fashion industry is becoming unsustainable from an environmental perspective. Per Morgan McFall-Johnsen's 2020 report, on behalf of the World Economic Forum (https://www.weforum.org/agenda/2020/01/fashion-industry-carbon-unsustainable-environment-pollution):

* Fashion production accounts for 10% of human carbon emissions
* Between 2020 and 2000, clothing production doubled
* People bought 60% more garments in 2014 than they did in 2000, and were keeping clothes for half as long

This leads to more plastic microfibers in the world's oceans, massive amounts of textile in landfills, and the depletion of natural water resources around the world, especially in developing countries relied upon for the manufacturing of clothing products.

The rise of fast fashion has likely exacerbated the issue and will likely continue to do so. While it is not a complete panacea for the issues presented by the growth of global fashion, second-hand fashion and clothes thrifting can reduce water waste and carbon emissions. (https://globalfashionagenda.org/news-article/conscious-consumption-a-citizens-guide/) 

## Problem Statement
I collected images of clothing from a deep online image database(http://mmlab.ie.cuhk.edu.hk/projects/DeepFashion.html) and tagged the images based on garment and pattern. I identified nine articles of garment, and eight patterns. The intention is to develop computer vision models that classify an image based on the type of clothing and the clothing's pattern. 

In functional terms, this model would serve as a base from which, when expanded upon, it would be possible to analyze an image and identify characteristics of the clothing in that image. When utilized on pictures of clothing that a consumer is interested in, the model could be used to redirect the consumer to articles of clothing with similar characteristics on second-hand sites. This would likely be done via the keywords/labels the model assigned to the image. In this way, consumers would be able to enjoy the styles they are interested in without buying newly manufactured clothes.

Due to the scope of the data problem, the metric that will be focused upon will be accuracy - how often do the models correctly identify the garment type and the pattern. Balanced accuracy will also be considered at times to account for imbalance in ground truths within the dataset.

I consider developing the models to identify the garments and patterns to be the primary goal of this project. Implementing a framework through which the model is presented an image and then redirects to a second-hand site (i.e. Etsy, thredUP) will be considered outside of this project's current scope, and will be a subject for further research. 

## The Image Dataset
The Deep Fashion dataset that was used for this analysis, collected by researchers at the Multimedia Laboratory at The Chinese University of Hong Kong, is very extensive. The dataset contains over 800,000 images, with hundreds of categories and attribute labels. The dataset was also quite appealing due to the variety of image types available. The dataset includes images of clothes being modeled on humans, clothes modeled on mannequins, clothes without models, and real-life photos, with a wide selection of poses and angles. It provides very robust set of images on which to train and test. 

However, upon review of the dataset and the attribute labels, many of the labels and organization were not consistent and were often incorrect. This applied to both the kind of the garment tagged and the attributes assigned to each photo. Thus, it was necessary to manually tag each photo that would be used for analysis. Using Amazon Sagemaker or a similar program was considered, but as the assignment of garment types can be subjective, I elected to proceed with tagging the images myself.

For the dataset that would be used for modeling, 5200 images were manually tagged for clothing type and clothing pattern. 

## Data Labels
The garment labels used:
* T-shirt: short-sleeved shirt without buttons
* Top: short-sleeved/no-sleeved garment worn on upper body. Sometimes has buttons. Sometimes very close in nature to t-shirt, tagged at my own discretion
* Coat: outerwear that extends below the waist
* Jacket: outerwear that does not extend below the waist
* Shorts: bottom with two legs that do not extend below the knee
* Pants: bottom with two legs that extends past the knee
* Skirt: bottom without legs that can extend past knee
* Dress: a garment that extends past the waist 
* Sweater: Long-sleeved garment worn on upper body

The pattern labels used:
* Vertical Stripes
* Horizontal Stripes
* Chevron Stripes (stripes forming a v-type shape)
* Animal Print
* Solid
* Paisley
* Polkadot
* Checkered

When manually tagging the images found in the Deep Fashion dataset, an effort was made to tag images that were of reasonably high quality, did not include a large degree of background 'noise', and that prominently featured an article of clothing for the image segmentation technique to focus upon. After performing several reviews of subsets of the images, the dataset that resulted was heavily weighted towards 'solid' patterned clothing, relative to the other patterns. With ~57% of the dataset containing a 'solid' article of clothing. Thus, model training and testing for pattern classification was done on both 

## Image Preparation
In preparing the images for modeling analysis, the images were subjected to image augmentation: the images are rescaled, flipped vertically/horizontally, rotated up to 40 degrees, shifted in width, height, slant, and zoom. This aims to provide the models with more data on each image to learn from.

The image dataset was also exposed to three different image segmentation techniques: k-means, contour, and thresholding. Each technique takes a different to image segmentation, and I was interested to see if a certain technique yielded a higher accuracy in classifications, or if not segmenting the image yielded the best results.

## Model Performance
The best performing model utilized VGG16 transfer learning.

## For Further Research
Some items for further research might include:
* Increasing the scope of the label system: include more patterns (tie-dye, camouflage, floral, etc.), garment types/attributes (split-backed dress, turtleneck) and clothing texture.
* Increasing the scope of the label system would require the tagging of many more images in order to provide the model with enough data to perform efficiently. Continuing to provide cross-pose data, and 'real-life' photos will continue to improve model and improve its ability to identify and classify clothing in images that might be found on social media. 
* Integrate aspects of model into an image recommendation system that receives an image input and generates a return of similar images from an available dataset. This might be functionally integrated into a system directing consumers to second-hand clothing marketplaces and websites, or the interface with shopping websites might be done via text labels.



## Citation of Dataset Used:
@inproceedings{liuLQWTcvpr16DeepFashion,
 author = {Liu, Ziwei and Luo, Ping and Qiu, Shi and Wang, Xiaogang and Tang, Xiaoou},
 title = {DeepFashion: Powering Robust Clothes Recognition and Retrieval with Rich Annotations},
 booktitle = {Proceedings of IEEE Conference on Computer Vision and Pattern Recognition (CVPR)},
 month = {June},
 year = {2016}
 }