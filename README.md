# Proyecto_ETL

![istockphoto-1369267861-612x612](https://github.com/chiinwy/Proyecto_ETL/assets/137778612/193e5a78-d70f-4600-a5b5-c9eca68d0250)

En este proyecto tenemos que aplicar todo lo que hemos aprendido hasta el momento. Lo que tenemos que hacer es escrapear datos de dos métodos diferentes y de 3 fuentes diferentes, en mi caso he utilizado descargar un csv y el otro método scrapear mediante BeautifulSoup y con Selenium.Exi Lo siguiente es limpiar los datos y tranformarlos, en este caso con pandas. Lo ultimo que hay que hacer es subir los datos a una base de datos, ya sea SQL o MongoDB. En mi caso he utilizado SQL.

Mi temática es la temporada 2012 de la Fórmula 1.

Primero he scrapeado, mediante BeautifulSoup, el sistema de puntuación de la temporada 2012 y he utilizado la siguiente URL, y no habia que limpiar ningun dato.
https://www.dazn.com/es-ES/news/f%C3%B3rmula-1/como-se-reparten-los-puntos-en-f1/1lrfnerijevkf17w0meq0moi1k

Lo siguiente ha sido sacar la tabla de los circuitos de la siguiente URL mediante BeautifulSoup.
https://en.wikipedia.org/wiki/2012_Formula_One_World_Championship

A continuación he obtenido la clasificación de los pilotos de esa temporada mediante Selenium en la siguiente URL. Hubo que hacer un poco de limpieza de a tabla y asignar los nombres correctos de cada circuito en las columnas correspondientes.
https://soymotor.com/clasificacion-mundial-f1/2012

Uno de los ultimos pasos ha sido la limpieza del archivo csv descargado desde Kaggle, donde salian todos los pilotos de F1 de la historia, pero solo necesitabamos en la tabla los pilotos de esa misma temporada, asi que hubo que eliminar columnas que no aportaban nada.
https://www.kaggle.com/datasets/rohanrao/formula-1-world-championship-1950-2020?select=constructors.csv

Por último, había que sacar la clasificación de las escuderías de ese año desde la siguiente URL.
https://www.formula1.com/en/results.html/2012/team.html
