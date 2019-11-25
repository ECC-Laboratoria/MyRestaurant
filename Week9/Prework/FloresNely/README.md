

### Preguntas de Prework 

### Teoría: 

1. ¿Qué es concurrencia?
Concurrencia es la habilidad que tiene un computador de realizar varias tareas a la vez.
Gracias a la concurrencia es que puedes ver un video en YouTube mientas subes un archivo a Dropbox y hablas con tus amigos en Facebook, todo a la vez.
Sin embargo, eso no significa necesariamente que todo pase al mismo tiempo, es decir, en paralelo. Eso depende del número de procesadores (o cores) que tenga tu computador.
Si tu computador sólo tiene un procesador, el sistema operativo simula que está haciendo todo al mismo tiempo, pero lo que realmente hace es darle, a las aplicaciones, acceso al procesador por turnos cortos de tiempo.
Existen varios modelos de concurrencia y cada lenguaje de programación implementa alguno de ellos, dos de ellos son : hilos(threads en Inglés), que es el modelo más básico y el que utilizan lenguajes como Java, Ruby y PHP, entre otros, y basado en eventos (event-driven), que es el que utiliza JavaScript.

2. ¿Qué es un hilo? (desde la perspectiva de Sistemas Operativos)
Un hilo (o proceso ligero/liviano) es una unidad básica de utilización de la CPU; consiste de:

Contador del programa
Conjunto de registros
Espacio de pila
Un hilo comparte con sus hilos pares su:

Sección de código
Sección de datos
Los recursos del sistema operativo colectivamente conocido como una tarea
Un proceso tradicional o pesado es igual a una tarea con un solo hilo.
3. ¿Qué es un proceso? (desde la perspectiva de Sistemas Operativos)
Dentro de las operaciones más básicas y la vez más complejas de nuestra PC encontramos los procesos. Estos nos permitirán entrar al mundo que se "DESPERTARA" en nuestra computadora, o por lo menos seria nuestra manera de decirlo. Siempre que le pidamos a nuestra computadora que haga algo, los procesos asumirán el trabajo y de esta manera el microprocesador dará ejecución al plan que realice el sistema operativo a través de los procesos…

Proceso.
Un proceso es un concepto manejado por el sistema operativo que consiste en el conjunto formado por:

Las instrucciones de un programa destinadas a ser ejecutadas por el microprocesador.
Su estado de ejecución en un momento dado, esto es, los valores de los registros de la CPU para dicho programa.
Su memoria de trabajo, es decir, la memoria que ha reservado y sus contenidos.
Otra información que permite al sistema operativo su planificación.
Esta definición varía ligeramente en el caso de sistemas operativos multihilo, donde un proceso consta de uno o más hilos, la memoria de trabajo (compartida por todos los hilos) y la información de planificación. Cada hilo consta de instrucciones y estado de ejecución.

Los procesos son creados y destruidos por el sistema operativo, así como también este se debe hacer cargo de la comunicación entre procesos, pero lo hace a petición de otros procesos. El mecanismo por el cual un proceso crea otro proceso se denomina bifurcación (fork). Los nuevos procesos son independientes y no comparten memoria (es decir, información) con el proceso que los ha creado.

En los sistemas operativos multihilo es posible crear tanto hilos como procesos. La diferencia estriba en que un proceso solamente puede crear hilos para sí mismo y en que dichos hilos comparten toda la memoria reservada para el proceso.
4. ¿Qué es multi procesamiento?
Multiprocesamiento o multiproceso es el uso de dos o más procesadores (CPU) en una computadora para la ejecución de uno o varios procesos (programas corriendo). Algunas personas, en el idioma español hacen sinónimo este término con el de multitareas (del inglés multitasking) el cual consiste en la ejecución de uno o más procesos concurrentes en un sistema. Así como la multitarea permite a múltiples procesos compartir una única CPU, múltiples CPU pueden ser utilizados para ejecutar múltiples procesos o múltiples hilos (threads) dentro de un único proceso.


5. ¿Qué es paralelismo?
Es una función que realiza el procesador para ejecutar varias tareas al mismo tiempo. Es decir, puede realizar varios cálculos simultáneamente, basado en el principio de dividir los problemas grandes para obtener varios problemas pequeños, que son posteriormente solucionados en el paralelo.
Ventajas y desventajas del paralelismo:
Ventajas
- Brinda a las empresas, instituciones y usuarios en general el beneficio de la velocidad.
- Ventaja competitiva, provee una mejora de los tiempos para la producción de nuevos productos y servicios.
- Colaboración y flexibilidad operacional.

Desventajas
- Requieren de un gran número de ciclos de procesamiento o acceso a una gran cantidad de datos.
- Encontrar un hardware y un software que permitan brindar estas utilidades comúnmente proporciona inconvenientes de costos, seguridad y disponibilidad.


6. Investiga y haz un resumen de los siguientes conceptos de [este artículo](https://www.raywenderlich.com/5370-grand-central-dispatch-tutorial-for-swift-4-part-1-2).
   - Grand Central Dispatch 
   En lugar de usar bloqueos primitivos, puede usar Grand Central Dispatch (GCD): la moderna API de concurrencia de Apple diseñada para el rendimiento y la seguridad. Usted no necesita pensar en las cerraduras usted mismo; hace el trabajo por ti detrás de las escenas. 

DispatchQueue.global (qos: .background) .async // cola concurrente, compartida por el sistema // realiza un trabajo de larga ejecución en segundo plano aquí // ... DispatchQueue.main.async // cola en serie // Actualizar la interfaz de usuario - mostrar los resultados de nuevo en el hilo principal

 
Como puede ver, es una API bastante simple, así que use GCD como su primera opción al diseñar su aplicación para la concurrencia.
   - Concurrencia
   - Colas (Queues)
   - Proceso síncrono vs asíncrono

### Swift:



