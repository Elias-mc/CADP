// Realizar un programa que lea el número de legajo y el promedio de cada alumno de la facultad. La lectura
// finaliza cuando se ingresa el legajo -1, que no debe procesarse.
// Por ejemplo: se lee la siguiente secuencia:
// 33423
// 8.40
// 19003
// 6.43
// -1

program untitled;
var
    legajo:integer;
    promedio:real;
begin
    write('Escribe el legajo:');
    read(legajo);
    while (legajo <> -1) do
        begin
            writeln('Escribe el promedio:');
            read(promedio);
            write('Escribe el legajo:');
            read(legajo);
        end;
