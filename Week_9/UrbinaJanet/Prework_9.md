1. ¿Qué es concurrencia?

Se refiere a la habilidad de distintas partes de un programa, algoritmo, o problema de ser ejecutado en desorden o en orden parcial, sin afectar el resultado final.

2. ¿Qué es un hilo?

Es la menor de las estructuras lógicas de programación que se ejecuta de forma secuencial por parte del planificador del sistema operativo.



3. ¿Qué es un proceso?

   Un **proceso** es la ejecución de un programa, es decir, los datos e instrucciones están cargados en la memoria principal, ejecutándose o esperando a hacerlo.

   Puede pasar por diferentes estados:

   - **Preparado**: Un proceso que está preparado para ejecutarse. Sólo le "falta" la CPU
   - **En Ejecución**: Un proceso que "tiene" CPU, se está ejecutando
   - **Bloqueado**: Un proceso bloqueado está esperando que ocurra un suceso antes de poder "usar" la CPU. Dicho suceso suele ser una operación de Entrada / Salida: pulsar una tecla, leer de disco... Pero también puede ser que esté esperando a que otro proceso haga algo.

   

4. ¿Qué es multiprocesamiento?

   Es el uso de dos o más procesadores *(CPU)* en una computadora para la ejecución de uno o varios procesos *(programas corriendo)*.

5. ¿Qué es paralelismo?

   Es una forma de computación en la cual varios cálculos pueden realizarse simultáneamente, basado en el principio de dividir los problemas grandes para obtener varios problemas pequeños, que son posteriormente solucionados en paralelo. Hay varios tipos diferentes de paralelismo: nivel de bit, nivel de instrucción, de datos y de tarea.

6. Resumen de los conceptos:

   **Gran Central Dispatch GCD**

   Es una API de bajo nivel para administrar operaciones concurrentes. Ayuda a mejorar la capacidad de respuesta de su aplicación al diferir tareas computacionalmente costosas en un segundo plano.

   **Concurrencia**

   Un proceso consta de uno o más hilos. El sistema operativo gestiona los hilos independientemente uno del otro. Cada subproceso puede ejecutarse simultáneamente, pero depende del sistema decidir si esto sucede, cuándo sucede y cómo sucede.

   **Colas (Queues)**

   GCD opera en colas de despacho a través de una clase llamada DispatchQueue. Se envían unidades de trabajo a esta cola y GCD las ejecutará en un orden FIFO (Primero en entrar, Primero en salir), garantizando que la primera tarea enviada sea la primera iniciada.

   GCD proporciona tres tipos principales de colas:

   Cola principal: se ejecuta en el hilo principal y es una cola en serie.
   Colas globales: colas concurrentes que son compartidas por todo el sistema. Hay cuatro colas con diferentes prioridades: alta, predeterminada, baja y de fondo.
   Colas personalizadas: colas que crea que pueden ser seriales o concurrentes. Las solicitudes en estas colas en realidad terminan en una de las colas globales.

​		**Proceso síncrono vs asíncrono**.

Una función sincrónica devuelve el control a la persona que llama una vez que se completa la tarea. Se puede programar una unidad de trabajo sincrónicamente llamando a DispatchQueue.sync (execute :).

Una función asincrónica regresa de inmediato, ordenando que se inicie la tarea pero sin esperar a que se complete. Por lo tanto, una función asincrónica no impide que el hilo de ejecución actual pase a la siguiente función. Se puede programar una unidad de trabajo de forma asincrónica llamando a DispatchQueue.async (execute :).
