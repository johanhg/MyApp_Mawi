# MyAppMawi

MyAppMawi es una aplicación encargada de calcular la cuota de un microprestamo que un cliente quiera solicitar y deba pagar mensualmente/quincenalmente.


### Tecnologías

MyAppMawi utiliza una serie de proyectos de código abierto para funcionar correctamente:

* Ruby on Rails
* JavaScript
* HTML5
* Bootstrap
* Postgresql

### Instalación

MyAppMawi requiere [Postgresql](https://www.postgresql.org/download/linux/ubuntu/) para correr correctamente.

### Ejecución

Luego de instalar el motor de base de datos descargamos el repositorio y descompimimos la carpeta MyApp_Mawi.zip. Después de descomprimirla ejecutamos los siguientes comandos desde la carpeta principal.

Primero entramos a la carpeta del proyecto:
```sh
$ cd MyApp_Mawi
```

Luego descargamos todas las dependencias o Gemas para su correcta ejecución:
```sh
$ bundle install
```

Después ejecutamos los siguientes comandos para crear la base de datos y la tabla:
```sh
$ rails db:create
$ rails db:migrate
```
Ejecutamos el siguiente comando para levantar el servidor:
```sh
$ rails s
```
Por último, verificamos de que el servidor esté funcionando correctamente, luego desde el navegador de preferencia entramos en la siguiente dirección. http://localhost:3000/datos








