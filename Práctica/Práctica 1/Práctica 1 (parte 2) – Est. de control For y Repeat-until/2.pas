// 2.   Realice un programa que lea 10 números e informe cuál fue el mayor número leído.

// Por ejemplo: si se lee la secuencia: 3 5 6 2 3 10 98 8 -12 9, deberá informar:
// El mayor número leído fue el 98

program untitled;
var
    numeroMayor,numero,i:integer;
begin
    numeroMayor := -1;
    for i := 1 to 10 do
        begin
            write('Escriba un numero: ');
            readln(numero);
            if numeroMayor < numero then
                numeroMayor:= numero;
        end;
    write('El mayor número leído fue el: ',numeroMayor);
end.


// a.   Modifique el programa anterior para que, además de informar el mayor número leído, se informe el
// número de orden, dentro de la secuencia, en el que fue leído.

// Por ejemplo: si se lee la misma secuencia: 3 5 6 2 3 10 98 8 -12 9, deberá informar:
// El mayor número leído fue el 98, en la posición 7

program untitled;
var
    numeroMayor,numero,i,numeroOrden:integer;
begin
    numeroMayor := -1;
    for i := 1 to 10 do
        begin
            write('Escriba un numero: ');
            readln(numero);
            if numeroMayor <= numero then
                numeroOrden:= i
                numeroMayor:= numero;
        end;
    write('El mayor número leído fue el: ',numeroMayor,' en la posicion : ',numeroOrden);
end.
