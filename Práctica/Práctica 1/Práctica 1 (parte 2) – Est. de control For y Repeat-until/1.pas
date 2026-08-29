// 1.   Realizar un programa que lea 10 números enteros e informe la suma total de los      números leídos.


program untitled;
var
     numero,resultado,i:integer;
begin
    resultado := 0;
    for i:= 1 to 10 do
        begin
            write('Escriba un numero: ');
            readln(numero);
            resultado := numero + resultado;
        end;
        write(resultado);
end;

// a.   Modifique el ejercicio 1 para que además informe la cantidad de números mayores a 5

program untitled;
var
     numero,resultado,i,mayoresAcinco:integer;
begin
    resultado := 0;
    mayoresAcinco := 0;
    for i:= 1 to 10 do
        begin
            write('Escriba un numero: ');
            readln(numero);
            if numero > 5 then
                mayoresAcinco := mayoresAcinco + 1;
            resultado := numero + resultado;
        end;
        write(resultado, mayoresAcinco);
end;
