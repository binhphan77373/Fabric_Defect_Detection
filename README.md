# Fabric Defect Detection Using YOLO11

This repository contains implementation of fabric defect detection models using the latest YOLO11 architecture on the TILDA Fabric Dataset.

## Overview

This project implements and evaluates YOLO11 models for automated fabric defect detection, comparing performance across different model variants and against previous YOLO versions.

## TILDA Fabric Dataset

- Created by Irvin Andersen for fabric defect detection research
- Contains 896 fabric images at 416x416 resolution
- Features 4 defect types: hole, objects, oil spot, and thread error
- Publicly available (accessed on April 4, 2024)

## YOLO11 Architecture

Released by Ultralytics on September 30, 2024 after debut at YOLO Vision 2024, YOLO11 features:

### Key Components
1. **Backbone**
   - Extracts multi-scale features from input images
   - Utilizes efficient C3k2 blocks based on Cross-Stage Partial networks
   - Incorporates SPPF for spatial pooling and C2PSA blocks for spatial attention
   - Enhances detection of small and occluded objects

2. **Neck**
   - Aggregates feature maps from different scales
   - Uses efficient feature aggregation through upsampling and concatenation
   - Improves detection performance in cluttered scenes

3. **Head**
   - Produces bounding boxes, class probabilities, and confidence scores
   - Operates at three scales (P3, P4, P5) for detecting objects of varying sizes

### Model Variants
- **YOLO11n**: Smallest model with only 2.6M parameters (similar size to a JPEG)
- **YOLO11x**: Largest model with approximately 56M parameters

## Training Setup

The models were trained on the TILDA Fabric Dataset with the following distribution:
- Training set: 716 images (80%)
- Validation set: 90 images (10%)
- Test set: 90 images (10%)

## Performance Results

### YOLO11 Variants Comparison
Our experiments compared different YOLO11 variants (YOLO11n, YOLO11s, YOLO11m, YOLO11l, YOLO11x) in both baseline and weighted configurations. The results show:

- YOLO11x achieved the highest mAP50 (0.887) and mAP50-95 (0.645) scores
- Weighted versions consistently outperformed their baseline counterparts
- Even the smallest model (YOLO11n) delivered competitive performance

### YOLO11 vs YOLOv8 Comparison
When comparing YOLO11 against YOLOv8:

- YOLO11 models demonstrated superior performance across all model sizes
- YOLO11x outperformed YOLOv8x by approximately 2.5% in mAP50 metrics
- Smaller YOLO11 variants showed greater relative improvements over their YOLOv8 counterparts

### Efficiency Metrics
Performance-related metrics show:
- Inference time ranges from 1.2ms (YOLO11n) to 3.9ms (YOLO11x)
- GFLOPS range from 4.4 (YOLO11n) to 97.2 (YOLO11x)
- Excellent balance of accuracy and computational efficiency

## Supported Computer Vision Tasks

YOLO11 supports multiple vision tasks applicable to fabric inspection:
1. Object Detection
2. Instance Segmentation
3. Image Classification
4. Pose Estimation
5. Oriented Object Detection (OBB)
6. Object Tracking

## References

1. TILDA Fabric Dataset, accessed on April 4, 2024
2. Khanam, R., & Hussain, M. (2024). YOLOV11: An Overview of the Key Architectural Enhancements
3. Jegham, N., Koh, C. Y., Abdelatti, M., & Hendawi, A. (2024). Evaluating the Evolution of YOLO (You Only Look Once) Models: A Comprehensive Benchmark Study of YOLO11 and Its Predecessors

## Author
Phan Binh
