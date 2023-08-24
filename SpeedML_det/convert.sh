# Det Converting
mkdir /workspace/det_inference
python /PaddleOCR/tools/export_model.py -c /workspace/complete_config.yaml -o Global.pretrained_model="/workspace/models/best_accuracy" Global.save_inference_dir="/workspace/det_inference/" 2>&1 | tee -a /workspace/log.txt
