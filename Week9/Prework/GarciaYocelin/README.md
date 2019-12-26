### Preguntas de Prework

### Teoría:



1. ¿Qué es concurrencia?

Concurrencia indica que múltiples tareas / cálculos están siendo ejecutados al mismo tiempo. Algunos ejemplos de concurrencia son:

- Múltiples computadoras trabajando en la misma red
- Múltiples aplicaciones corriendo en una computadora
- Múltiples procesos en una computadora (múltiples núcleos de procesador en un solo chip)

La concurrencia significa ejecutar múltiples tareas al mismo tiempo, pero no necesariamente simultáneamente.  En una aplicación concurrente, dos tareas pueden comenzar, ejecutarse y completarse en períodos de tiempo superpuestos, es decir, una Tarea 2 puede comenzar incluso antes de que se complete una Tarea 1.

#### Modelos de programación concurrente

##### Memoria compartida

En este modelo, los módulos interactúan leyendo y escribiendo objetos compartidos en memoria.

![Memoria compartida](https://github.com/YocelinGR/MyRestaurant/blob/master/Week9/Prework/GarciaYocelin/img/concurrencia_mem.png)

Donde A y B pueden ser:

- Dos procesadores (o núcleos de procesador) en la misma computadora, compartiendo la misma memoria física.
- Dos programas que se ejecutan en la misma computadora, compartiendo un sistema de archivos común con archivos que pueden leer y escribir.
- Dos hilos en el mismo programa, compartiendo objetos.

##### Paso de mensajes

En este modelo, los módulos concurrentes interactúan enviándose mensajes entre si a través de un canal de comunicación. Los módulos envían mensajes, y los mensajes entrantes a cada módulo se ponen en cola para su manejo. 

![Paso de mensajes](https://github.com/YocelinGR/MyRestaurant/blob/master/Week9/Prework/GarciaYocelin/img/message-passing.png)

Donde A y B pueden ser:

- Dos computadoras en una red, comunicándose por conexiones de red.
- Un navegador web y un servidor web, donde A abre una conexión con B, solicita una página web y B envía los datos de la página web a A.
- Dos programas que se ejecutan en la misma computadora cuya entrada y salida han sido conectadas por línea de comandos.
- Cliente y servidor de mensajería instantánea. 

2. ¿Qué es un hilo? (desde la perspectiva de Sistemas Operativos)

- Procesos: Son instancias de un programa en ejecución que está aislado de otros procesos en la misma maquina, pero en una sección privada de la memoria. Un programa puede tener múltiples procesos. Un proceso generalmente comienza con un solo subproceso, es decir, un subproceso primario, pero más adelante en la línea de ejecución puede crear múltiples subprocesos.

3. ¿Qué es un hilo? (desde la perspectiva de Sistemas Operativos)

- Hilo:  Los hilos son una secuencia de ejecución de código que puede ejecutarse independientemente uno del otro. Es la unidad de tareas más pequeña que puede ejecutar un sistema operativo. Un programa puede ser de un solo subproceso o de subprocesos múltiples.

4. ¿Qué es multi procesamiento?

Capacidad de un sistema de ejecutar varios procesos al mismo tiempo, con lo que incrementan el rendimiento.

5. ¿Qué es paralelismo?

Paralelismo significa realizar dos o más tareas simultáneamente. La computación paralela en informática se refiere al proceso de realizar múltiples cálculos simultáneamente, los servicios de multiprocesamiento dividen automáticamente el tiempo del procesador entre las tareas disponibles, de modo que ninguna tarea en particular pueda monopolizar el sistema. 

¿Cómo se relaciona la concurrencia con el paralelismo?

- **La concurrencia y el paralelismo se refieren a arquitecturas informáticas** que se centran en cómo se realizan nuestras tareas o cálculos.
- **En un entorno central único, la concurrencia ocurre** con las tareas que se ejecutan durante el mismo período de tiempo a través del cambio de contexto, es decir, en un período de tiempo particular, solo se ejecuta una sola tarea.
- **En un entorno multinúcleo, la concurrencia se puede lograr a través del paralelismo** en el que se ejecutan varias tareas simultáneamente.

6. Investiga y haz un resumen de los siguientes conceptos de [este artículo](https://www.raywenderlich.com/5370-grand-central-dispatch-tutorial-for-swift-4-part-1-2).

   \- Grand Central Dispatch : es una API de bajo nivel para administrar operaciones concurrentes defiriendo tareas computacionalmente costosas en un segundo plano.

   \- Concurrencia:

En iOS, un proceso o aplicación consta de uno o más hilos. El programador del sistema operativo gestiona los hilos independientemente uno del otro. Cada subproceso puede ejecutarse simultáneamente, pero depende del sistema decidir si esto sucede, cuándo sucede y cómo sucede.

Los dispositivos de un solo núcleo logran la concurrencia a través de un método llamado *división de tiempo* . Ejecutan un hilo, realizan un cambio de contexto, luego ejecutan otro hilo.

Los dispositivos multinúcleo, por otro lado, ejecutan múltiples subprocesos al mismo tiempo a través del *paralelismo* .

   \- Colas (Queues)

 GCD opera en las *colas de despacho a* través de una clase llamada acertadamente `DispatchQueue`, y funcionan de forma FIFO. Las colas de envío son *seguras para subprocesos, lo* que significa que puede acceder a ellas desde múltiples subprocesos simultáneamente.

Las colas pueden ser *seriales* o *concurrentes* . Las colas en serie garantizan que solo se ejecute una tarea en un momento dado. GCD controla el tiempo de ejecución de las tareas.

Las colas concurrentes permiten que se ejecuten varias tareas al mismo tiempo. La cola garantiza que las tareas comiencen en el orden en que las agrega. Las tareas pueden finalizar en cualquier orden y no tiene conocimiento del tiempo que tomará iniciar la siguiente tarea, ni la cantidad de tareas que se ejecutan en un momento dado.

GCD proporciona tres tipos principales de colas:

1. *Cola principal* : se ejecuta en el hilo principal y es una cola en serie.
2. *Colas globales* : *colas* concurrentes que son compartidas por todo el sistema. Hay cuatro colas con diferentes prioridades: alta, predeterminada, baja y de fondo. La cola de prioridad de fondo tiene la prioridad más baja y se limita en cualquier actividad de E / S para minimizar el impacto negativo del sistema.
3. *Colas personalizadas* : colas que crea que pueden ser seriales o concurrentes. Las solicitudes en estas colas en realidad terminan en una de las colas globales.

Al enviar tareas a las colas globales concurrentes, no especifica la prioridad directamente. para ello existen las propiedades de clase "Calidad de servicio (QoS)". Esto indica la importancia de la tarea y guía a GCD para determinar la prioridad que se le debe dar a la tarea.

Las clases de QoS son:

- *Interactivo para el usuario* : representa tareas que deben completarse de inmediato para proporcionar una experiencia de usuario agradable. Úselo para actualizaciones de UI, manejo de eventos y pequeñas cargas de trabajo que requieren baja latencia. La cantidad total de trabajo realizado en esta clase durante la ejecución de su aplicación debe ser pequeña. Esto debería ejecutarse en el hilo principal.
- *Iniciado por* el usuario: el usuario inicia estas tareas asincrónicas desde la IU. Úselos cuando el usuario esté esperando resultados inmediatos y para las tareas necesarias para continuar la interacción del usuario. Se ejecutan en la cola global de alta prioridad.
- *Utilidad* : Esto representa tareas de larga duración, generalmente con un indicador de progreso visible para el usuario. Úselo para cálculos, E / S, redes, alimentación continua de datos y tareas similares. Esta clase está diseñada para ser energéticamente eficiente. Esto se asignará a la cola global de baja prioridad.
- *Antecedentes* : Esto representa tareas que el usuario no conoce directamente. Úselo para la captación previa, el mantenimiento y otras tareas que no requieren la interacción del usuario y no son urgentes. Esto se asignará a la cola global de prioridad de fondo.

   \- Proceso síncrono vs asíncrono

En un modelo de programación síncrona, las tareas se ejecutan una tras otra. Cada tarea espera a que se complete cualquier tarea anterior y luego se ejecuta.

En un modelo de programación asíncrono, cuando se ejecuta una tarea, puede cambiar a una tarea diferente sin esperar a que se complete la anterior.

El modelo de programación asíncrono nos ayuda a lograr la concurrencia. El modelo de programación asíncrono en un entorno de subprocesos múltiples es una forma de lograr paralelismo.

Una función *sincrónica* devuelve el control a la persona que llama una vez que se completa la tarea. Puede programar una unidad de trabajo sincrónicamente llamando `DispatchQueue.sync(execute:)`.

Una función *asincrónica* regresa de inmediato, ordenando que se inicie la tarea pero sin esperar a que se complete. Por lo tanto, una función asincrónica no impide que el hilo de ejecución actual pase a la siguiente función. Puede programar una unidad de trabajo de forma asincrónica llamando `DispatchQueue.async(execute:)`.

