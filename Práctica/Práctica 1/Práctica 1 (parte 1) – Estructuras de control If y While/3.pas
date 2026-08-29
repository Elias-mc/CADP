// Realizar un programa que lea un número real X. Luego, deberá leer números reales hasta que se ingrese
// uno cuyo valor sea exactamente el doble de X (el primer número leído)

program untitled;

var
numeroReal:real;
numeroRealDoble:real;
begin
write('Escribe un numero:');
read(numeroReal);
while ((numeroRealDoble/2)<>(numeroReal)) do
    begin
        write('Escribe otro numero:');
        readln(numeroRealDoble);
    end;
writeln('El numero q es el doble es ',numeroRealDoble:2:1);
end.
