# Proyecto INEGI-Shapefiles

Este proyecto configura un entorno JupyterLab en un contenedor Docker, listo para trabajar con datos geoespaciales. Sigue los pasos a continuación para construir la imagen Docker, ejecutar el contenedor y acceder a JupyterLab.
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

Si tienes Mac, guárdalos en tu repositorio. <br>
Si tienes Linux/Ubuntu:
- Descargar datos y descomprimirlos en windows, como con cualquier otros datos.
- Crea carpeta ShapeFilesFiles en tu git clone del fork del repositorio (Asi no tendras que modificar ningún path)
- Copiar las carpetas descomprimidas a la carpeta ShapeFilesFiles en tu git clone de tu fork en ubuntu. (Una forma fácil es draggear los archivos desde VSCode)
- Crear la imagen del Docker una vez que esten copiados para que funcione el jupyter.

Notar que para que funcione la Clase el docker debe poder tener acceso a los archivos.
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
