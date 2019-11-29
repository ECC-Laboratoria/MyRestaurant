# 3. Network

Hasta ahora haz creado la interfaz y los modelos para poder empezar a construir la app y obtener la información de un servidor. Ahora, es tiempo de crear los métodos necesarios para obtener esta información. Construiremos una clase que nos servirá como base para tener nuestra abstracción de *nework requests*. Necesitaremos al menos un método por cada endpoint para obtener su información. 

### Define los métodos 

Crea un nuevo archivo de Swift llamado ```MenuController.swift``` y crea una clase llamada ```MenuController``` que contendrá lo siguiente: 

* Una constante llamada ```baseURL: URL``` con **http://localhost:8090/** como string. 

* Como lo mencionamos en la sección anterior, necesitaremos un método para cada request: 

  1. ```fetchCategories```: GET 
  
     ```swift
   func fetchCategories(completion: @escaping ([String?]) -> Void) {}
     ```
  
  2. ```fetchMenuItems```: GET 
  
     ```swift
     func fetchMenuItems(forCategory categoryName:String, completion: @escaping ([MenuItem?]) -> Void) {}
     ```
  
  3. ```submitOrder```: POST
  
     ```swift
     func submitOrder(forMenuIDs menuIDs: [Int], completion: ([Int]?) -> Void) {}
     ```
  

Cada uno de los métodos anteriores necesitará un **baseURL** y la modificará dependiendo de su función. 