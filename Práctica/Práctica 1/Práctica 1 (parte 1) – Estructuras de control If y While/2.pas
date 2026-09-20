// Realizar un programa que lea un número real e imprima su valor absoluto. El valor absoluto de un número
// X, se escribe |X| y se define como:
// |X| = X cuando X es mayor o igual a cero
// |X| = -X cuando X es menor a cero

program untitled;

var
    Numero_Real: real;
    Numero_Absoluto: real;

begin
    write('Ingrese un numero real: ');
    readln(Numero_Real);

    if Numero_Real < 0 then
        Numero_Absoluto := -Numero_Real
    else
        Numero_Absoluto := Numero_Real;

    writeln('Su numero absoluto es: ', Numero_Absoluto:0:2);
end.
