# Author: Armin Masoumian (masoumian.armin@gmail.com)

# Load the required libraries
library(yolov4)
library(magrittr)
library(ggplot2)
library(jpeg)
library(gridExtra)

# Load the YOLOv4 model with custom weights
model_path <- "path/to/custom/weights"
cfg_path <- "path/to/yolov4-custom.cfg"
names_path <- "path/to/class/names/file"
model <- yolov4_load_model_custom_weights(model_path, cfg_path, names_path)

# Load multiple images for detection
image_dir <- "path/to/image/directory"
image_files <- list.files(image_dir, full.names = TRUE)
images <- lapply(image_files, readJPEG)

# Perform object detection on each image
detections_list <- lapply(images, yolov4_detect, model = model)

# Print the detected objects and their confidence scores for each image
for (i in seq_along(detections_list)) {
  cat(sprintf("Image %d:\n", i))
  detections <- detections_list[[i]]
  for (j in seq_along(detections)) {
    cat(sprintf("%s: %.2f\n", detections[[j]]$label, detections[[j]]$conf))
  }
}

# Display the images with bounding boxes around the detected objects
plots <- list()
for (i in seq_along(images)) {
  img <- images[[i]]
  detections <- detections_list[[i]]
  plot_title <- sprintf("Image %d", i)
  p <- rasterGrob(img, interpolate = TRUE) +
    ggplot2::ggtitle(plot_title) +
    theme_void()
  for (j in seq_along(detections)) {
    x1 <- detections[[j]]$bbox$xmin
    y1 <- detections[[j]]$bbox$ymin
    x2 <- detections[[j]]$bbox$xmax
    y2 <- detections[[j]]$bbox$ymax
    conf <- round(detections[[j]]$conf, 2)
    label <- detections[[j]]$label
    p <- p + geom_rect(xmin = x1, ymin = y1, xmax = x2, ymax = y2, fill = NA, color = "red", size = 2
