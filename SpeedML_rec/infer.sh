# Rec Inferring
#python /PaddleOCR/tools/infer/predict_rec.py --rec_model_dir="/workspace/rec_inference/" --image_dir="/workspace/test_img/" --rec_image_shape="3, 48, 320" --rec_char_dict_path="/PaddleOCR/ppocr/utils/en_dict.txt"

# 测试检测效果
# 测试单张图像的检测效果：
python /PaddleOCR/tools/infer_rec.py -c /workspace/complete_config.yaml -o Global.infer_img="/workspace/test_img/img_1.jpg" Global.pretrained_model="/workspace/models/best_accuracy"

# 综合测试：
python3 tools/infer/predict_system.py --image_dir="/workspace/test_img/" --det_model_dir="/workspace/models/det/" --rec_model_dir="/workspace/models/rec/"
