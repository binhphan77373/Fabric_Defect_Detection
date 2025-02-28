#!/bin/bash
LOG_FILE="training_yolo11s.txt"

yolo task=classify mode=train model=yolo11s-cls.pt data="/home/eyecode-binh/Fabric_Defect_Detection/dataset/" epochs=200 batch=64 imgsz=64 name=training_yolo11s device=0,1 2>&1 | tee $LOG_FILE &
