// 3.   Realizar un programa que lea desde teclado la información de alumnos ingresantes a la carrera Analista en
//      TIC. De cada alumno se lee nombre y nota obtenida en el módulo EPA (la nota es un número entre 1 y 10).
//      La lectura finaliza cuando se lee el nombre “Zidane Zinedine“, que debe procesarse. Al finalizar la lectura
//      informar:

// ●    La cantidad de alumnos aprobados (nota 8 o mayor).
// ●    La cantidad de alumnos que obtuvieron un 7 como nota

program untitled;
var
    nombre: string;
    nota:integer;
    alumnoAprobados,alumno7:integer;
begin
    alumno7:= 0;
    alumnoAprobados:= 0;
    repeat
        write('Escriba el nombre: ');
        readln(nombre);
        write('Escriba la nota: ');
        readln(nota);
        if nota >= 8 then
            alumnoAprobados := alumnoAprobados + 1;
        if nota = 7 then
            alumno7 := alumno7 + 1;
    until (nombre = 'Zidane Zinedine');
    write('alumno aprobados: ',alumnoAprobados);
    write('alumno 7: ', alumno7);
end;
