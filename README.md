# Proyecto INEGI-Shapefiles

Este proyecto configura un entorno JupyterLab en un contenedor Docker, listo para trabajar con datos geoespaciales. Sigue los pasos a continuación para construir la imagen Docker, ejecutar el contenedor y acceder a JupyterLab.

## Presentación
Puedes acceder a la presentación desde [este enlace][(https://www.canva.com/design/DAGXKbWfQb8/kxijUliN-Ureeskl60ShoA/edit?utm_content=DAGXKbWfQb8&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)].

## Equipo
- Diego Méndez
- Eduardo García
- Emilia Hernández
- Fernando Barba

## Requisitos

- Tener Docker instalado en su máquina. Puedes descargar Docker desde [este enlace](https://www.docker.com/products/docker-desktop).

## Instrucciones




### 1. Crear un fork y clonar tu propio repositorio 

```bash
cd path/donde/quieres/tu/repositorio
git clone git@ssh_de_tu_repo
```
### 2. Descargar datos
Descarga los datos desde [este enlace](https://drive.google.com/drive/folders/12TlCjAGX-ugtGkvumdibX7RHO-g_TXif?usp=sharing).<br>
Guardalos en la carpeta ShapeFilesFiles del repo como se indica: <br>
Si tienes Mac, solo guárdalos en tu repositorio. <br>
Si tienes Linux/Ubuntu:
- Descargar datos y descomprimirlos en windows, como con cualquier otros datos.
- Copiar las carpetas descomprimidas (Estados y servicios_de_salud_shp) a la carpeta ShapeFilesFiles en tu git clone de tu fork en ubuntu. (Una forma fácil es draggear los archivos usando VSCode, abre VScode desde ubuntu en tu git clone, dragea los archivos desde windows al VScode)
- Crear la imagen del Docker una vez que esten copiados los archivos.

Importante! Notar que para que funcione la Clase el docker debe poder tener acceso a los archivos.
Debido al peso de los archivos, no se pueden subir al github como tal.

### 3. Construir la Imagen Docker
Ejecuta el siguiente comando en el terminal para construir la imagen Docker. Este comando descargará las dependencias necesarias y configurará el entorno. Se debe usar este preciso comando
```bash
docker build -t jupyter-geospatial . 
```

### 4. Ejecutar el Contenedor
Una vez que la imagen se haya construido correctamente, ejecuta el siguiente comando para iniciar el contenedor:
```bash
docker run -p 8888:8888 jupyter-geospatial
```
Este comando inicia el contenedor y expone JupyterLab en el puerto 8888.
### 5. Acceder a JupyterLab
Abre tu navegador y dirígete a la siguiente dirección para acceder a JupyterLab:
```http://127.0.0.1:8888/lab```
No se requiere un token ni contraseña, ya que el contenedor está configurado para permitir acceso directo.

## Estructura del Proyecto
```plaintext
INEGI-Shp/
├── ShapeFilesFiles/         # Aqui deberán estar las carpetas de los archivos que descargaste, Estados y servicios_de_salud_shp con sus contenidos.
├── Tareas/                  # Donde realizarás tu tarea.
├── Clase.ipynb              # Archivo de la clase
├── Dockerfile               # Docker para construir imagen
├── README.md                # Documentación, instrucciones.
└── requirements.txt         # Requerimientos del docker.
```

## Tarea
Funciona igual que como lo hemos hecho a lo largo del semestre.<br>
En el fork y tu git clone, creas un branch. <br>
Creas la carpeta con tu clave única en la carpeta tareas y copias la Clase.ipynb, sobre esta copia en TU carpeta es donde vas a trabajar la tarea, que esta al final de la clase. <br>
Una vez hecha la tarea, la pusheas a tu repo haciendo merge de tu branch a tu main, luego de tu main al main de nuestro repositorio.

