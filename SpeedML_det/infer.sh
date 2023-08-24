# Det Inferring
# DB检测模型inference 模型预测
#python /PaddleOCR/tools/infer/predict_det.py --det_algorithm="DB" --det_model_dir="/workspace/det_db_inference/" --image_dir="/workspace/test_img/" --use_gpu=True

# 如果是其他检测，比如EAST模型，det_algorithm参数需要修改为EAST，默认为DB算法
#python /PaddleOCR/tools/infer/predict_det.py --det_algorithm="EAST" --det_model_dir="./output/det_db_inference/" --image_dir="/workspace/test_img/" --use_gpu=True

# 测试检测效果
# 测试单张图像的检测效果：
python /PaddleOCR/tools/infer_det.py -c /workspace/complete_config.yaml -o Global.infer_img="/workspace/test_img/img_1.jpg" Global.pretrained_model="/workspace/models/best_accuracy"

# 测试DB模型时，调整后处理阈值：
#python /PaddleOCR/tools/infer_det.py -c /workspace/complete_config.yaml -o Global.infer_img="/workspace/test_img/img_1.jpg" Global.pretrained_model="/workspace/models/best_accuracy"  PostProcess.box_thresh=0.6 PostProcess.unclip_ratio=2.0

# 测试文件夹下所有图像的检测效果：
#python /PaddleOCR/tools/infer_det.py -c /workspace/complete_config.yaml -o Global.infer_img="/workspace/test_img/" Global.pretrained_model="/workspace/models/best_accuracy"