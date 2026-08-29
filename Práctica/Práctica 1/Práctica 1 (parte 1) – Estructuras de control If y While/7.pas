// 7.   Realizar un programa que lea tres caracteres, e informe si los tres eran letras vocales o si al menos uno de
//      ellos no lo era.
// Por ejemplo:
// ○    Si se leen los caracteres “a e o”, deberá informar: Los tres son vocales
// ○    Si se leen los caracteres “z a g”, deberá informar: Al menos un carácter no era vocal

program untitled;
var
    caracter1,caracter2,caracter3:string;
begin
    write('Escriba el pimer caracter: ');
    readln(caracter1);
    write('Escriba el segundo caracter: ');
    readln(caracter2);
    write('Escriba el tercer caracter: ');
    readln(caracter3);

    if (caracter1 = 'a' or caracter1 = 'i' or caracter1 = 'e' or caracter1 = 'o' or caracter1 = 'u') and (caracter2 = 'a' or caracter2 = 'i' or caracter2 = 'e' or caracter2 = 'o' or caracter2 = 'u') and (caracter3 = 'a' or caracter3 = 'i' or caracter3 = 'e' or caracter3 = 'o' or caracter3 = 'u') then
        writeln('Los tres son vocales')

    else
        writeln('Al menos un carácter no era vocal')

end;
