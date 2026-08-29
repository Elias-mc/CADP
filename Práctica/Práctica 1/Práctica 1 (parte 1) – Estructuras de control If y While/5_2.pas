// En el ejemplo anterior, se leyó el legajo 33422, cuyo promedio fue 8.40, luego se leyó el legajo 19003, cuyo
// promedio fue 6.43, y finalmente el legajo -1 (para el cual no es necesario leer un promedio).
// Al finalizar la lectura, informar:
// a. La cantidad de alumnos leída (en el ejemplo anterior, se debería informar 2).
// b. La cantidad de alumnos cuyo promedio supera 6.5 (en el ejemplo anterior, se debería informar 1).
// c. El porcentaje de alumnos destacados (alumnos con promedio mayor a 8.5) cuyo legajo sean menor
// al valor 2500 (en el ejemplo anterior, se debería informar 0%).

program untitled;
var
    legajo:integer;
    promedio:real;
    cantidadAlumnos:integer;
    AlumnosSuperiores:integer;
    alumnoDestacados:integer;
begin
    cantidadAlumnos:= 0;
    legajo:= 0;
    AlumnosSuperiores:= 0;
    write('Escribe el legajo:');
    read(legajo);
    while (legajo <> -1) do
        begin
            writeln('Escribe el promedio:');
            read(promedio);
            cantidadAlumnos:= cantidadAlumnos + 1;
            if (promedio > 6.5) then
                    AlumnosSuperiores:= AlumnosSuperiores + 1 ;
                if (promedio > 8.5) and (legajo < 2500) then
                    alumnoDestacados := alumnoDestacados + 1 ;
            write('Escribe el legajo:');
            read(legajo);
        end;
    writeln('Existen esta cantidad de alumnos: ',cantidadAlumnos);
    writeln('Alumnos Superiores al 6.5: ',AlumnosSuperiores);
    writeln('alumno destacados: ',(cantidadAlumnos * alumnoDestacados)/100);
