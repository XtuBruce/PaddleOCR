# PaddleOCR
PaddleOCR----训练到部署

**维护更新的思路：**
1. 利用基础镜像构建训练、转换环境镜像
2. 将 `SpeedML`、`PaddleOCR`、`models` 文件夹复制到环境镜像中

## [PaddleOCR](PaddleOCR) 文件夹：PaddleOCR 源码更改
- [program.py](PaddleOCR%2Ftools%2Fprogram.py)：
  - line 262/483：进度条显示文件
  - line 654：保存 `complete_config.yaml` 和日志文件
  - line 699：`tensorboard` 日志保存路径设置

## Det 训练镜像制作
### 方法一：从零开始构建
详情见：[dockerfile.train](SpeedML_Det%2Ftrain%2Fdockerfile.train)

### 方法二：先构建环境镜像，后续替换其中文件夹
详情见：[Dockerfile](SpeedML_Det%2Ftrain%2FDockerfile)

## Det 转换镜像制作
### 方法一：从零开始构建
详情见：[dockerfile.convert](SpeedML_Det%2Fconvert%2Fdockerfile.convert)

### 方法二：先构建环境镜像，后续替换其中文件夹
详情见：[Dockerfile](SpeedML_Det%2Fconvert%2FDockerfile)

## Rec 训练镜像制作
### 方法一：从零开始构建
详情见：[dockerfile.train](SpeedML_Rec%2Ftrain%2Fdockerfile.train)

### 方法二：先构建环境镜像，后续替换其中文件夹
详情见：[Dockerfile](SpeedML_Rec%2Ftrain%2FDockerfile)

## Rec 转换镜像制作
### 方法一：从零开始构建
详情见：[dockerfile.convert](SpeedML_Rec%2Fconvert%2Fdockerfile.convert)

### 方法二：先构建环境镜像，后续替换其中文件夹
详情见：[Dockerfile](SpeedML_Rec%2Fconvert%2FDockerfile)


