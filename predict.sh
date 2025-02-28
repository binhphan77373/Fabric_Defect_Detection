#!/bin/bash

# Set the model path, image source, and log file path
MODEL_PATH='/home/eyecode-binh/Fabric_Defect_Detection/runs/classify/training_yolo11s/weights/best.pt'
IMAGE_URL='/home/eyecode-binh/Fabric_Defect_Detection/dataset/test/good/000_patch0-0.png'
LOG_FILE='/home/eyecode-binh/Fabric_Defect_Detection/predict_log_2.txt'

# Run the prediction and log the output
python -c "
from ultralytics import YOLO

model = YOLO('$MODEL_PATH')
results = model.predict(source='$IMAGE_URL')

# Display the prediction results
#results.show()
" 2>&1 | tee -a $LOG_FILE &
