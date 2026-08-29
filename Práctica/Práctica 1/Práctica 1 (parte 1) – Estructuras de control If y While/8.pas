// 8.   Realizar un programa que lea un carácter, que puede ser “+” (suma) o “-” (resta); si se ingresa otro carácter,
//      debe informar un error y finalizar. Una vez leído el carácter de suma o resta, deberá leerse una secuencia
//      de números enteros que finaliza con 0. El programa deberá aplicar la operación leída con la secuencia de
//      números, e imprimir el resultado final.

// Por ejemplo:
// ○    Si se lee el carácter “-” y la secuencia 4 3 5 -6 0 , deberá imprimir: 2 (4 – 3 – 5 - (-6) )
// ○    Si se lee el carácter “+” y la secuencia -10 5 6 -1 0, deberá imprimir: 0 (-10 + 5 + 6 + (-1))

program untitled;
var
    caracter : string;
    numero: integer;
    resultado: integer;
begin
    write('Escriba un caracter: ');
    readln(caracter);
    if caracter = '+' or caracter = '-' then
        begin
            write('Escriba un numero: ');
            readln(numero);
            resultado := numero
            while (numero <> 0) do
                begin
                    if caracter = '+' then
                        resultado := resultado + numero
                    if caracter = '-' then
                        resultado := resultado - numero
                    write('Escriba un numero: ');
                    readln(numero);
                end;
            write(resultado)
        end
    else
        write('error');
