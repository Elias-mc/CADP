// Realizar un programa que lea un número real X. Luego, deberá leer números reales hasta que se ingrese
// uno cuyo valor sea exactamente el doble de X (el primer número leído)

program untitled;

var
    numeroReal: real;
    numeroRealDoble: real;

begin
    write('Escribe un numero: ');
    readln(numeroReal);

    write('Escribe otro numero: ');
    readln(numeroRealDoble);

    while numeroRealDoble <> numeroReal * 2 do
    begin
        write('No es el doble. Escribe otro numero: ');
        readln(numeroRealDoble);
    end;

    writeln('El numero que es el doble es: ', numeroRealDoble:0:1);
end.
