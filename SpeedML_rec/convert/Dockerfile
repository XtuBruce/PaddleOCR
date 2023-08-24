# 分两步构建转换镜像
# 第一步：利用基础镜像构建训练、转换环境镜像
#FROM nvcr.io/nvidia/pytorch:22.07-py3
#
#RUN apt-get update && apt-get install -y libgl1-mesa-glx
#
#COPY models /models
#COPY PaddleOCR /PaddleOCR
#COPY SpeedML_rec /SpeedML
#
#RUN python3 -m pip install paddlepaddle-gpu -i https://mirror.baidu.com/pypi/simple
#
#RUN pip install -r /SpeedML/requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
#RUN rm -r /SpeedML /PaddleOCR
#WORKDIR /workspace

# 第二步：
FROM mirrors.speedbot.net/speedml_ai_base/paddleocr:v1.0

COPY PaddleOCR /PaddleOCR
COPY SpeedML_rec /SpeedML

WORKDIR /workspace

ENTRYPOINT /SpeedML/convert.sh
