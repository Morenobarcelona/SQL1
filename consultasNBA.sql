 /*1.Equipo y ciudad de los jugadores españoles de la NBA.*/
 
SELECT  equipos. Nombre,equipos.Ciudad FROM jugadores inner join jugadores on equipos.Nombre=jugadores.Nombre_equipo  WHERE Procedencia='Spain';
 
/* 2.Equipos que comiencen por H y terminen en S.  */

SELECT equipos.Nombre FROM equipos WHERE Nombre like 'H%S';
 
/* 3.Puntos por partido de 'Pau Gasol' en toda su carrera. */
SELECT avg(Puntos_por_partido) FROM estadisticas, jugadores WHERE jugadores.codigo=estadisticas.jugador and jugadores.Nombre='Pau Gasol';

/* 4.Equipos que hay en la conferencia oeste('west'). */

SELECT Nombre FROM jugadores WHERE Procedencia='West';

/*5.Jugadores de Arizona que pesen mas de 100 kilos y midan mas de 1.82 cm (6 pies). */

SELECT Nombre,Altura FROM jugadores WHERE Procedencia='Arizona' and Altura > '6' and Peso   *2.205 > '100';

/*6.Puntos por partido  de los jugadores de los 'cavaliers'. */

SELECT  avg(Puntos_por_partido) AS Puntos,Nombre FROM estadisticas,jugadores WHERE  jugadores.codigo=estadisticas.jugador  and Nombre_equipo='Cavaliers' group by Nombre;

/*7.Jugadores cuya tercera letra de su nombre sea la v. */

SELECT Nombre FROM jugadores WHERE Nombre like '_v%';

/*8.Número de jugadores que tiene cada equipo de la conferencia oeste 'west'. */

 
 /*9.Número de jugadores Argentinos en la NBA. */
 
SELECT count (*) FROM jugadores WHERE Procedencia ='Argentina';


/*10.Máxima media de puntos de 'Lebron Jones' en su carrera.*/


SELECT max (Puntos_por_Partido) from estadisticas, jugadores WHERE jugadores.codigo = estadisticas.jugador and jugadores.Nombre  ='Lebron James';



/*11.Asistencias por partido de 'Jose Calderon' en la temporada '07/08'. */
SELECT Asistencias_por_partido, Nombre, Temporada from estadisticas, jugadores WHERE jugadores.codigo = estadisticas.jugador and jugadores.Nombre = 'Jose Calderon' and Temporada ='06/07';


/*12.Puntos por partido de 'Chris Bosh' en las temporadas del 03/04 al 05/06. */
SELECT Puntos_por_partido, Nombre, Temporada from estadisticas, jugadores WHERE jugadores.codigo =estadisticas.jugador and jugadores.Nombre = 'Chris Bosh' and  Temporada BETWEEN '03/04' AND '05/06';


/*13.Número de jugadores que tiene cada equipo de la conferencia este 'East'.*/
 

/* 14.Tapones por partido de los jugadores de lo 'Blazers'.*/

SELECT avg Tapones_por_partido as TaponesPartido, Nombre FROM estadisticas, jugadores WHERE jugadores.codigo =estadisticas.jugador and jugadores.Nombre_equipo = 'Trail Blazers' group by Nombre;

/*15.Media de rebotes de los jugadores de la conferencia este 'East'. */

SELECT avg (Rebotes_por_partido), jugadores.Nombre FROM    estadisticas, jugadores, equipos WHERE jugadores.codigo = estadisticas.jugador and jugadores.Nombre_equipo = equipos.Nombre and Conferencia = 'East' group by Nombre;


/*16.Rebotes por partido de los jugadores de los equipos de los Angeles. */

SELECT avg (Rebotes_por_partido), jugadores.Nombre from    estadisticas, jugadores, equipos WHERE jugadores.codigo = estadisticas.jugador and jugadores.Nombre_equipo = equipos.Nombre and Ciudad = 'Los Angeles' group by Nombre;

/*17.Número de jugadores que tiene cada equipo de la división North West. */


/*18.Número de jugadores de España y Francia en la NBA.*/

SELECT count (*), Procedencia from jugadores WHERE Procedencia ='Spain' or Procedencia ='France' group by  Procedencia;


/*19.Número de pivots 'C' que tiene cada equipo.*/

SELECT count (*),Nombre_equipo from jugadores WHERE Posicion ='C' group by Nombre_equipo;

/*20.¿Cuanto mide el pivot mas alto de la nba?.*/

SELECT max(Altura) from jugadores; --where Posicion ='C'

/*21 .¿CUanto pesa (en libras y en kilos) el pivot mas alto de la nba? */

SELECT Peso as libras, Peso*0.4535 as Kilos from jugadores  WHERE Altura = (select max (Altura) from jugadores);


/* 22.Número de jugadores que empiezan por 'Y'. */

SELECT count (*) from jugadores WHERE Nombre like 'Y%';


/* 23.Jugadores que no metieron ningun punto en alguna temporada. */
 SELECT distinct jugadores.Nombre from estadisticas, jugadores WHERE jugadores.codigo = estadisticas.jugador and  Puntos_por_partido=0;


/* 24.Número total de jugadores de cada división. */
SELECT count (*), Division from jugadores inner join equipos on equipos.Nombre =jugadores.Nombre_equipo group by Division;


/*25.Peso medio en kilos y en libras de los jugadores de los 'Raptors'. */
SELECT avg(Peso) as MediaLibras, avg(Peso*0.4535) as MediaPeso from jugadores WHERE Nombre_equipo ='Raptors';


/* 26.Mostrar un listado de jugadores con el formato Nombre(Equipo) en una sola columna. */
SELECT concat (nombre,'(',Nombre_equipo,')') from jugadores;

 /*27.Puntuación más baja de un partido de la NBA. */
SELECT min(puntos_local+puntos_visitantes) from partidos;


/*28.Primeros 10 jugadores por orden alfabético. */
SELECT nombre from jugadores order by nombre limit 10;


/* 29.Temporada con más puntos por partido de 'Kobe Bryant'. */

/* 30.Número de equipos que tiene cada equipo de la conferencia este 'East'. */
 
 SELECT count (*), Nombre_equipo from jugadores, equipos WHERE  jugadores.Nombre = equipos.Nombre and Posicion = 'G' and  equipos.Conferencia = 'East' group by Nombre_equipo;

/*31.Número de equipos que tiene cada conferencia. */

  SELECT count (*), Conferencia from equipos group by        Conferencia;

/*32.Nombre de las divisiones de la conferencia Este. */
SELECT distinct Division from equipos WHERE Conferencia =  'East'; 


/*33.Máximo reboteador de los 'Suns'. */


/*34.Máximo anotador de la toda base de datos en una temporada. */

















