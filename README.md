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

### Nota

A la hora de crear la funcionalidad de envíar información de un correo de gmail surgieron problemas de seguridad, se siguieron correctamente los pasos para activar el acceso de aplicaciones poco seguras [Aquí](https://myaccount.google.com/lesssecureapps?pli=1&rapt=AEjHL4OZ83XQ3L_aRU4bH9ur-UJ9-BVEUycM2V6pQBLjxxpSW0xhhav0WusrojrwAgThjNK4a_8o4TvJYoNhJEw7a4fsC9U4lw).

Igualmente hubo una previa investigación con respecto a [SmtpJS](https://smtpjs.com/), se incluyó la función en JavaScript y el script dentro del index.html.erb :
```sh
<script src="https://smtpjs.com/v3/smtp.js"></script>
```
Y a pesar de que se hizo la implementación con diferentes tutoriales el resultado siempre fue el mismo.






