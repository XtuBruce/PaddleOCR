# 作用：构建特定模式下的镜像
# example：./build.sh paddleocr det train 1.0.0 1
# 第一个参数：project名称，[paddleocr]
# 第二个参数：tasks任务，[det、rec]
# 第三个参数：image作用，[train、convert]
# 第四个参数：version信息，[1.0.0]
# 第五个参数：显卡数量，[1、2]

# 更新 Dockerfile 文件
rm ~/Projects/$1/Dockerfile*
cp ~/Projects/$1/SpeedML_$2/$3/Dockerfile* ~/Projects/$1/Dockerfile
cd ~/Projects/$1

# 构建镜像
docker build -t mirrors.speedbot.net/speedbot_ai/$1_$2_$3:v$4 .

# 快速验证
docker run -it --rm --gpus $5 --shm-size=8G -v ~/Projects/$1/workspace_$2:/workspace mirrors.speedbot.net/speedbot_ai/$1_$2_$3:v$4

# push镜像
#docker mirrors.speedbot.net/speedbot_ai/$1_$2_$3:v$4
