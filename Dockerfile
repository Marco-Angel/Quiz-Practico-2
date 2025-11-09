'FROM python:3.9

ENV DEBIAN_FRONTEND=noninteractive
ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN git clone https://github.com/rparak/PyBullet_Industrial_Robotics_Gym.git .

RUN pip install --no-cache-dir matplotlib pybullet pandas numpy scipy stable-baselines3 gymnasium

ENV PYTHONPATH="${PYTHONPATH}:/app/src"

RUN mkdir -p /app/Data/Model /app/Data/Prediction /app/Data/Training

CMD ["python", "Evaluation/PyBullet/Environment/test_env.py"]' | Out-File -FilePath Dockerfile -Encoding ASCII -Force
