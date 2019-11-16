# 3. Network

Hasta ahora haz creado la interfaz y los modelos para poder empezar a construir la app y obtener la información de un servidor. Ahora, es tiempo de crear los métodos necesarios para obtener esta información. Construiremos una clase que nos servirá como base para tener nuestra abstracción de *nework requests*. Necesitaremos al menos un método por cada endpoint para obtener su información. 

### Define los métodos 

Crea un nuevo archivo de Swift llamado ```MenuController.swift``` y crea una clase llamada ```MenuController``` que contendrá lo siguiente: 

* Una constante llamada ```baseURL: URL``` usando el inicializador que acepte un string. 

  * ```string```: **http://localhost:8090/**

* Como lo mencionamos en la sección anterior, necesitaremos un método para cada request: 

  1. ```fetchCategories```: GET 
  2. ```fetchMenuItems```: GET 
  3. ```submitOrder```: POST

  