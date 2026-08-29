// 6.   Realizar un programa que lea el código, el precio actual y el nuevo precio de los productos de un almacén.
//      La lectura finaliza al ingresar el producto con el código 32767, el cual debe procesarse. Para cada producto
//      leído, el programa deberá indicar si el nuevo precio del producto supera en un 10% al precio anterior.

// Por ejemplo:

// ○    Si se ingresa el código 10382, con precio actual 40 y nuevo precio 44, deberá imprimir:
//      El aumento de precio del producto 10382 no supera el 10%

// ○    Si se ingresa el código 32767, con precio actual 30 y nuevo precio 33,01, deberá imprimir:
//      El aumento de precio del producto 32767 es superior al 10%”

program untitled;
var
    codigo:integer;
    precioActual:real;
    precioNuevo:real;
    diferencia: real;
    porcentaje:real;
begin

    repeat
        write('Escriba el codigo :');
        readln(codigo);
        write('Escriba el precio actual: ');
        readln(precioActual);
        write('Escriba el precio Nuevo:');
        readln(precioNuevo);
        diferencia := precioNuevo - precioActual;
        porcentaje:= (diferencia/precioActual)*100;
        if (porcentaje < 10) then
            write('El aumento de precio del producto ',codigo,' no supera el 10%')
        else
            write('El aumento de precio del producto ',codigo, ' es superior al 10%”')
    until (codigo = 32767);
end.
