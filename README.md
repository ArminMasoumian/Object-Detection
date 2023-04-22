# Object-Detection

This repository contains an example code for performing object detection using the YOLOv4 model in R. The code uses the yolov4 package and can be run on a single image or multiple images in a directory. The detected objects and their confidence scores are printed to the console, and the images are displayed with bounding boxes around the detected objects and labels showing the object label and confidence score.

## Instructions

Clone this repository to your local machine.

Open the 'yolov4_object_detection.R' file in R or RStudio.

Modify the file paths to point to your custom YOLOv4 model, configuration file, class names file, and image directory.
Run the code.

Note that the YOLOv4 model files and class names file are not included in this repository and must be obtained separately.

## Datasets

Here are some examples of object detection datasets:

[COCO](https://cocodataset.org/#home) (Common Objects in Context): a large-scale object detection, segmentation, and captioning dataset with over 330K images and more than 2.5 million object instances labeled across 80 categories.

[Pascal VOC](http://host.robots.ox.ac.uk/pascal/VOC/) (Visual Object Classes): an annual computer vision challenge dataset consisting of images for object detection, segmentation, and classification. The dataset includes 20 object categories with a total of 11,530 annotated images.

[KITTI](https://www.cvlibs.net/datasets/kitti/) (Karlsruhe Institute of Technology and Toyota Technological Institute): a dataset for autonomous driving and robotics research that includes object detection and tracking, 3D object detection, and stereo depth estimation. The dataset contains a total of 7,481 annotated images and 3D point clouds.

[ImageNet](https://www.image-net.org/): a large-scale image database that contains over 14 million images categorized into more than 21,000 classes. ImageNet includes a subset for object detection, which contains 200 object classes and over 500,000 images.

[Open Images Dataset](https://storage.googleapis.com/openimages/web/index.html): a large-scale dataset that includes more than 9 million images with over 600 object categories for object detection, segmentation, and visual relationship detection.

## Results

![](https://github.com/ArminMasoumian/Object-Detection/blob/main/Object%20Detection.png)
