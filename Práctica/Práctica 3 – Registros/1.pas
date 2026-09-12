// 1. Dado el siguiente programa:
program Registros;
type
str20 = string[20];
alumno = record
codigo : integer;
nombre : str20;
promedio : real;
end;
procedure leer(var alu : alumno);
begin
writeln('Ingrese el código del alumno');
readln(alu.codigo);
if (alu.codigo <> 0) then begin
writeln('Ingrese el nombre del alumno'); readln(alu.nombre);
writeln('Ingrese el promedio del alumno'); readln(alu.promedio);
end;
end;
{ declaración de variables del programa principal }
var
a : alumno;
cantidad : integer;
mejorPromedio : real;
mejorNombre : str20;
repetir : boolean;
{ cuerpo del programa principal }
begin
    cantidad := 0;
    mejorPromedio := -1;
    repetir := true;
    while repetir do
    begin
        leer(a);
        if a.codigo <> 0 then
        begin
            cantidad := cantidad + 1;
            if a.promedio > mejorPromedio then
            begin
                mejorPromedio := a.promedio;
                mejorNombre := a.nombre;
            end;
        end
        else
            repetir := false;
    end;
    writeln('Cantidad de alumnos leídos: ', cantidad);
    if cantidad > 0 then
        writeln('Alumno con mejor promedio: ', mejorNombre);
end.
// a. Completar el programa principal para que lea información de alumnos (código, nombre, promedio) e
// informe la cantidad de alumnos leídos. La lectura finaliza cuando ingresa un alumno con código 0, que
// no debe procesarse. Nota: utilizar el módulo leer.
// b. Modificar al programa anterior para que, al finalizar la lectura de todos los alumnos, se informe
// también el nombre del alumno con mejor promedio
