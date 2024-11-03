Proyecto Jupyter Geospatial
Este proyecto configura un entorno JupyterLab en un contenedor Docker, listo para trabajar con datos geoespaciales. Sigue los pasos a continuación para construir la imagen Docker, ejecutar el contenedor y acceder a JupyterLab.

Requisitos
Tener Docker instalado en su máquina. Puedes descargar Docker desde este enlace.
Instrucciones
1. Clonar el repositorio (si es necesario)
bash
Copy code
git clone <URL_DEL_REPOSITORIO>
cd <NOMBRE_DEL_REPOSITORIO>
2. Construir la Imagen Docker
Ejecuta el siguiente comando en el terminal para construir la imagen Docker. Este comando descargará las dependencias necesarias y configurará el entorno.

bash
Copy code
docker build -t jupyter-geospatial .
3. Ejecutar el Contenedor
Una vez que la imagen se haya construido correctamente, ejecuta el siguiente comando para iniciar el contenedor:

bash
Copy code
docker run -p 8888:8888 jupyter-geospatial
Este comando inicia el contenedor y expone JupyterLab en el puerto 8888.

4. Acceder a JupyterLab
Abre tu navegador y dirígete a la siguiente dirección para acceder a JupyterLab:

arduino
Copy code
http://localhost:8888
Nota: Si estás ejecutando Docker en un servidor remoto, reemplaza localhost con la dirección IP de tu servidor, de la siguiente manera: http://<IP_DEL_SERVIDOR>:8888.

No se requiere un token ni contraseña, ya que el contenedor está configurado para permitir acceso directo.

5. Resolución de Problemas
Error al Abrir Clase.ipynb
Si ves un error de "Archivo No Legible" al intentar abrir Clase.ipynb, sigue estos pasos para resolverlo:

Verifica el Archivo Localmente: Asegúrate de que Clase.ipynb no esté corrupto abriéndolo en JupyterLab fuera del contenedor.

Reconstruye la Imagen sin Caché: Fuerza una reconstrucción de la imagen para asegurarte de que Docker copie la versión correcta del archivo:

bash
Copy code
docker build --no-cache -t jupyter-geospatial .
Inspecciona el Archivo en el Contenedor: Inicia el contenedor e inspecciona el archivo para asegurarte de que se copió correctamente:

bash
Copy code
docker run -p 8888:8888 -d --name jupyter_container jupyter-geospatial
docker exec -it jupyter_container /bin/bash
cat /usr/src/app/Clase.ipynb
Reemplaza Manualmente el Archivo (si es necesario): Si el archivo no se copia correctamente, intenta copiarlo manualmente al contenedor:

bash
Copy code
docker cp Clase.ipynb jupyter_container:/usr/src/app/Clase.ipynb
