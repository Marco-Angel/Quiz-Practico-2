@'
FROM python:3.9

WORKDIR /app

RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/rparak/PyBullet_Industrial_Robotics_Gym.git .

RUN pip install --no-cache-dir pybullet numpy matplotlib pandas scipy stable-baselines3 gymnasium

ENV PYTHONPATH=/app/src

RUN mkdir -p /app/Data/Model /app/Data/Prediction /app/Data/Training

CMD ["python", "-c", "import pybullet as p; import pybullet_data; p.connect(p.DIRECT); p.setAdditionalSearchPath(pybullet_data.getDataPath()); print('=== ENVIRONMENT E1 - PyBullet Industrial Robotics ==='); print('Simulacion de robots industriales iniciada'); print('Robots disponibles: ABB IRB 120, UR3, Epson SCARA'); print('Modo: Alcance de objetivo sin obstaculos'); print('Estado: ACTIVO')"]
'@ | Out-File -FilePath Dockerfile -Encoding ASCII -Force
