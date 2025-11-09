# Quiz-Practico-2
---
## Paso 1: El punto de partida

<img width="790" height="356" alt="image" src="https://github.com/user-attachments/assets/ddd27725-74e8-4b4f-a831-2fb671a45031" />

Esta imagen muestra:

- Creación de carpeta: mkdir EnvironmetE1
- Verificación: dir muestra que la carpeta Environmet
- Navegación: cd EnvironmetE1
- Ahora estás dentro de la carpeta EnvironmetE1 y listo para crear los archivos Dockerfile y docker-compose.yml.

---

## Paso 2: Creación del Dockerfile

<img width="800" height="427" alt="image" src="https://github.com/user-attachments/assets/78926c4a-89f7-40f9-b97a-c50a09f38b62" />

- La imagen muestra un Dockerfile basado en Python 3.9 que instala dependencias como pybullet, numpy, matplotlib, pandas, y stable-baselines3. Clona el repositorio PyBullet_Industrial_Robotics_Gym, configura rutas de trabajo y ejecuta un script de Python que inicializa una simulación de robots industriales (ABB IRB 120, UR3, Epson SCARA).

---

## Paso 3: Creación docker-compose.yml
<img width="731" height="277" alt="image" src="https://github.com/user-attachments/assets/ea97ae8f-2781-4772-b049-e0e6562ba947" />

- La imagen muestra un archivo docker-compose.yml versión 3.8, que define un servicio llamado pybullet-e1. Este servicio construye una imagen desde el directorio actual, nombra el contenedor pybullet_environment_e1 y monta un volumen local ./Data en /app/Data dentro del contenedor.

---

## Paso 4: Visualización de los dos archivos
<img width="741" height="278" alt="image" src="https://github.com/user-attachments/assets/3f29d6aa-3e31-4d29-ab01-115ed52d0cd3" />

- La imagen muestra el contenido del directorio C:\Users\marqu\Enviroment, que contiene una carpeta llamada Data y dos archivos: docker-compose.yml y Dockerfile.
  
 ---
 
## Paso 5: Construcción del contenedor

<img width="800" height="694" alt="image" src="https://github.com/user-attachments/assets/43e29511-139a-473e-939b-c7b3875ab788" />

- La imagen muestra la construcción exitosa del contenedor environment-pybullet-e1 mediante el comando docker-compose build, usando el Dockerfile que instala dependencias y clona el repositorio de PyBullet Industrial Robotics.

---

## Paso 6: Simulación de robots industriales con PyBullet 
<img width="800" height="333" alt="image" src="https://github.com/user-attachments/assets/fe154aad-3d04-4947-b44c-ea85fd9f9236" />

- La imagen muestra la ejecución del comando docker-compose up, que inicia el contenedor pybullet_environment_e1 previamente creado. Durante la ejecución, el sistema muestra mensajes informativos indicando que el entorno PyBullet Industrial Robotics se ha iniciado correctamente. En la salida se observa la simulación de robots industriales, mencionando los modelos disponibles (ABB IRB 120, UR3 y Epson SCARA) y el modo de operación (“Alcance de objetivo sin obstáculos”). Finalmente, el contenedor termina su proceso con el mensaje “exited with code 0”, lo que indica que la ejecución fue exitosa y sin errores.

---

## Paso 7: Contenido del contenedor
<img width="1465" height="476" alt="image" src="https://github.com/user-attachments/assets/c41932a9-49e8-4bd7-8ce6-452246468a8f" />

- La imagen muestra una terminal donde se ejecuta un contenedor Docker con docker-compose run --rm pybullet-e1 bash. Luego, se listan los archivos del directorio /app, que contiene carpetas como Data, Textures, URDFs, src, entre otras, y se accede a la carpeta URDFs, donde se listan las subcarpetas Primitives, Robots y Viewpoint.

---

## Paso 8: 
<img width="583" height="848" alt="image" src="https://github.com/user-attachments/assets/7556bf59-c7b9-4864-bb9d-a0393f2026f1" />
