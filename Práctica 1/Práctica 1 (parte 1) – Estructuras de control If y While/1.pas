// Realizar un programa que lea 2 números enteros desde teclado e informe en pantalla cuál de los dos
// números es el mayor. Si son iguales debe informar en pantalla lo siguiente:
// Los números leídos son iguales

program untitled;

var
  num1,num2:integer;
begin
    writeln('Escribe tu primer numero:');
    readln(num1);
    writeln('Escribe tu segundo numero');
    readln(num2);

    if (num1 = num2) then
        writeln('Los números leídos son iguales')
    else if (num1 >= num2) then
        writeln('Este es mayor: ',num1,' que ', num2)
    else
        writeln('Este es mayor: ',num2,' que ', num1)
end.

var
