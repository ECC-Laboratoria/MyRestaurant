# Prework Week 9

**Fecha de entrega:** 22 Nov. 2019 a las 23:59 hrs mediante un **pull request**

### ! Súper importante !

Haz un **fork** de este repositorio y crea una carpeta con tu nombre y apellido de la siguiente manera: ```GaltJohn```. 

Esta carpeta se deberá encontrar la carpeta ```Prework``` de esta semana. Resultando en una estructura como la siguiente: 

```MyRestaurant/Week8/Prework/GaltJohn``` 

Dentro de **TU** carpeta, y sin modificar otro archivo, crea un archivo llamado ```README.md ```  y contesta las preguntas de **Teoría**.

Para las preguntas de **Swift**, tienes dos opciones: 

1. Subir un archivo con extensión ```.swift``` donde contestes los ejercicios correspondientes. 
2. O, dentro del archivo ```README.md``` [agrega bloques de código](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#code) con las respuestas. De nuevo, [utiliza ésta página para probar tu código](http://online.swiftplayground.run).

---

### Preguntas de Prework 

### Teoría: 

1. ¿Qué es concurrencia?
  - La concurrencia significa que una aplicación está ejecutando más de una tarea al mismo tiempo (simultáneamente). 
  - La concurrencia se trata de lidiar con muchas cosas a la vez, se centra más en la estructura.  
  - La concurrencia es esencialmente aplicable cuando hablamos de un mínimo de dos tareas o más. Cuando una aplicación es capaz de ejecutar dos tareas virtualmente al mismo tiempo, la llamamos una aplicación concurrente. Aunque en este caso las tareas se ejecutan de forma simultánea se parece, en esencia puede que no. Aprovechan la función de división de tiempo de CPU del sistema operativo donde cada tarea ejecuta parte de su tarea y luego pasan al estado de espera.

2. ¿Qué es un hilo? (desde la perspectiva de Sistemas Operativos)  
-  Es una secuencia de tareas encadenadas muy pequeña que puede ser ejecutada por un sistema operativo.  
- Un hilo es una ruta de ejecución dentro de un proceso.  

3. ¿Qué es un proceso? (desde la perspectiva de Sistemas Operativos)  
- Es la instancia de un programa de computadora que está siendo ejecutado por uno o varios subprocesos. Contiene el código del programa y su actividad. Dependiendo del sistema operativo, un proceso puede estar compuesto por múltiples hilos de ejecución que ejecutan instrucciones simultáneamente.  

4. ¿Qué es multi procesamiento?  
- En un sistema uni-procesador, solo se ejecuta un proceso a la vez.
El multiprocesamiento es el uso de dos o más CPU (procesadores) dentro de un solo sistema informático. El término también se refiere a la capacidad de un sistema para admitir más de un procesador dentro de un solo sistema informático. Ahora, dado que hay múltiples procesadores disponibles, se pueden ejecutar múltiples procesos a la vez. Estos procesadores múltiples comparten el bus de la computadora, a veces también el reloj, la memoria y los dispositivos periféricos.

5. ¿Qué es paralelismo?  
- El paralelismo se trata de hacer muchas cosas a la vez, se centra en la ejecución.  
- El paralelismo no requiere dos tareas para existir. Ejecuta físicamente partes de tareas o tareas múltiples, al mismo tiempo utilizando la infraestructura de núcleos múltiples de la CPU, asignando un núcleo a cada tarea o subtarea. El paralelismo requiere hardware con múltiples unidades de procesamiento, esencialmente. En CPU de un solo núcleo, puede obtener concurrencia pero no paralelismo.  

6. Investiga y haz un resumen de los siguientes conceptos de [este artículo](https://www.raywenderlich.com/5370-grand-central-dispatch-tutorial-for-swift-4-part-1-2).
   - Grand Central Dispatch  
     - Es una API de bajo nivel para administrar operaciones concurrentes. Puede ayudar a mejorar la capacidad de respuesta de una aplicación al diferir tareas computacionalmente costosas en un segundo plano. Es un modelo de concurrencia más fácil para trabajar que los bloqueos y subprocesos.  

   - Concurrencia  
     - En iOS, un proceso o aplicación consta de uno o más hilos. El programador del sistema operativo gestiona los hilos independientemente uno del otro. Cada subproceso puede ejecutarse simultáneamente, pero depende del sistema decidir si esto sucede, cuándo sucede y cómo sucede.

      -  Los dispositivos de un solo núcleo logran la concurrencia a través de un método llamado división de tiempo. Ejecutan un hilo, realizan un cambio de contexto, luego ejecutan otro hilo.
      - Los dispositivos multinúcleo, por otro lado, ejecutan múltiples subprocesos al mismo tiempo a través del paralelismo.
   - Colas (Queues)
       - GCD trabaja con dispatch queues mediante una clase llamada DispatchQueue. Se envian unidades de trabajo a esta cola y GCD las ejecutará en un orden FIFO (First In, First Out), garantizando que la primera tarea enviada sea la primera iniciada.
      - Las colas de envío son seguras para subprocesos, lo que significa que puede acceder a ellas desde múltiples subprocesos simultáneamente. Los beneficios de GCD son evidentes cuando comprende cómo las colas de despacho proporcionan seguridad de subprocesos a partes de su propio código. La clave para esto es elegir el tipo correcto de cola de despacho y la función de despacho correcta para enviar su trabajo a la cola.

      - Las colas pueden ser seriales o concurrentes. Las colas en serie garantizan que solo se ejecute una tarea en un momento dado. GCD controla el tiempo de ejecución.

   - Proceso síncrono vs asíncrono

      - Una función sincrónica devuelve el control a la persona que llama una vez que se completa la tarea. Puede programar una unidad de trabajo sincrónicamente llamando a DispatchQueue.sync (execute :).

      - Una función asincrónica regresa de inmediato, ordenando que se inicie la tarea pero sin esperar a que se complete. Por lo tanto, una función asincrónica no impide que el hilo de ejecución actual pase a la siguiente función. Puede programar una unidad de trabajo de forma asincrónica llamando a DispatchQueue.async (execute :).

### Swift:



