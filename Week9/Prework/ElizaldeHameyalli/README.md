# Prework Week 9

### Preguntas de Prework 

### Teoría: 

1. ¿Qué es concurrencia?
Concurrencia se refiere a la habilidad de distintas partes de un programa, algoritmo, o problema de ser ejecutado en desorden o en orden parcial, sin afectar el resultado final. Los cálculos (operaciones) pueden ser ejecutados en múltiples procesadores, o ejecutados en procesadores separados físicamente o virtualmente en distintos hilos de ejecución. Un sin número de modelos matemáticos han sido desarrollados para cálculos de la concurrencia en general incluyendo redes de Petri, procesos Calculi, el modelo máquina de accesos random en paralelo, el Modelo Actor y el Lenguaje Reo.

También concurrente significa algo que se repite cada cierto tiempo en un mismo lugar.

2. ¿Qué es un hilo? (desde la perspectiva de Sistemas Operativos)
Un hilo es una línea de ejecución de un proceso. Todo proceso parte inicialmente con un único hilo principal, aunque el sistema operativo ofrece llamadas al sistema que permiten al programador crear y destruir hilos. Por tanto, un proceso está compuesto por uno o más hilos.

Los estados de un hilo son iguales a los de un proceso, por tanto, un hilo puede estar en estado preparado, bloqueado o activo en un cierto instante de tiempo. La conmutación entre hilos de un proceso es menos costosa que la conmutación de procesos, por tanto, el planificador(*) tiende a conmutar entre hilos de un proceso siempre que el proceso en su conjunto no haya agotado el tiempo máximo de asignación del procesador.

3. ¿Qué es un proceso? (desde la perspectiva de Sistemas Operativos)

Un proceso, en informática, puede entenderse informalmente como un programa en ejecución. Formalmente un proceso es "Una unidad de actividad que se caracteriza por la ejecución de una secuencia de instrucciones, un estado actual, y un conjunto de recursos del sistema asociados".1​

Para entender mejor lo que es un proceso y la diferencia entre un programa y un proceso, A. S. Tanenbaum propone la analogía "Un científico computacional con mente culinaria hornea un pastel de cumpleaños para su hija; tiene la receta para un pastel de cumpleaños y una cocina bien equipada con todos los ingredientes necesarios, harina, huevo, azúcar, leche, etc." Situando cada parte de la analogía se puede decir que la receta representa el programa (el algoritmo), el científico computacional es el procesador y los ingredientes son las entradas del programa. El proceso es la actividad que consiste en que el científico computacional vaya leyendo la receta, obteniendo los ingredientes y horneando el pastel.


4. ¿Qué es multi procesamiento?

Multiprocesamiento o multiproceso es el uso de dos o más procesadores (CPU) en una computadora para la ejecución de uno o varios procesos (programas corriendo). Algunas personas, en el idioma español hacen sinónimo este término con el de multitareas (del inglés multitasking) el cual consiste en la ejecución de uno o más procesos concurrentes en un sistema. Así como la multitarea permite a múltiples procesos compartir una única CPU, múltiples CPU pueden ser utilizados para ejecutar múltiples procesos o múltiples hilos (threads) dentro de un único proceso.

5. ¿Qué es paralelismo?

El Paralelismo en la informática , es una función que realiza el procesador para ejecutar varias tareas al mismo tiempo. Es decir, puede realizar varios cálculos simultáneamente, basado en el principio de dividir los problemas grandes para obtener varios problemas pequeños, que son posteriormente solucionados en paralelo.

6. Investiga y haz un resumen de los siguientes conceptos de [este artículo](https://www.raywenderlich.com/5370-grand-central-dispatch-tutorial-for-swift-4-part-1-2).
   - Grand Central Dispatch 
   - Concurrencia
   - Colas (Queues)
   - Proceso síncrono vs asíncrono

### Swift: