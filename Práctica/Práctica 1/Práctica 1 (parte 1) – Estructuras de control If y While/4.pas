// Modifique el ejercicio anterior para que, luego de leer el número X, se lean a lo sumo 10 números reales.
// La lectura deberá finalizar al ingresar un valor que sea el doble de X, o al leer el décimo número, en cuyo
// caso deberá informarse: No se ha ingresado el doble de X

program untitled;

var
numeroReal:real;
numeroRealDoble:real;
cantidad:integer;

begin
cantidad:= 0;
numeroRealDoble:=0;
write('Escribe un numero:');
read(numeroReal);

while ((numeroRealDoble/2)<>(numeroReal)) and (cantidad <= 10)  do
    begin
        cantidad := cantidad + 1;
        write('Escribe otro numero:');
        readln(numeroRealDoble);
    end;
if ((numeroRealDoble/2)<>(numeroReal)) then
    writeln('El numero q es el doble es ',numeroRealDoble:2:1);
else
    writeln('No se ha ingresado el doble de X');
end.
