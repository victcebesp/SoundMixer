# Interacción con sonidos y gráficos
Víctor Ceballos Espinosa

## Introducción
El objetivo de esta práctica consiste en implementar una interfaz gráfica mediante la cual se pueda interaccionar con diferentes funcionalidad aportadas por las librerías de sonido como puede ser la librería sound de Processing.

He decidido implementar un mezclador de pistas como los usados por los DJs en la actualidad. Este mezclador tiene cuatro pistas que pueden ser reproducidas en paralelo. Adicionalmente, he implementado la funcionalidad de cambiar el volumen de todas las pistas a la vez. Para conseguir una mejor usabilidad, las pistas son activadas con el teclado y el cambio de volumen con el ratón. Esto se explica a continuación.

## Interfaz gráfica
Tal y como se puede observar en las imágenes, el mezclador está formado por cuatro botones correspondientes a las cuatro pistas. En la parte inferior se encuentra la barra de volumen. Al pulsar en las teclas numéricas desde el 1 hasta el 4, se empezarán a reproducir en bucle las pistas correspondientes y se sabrá qué pista está activada porque en su botón, en vez de aparecer en blanco con la instrucción de apretar el número, aparecerá con su color. Para cambiar el volumen al que se están reproduciendo las pistas, bastará con mover el ratón de izquierda a derecha en la barra de volumen situada en la parte inferior de la interfaz.

## Reproducción de pistas
Cada vez que se ejecuta el método draw, se ejecuta el método `play` del objeto `mixer` que es una instancia de la clase `Mixer`. Al ejecutarse este método, se ejecuta el método `play` de todos los `MixerButtons` que el `Mixer` tiene. En esta ocasión, se ejecutará para los cuatro botones. Es importante notar que el código está preparado para poder añadir más pistas en un futuro. Por último, el método `play` de la clase `MixerButton`, ejecuta en un nuevo hilo el método `playTrack`. Este método reproduce la pista sólo si el botón en cuestión está presionado (en la interfaz gráfica se ve en color) y si no se está reproduciendo ya dicha pista.

Para terminar, es importante decir que cuando se pulsa una tecla numérica entre los números 1 y 4, se activa el botón correspondiente.

## Cambio de volumen
Cómo se indica en la sección de la descripción gráfica, para cambiar el volumen basta con mover el ratón de izquierda a derecha en la barra de volumen. Para implementar esto, primero se comprueba que el ratón está situado en la barra de volumen.

Una vez se ha comprobado esto, se llama al método `updateVolume` de la clase `Mixer` pasándole la posición en el eje x del ratón.

Además de llamar a dicho método, se actualiza el valor de la variable `volume` que controla la correcta visualización del nivel de volumen en la barra de volumen.

## Referencias
[Enunciado de la práctica](https://cv-aep.ulpgc.es/cv/ulpgctp19/pluginfile.php/182523/mod_resource/content/13/CIU_Pr_cticas.pdf)

[Documentación de Processing](https://processing.org/reference/)

[Pistas](https://www.flstudiomusic.com/2015/08/70mb-of-free-mainroom-techno-tech-house-samples-by-wave-alchemy.html)

[Repositorio de GitHub](https://github.com/victcebesp/SoundMixer)
