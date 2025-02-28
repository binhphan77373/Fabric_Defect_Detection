#!/bin/bash

MODEL_PATH='/home/eyecode-binh/Fabric_Defect_Detection/runs/classify/training_yolo11s/weights/best.pt'
DATA_PATH='/home/eyecode-binh/Fabric_Defect_Detection/dataset/dataset.yaml'
LOG_FILE='/home/eyecode-binh/Fabric_Defect_Detection/validation_log.txt'

python -c "
from ultralytics import YOLO

model = YOLO('$MODEL_PATH')
metrics = model.val(data='$DATA_PATH', split='test')

print('Validation Metrics on Test Set:')
print(metrics)
" 2>&1 | tee -a $LOG_FILE
