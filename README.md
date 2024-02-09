Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

Para la creacion de esta aplicacion se utilizo un template del Bootcamp LeWagon.

Se utilizo el preprocesador Sass para nestear el codigo de CSS, la biblioteca de iconos Font Awesome y para agilizar el Frontend se utilizo el framework Bootstrap. Esto me lo da el template utilizado previamente, ademas de que utilice de base de datos Postgresql.

El repositorio es publico (https://github.com/dvaron2099/HoyTrabajasPruebatecnica) puedes clonarlo usando el siguiente comando "git clone https://github.com/dvaron2099/HoyTrabajasPruebatecnica.git
", se debera entrar en la terminal (asegurandose de que estas dentro de la carpeta del repositorio) y colocar los siguientes comando "bundle install" (o bundler para instalar las gemas), "rails db:create" (para crear la base de datos postgresql), "rails db:migrate" (para correr las migraciones) y "rails db:seed" (para correr la seed con un correo y algunos proveedores y bancos que se cargaron previamente). Una vez se realizo esto se debera correr el siguiente comando "rails server" o "rails s", y en el navegador de tu eleccion deberas iniciar un servidor local utilizando el puerto :3000 (http://127.0.0.1:3000 igualmente el link aparecera en la terminal en las primeras lineas una vez corras el servidor) y de esta manera podras iniciar el proyecto.

Puedes usar el siguiente correo que se utilizo para la prueba "prueba1@gmail.com" con la contraseña "123456" o puedes crear tu propio usuario y una vez iniciado sesion te dirigra a un Dashboard donde podras ver los bancos registrados y los proveedores que estan existentes, ademas de que dira el numero de proveedores y bancos.

Al acceder a la lista de proveedores podras ver un bloque de 10 proveedores de los cuales encontraras la informacion de Nombre del proveedor, Nombre de contacto,	Número de celular,	Nombre del banco,	Número de cuenta	y las acciones  que puedes realizar que son eliminar y editar dicho proveedor, ademas de que podras acceder  la informacion del proveedor dando click en el nombre, dentro de la vista del proveedor tambien podras editar y eliminarlo si deseas.

Al acceder a la lista de bancos podras ver todos los bancos asociados con su respectivo ID y el Nombre del Banco, asi como con los proveedores, tambien podras eliminarlos y modificar su nombres, ademas de acceder a la vista del banco donde te dira cuales son los proveedores asociados o si no tiene ningun proveedor.

Cada una de las rutas poseera un breadcrumb en la parte superior izquierda donde podras retroceder a la vista que desees una vez avances.

El proyecto se empezo el martes por la mañana probando algunas configuraciones y creando una ruta para empezar el proyecto y entendiendolo mas a fondo, el commit inicial se hizo a las 11:58 am y el ultimo commit del dia se realizo a las 10:14 pm, por lo que el backend se realizo en 10 horas y 16 min (tener en cuenta que en ese tiempo tambien hubieron pausas activas y tiempo para comer), el dia miercoles trabaje en el frontend una hora a medio dia y aproximadamente 2 y 30 min en la noche realizando el frontend y el dia jueves 9 de febrero realice algunos ajustes, revision del codigo y creacion del README.md por al rededor de 2 horas y 30 min por lo que en promedio se puede decir que este proyecto me tomo alrededor de 15 horas  16 minutos en crearse.
