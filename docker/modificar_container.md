### 1. Obtener el id del container a editar

```bash
docker inspect <container_name> | grep Id
```

### 2. (opcional) Si el container esta iniciado, pararlo

```bash
docker stop <container_name>
```

### 3. Sabiend el ID, ir a la carpeta de configuracion del container

```bash
cd /var/lib/docker/containers/<container_id>
```

### 5. Modificar los archivos necesarios

tips: 
- Para cambiar la ip hay que cambiar el config.v2.json y el hosts

### 6. Para que los cambios tengan efecto hay que reiniciar el servicio de dockers

```bash
systemctl stop docker
```