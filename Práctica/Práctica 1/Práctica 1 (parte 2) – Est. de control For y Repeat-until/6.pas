// 6.   Realizar un programa que lea información de 200 productos de un supermercado. De cada producto se lee
//      código y precio (cada código es un número entre 1 y 200). Informar en pantalla:

// ●    Los códigos de los dos productos más baratos.
// ●    La cantidad de productos de más de 16 pesos con código par.

        program untitled;
        var
            codigo,i,codigoBarato1,codigoBarato2,cantidad: integer;
            precio,precioBarato1,precioBarato2:real;
        begin
            precioBarato1:= 99999;
            precioBarato2:=9999;
            cantidad:= 0;
            for i := 1 to 200 do
                begin
                    write('Escribe un codigo: ');
                    readln(codigo);
                    write('Escribe un precio: ');
                    readln(precio);
                    if precio < precioBarato1 then
                        begin
                            precioBarato2 := precioBarato1;
                            codigoBarato2 := codigoBarato1;
                            precioBarato1:= precio;
                            codigoBarato1 := codigo;
                        end
                    else if precio < precioBarato2 then
                        begin
                            precioBarato2 := precio;
                            codigoBarato2 := codigo;
                        end;
                    if (precio > 16 ) and (codigo mod 2 = 0) then
                        cantidad := cantidad + 1
                end;
                write('Los códigos de los dos productos más baratos: ',codigoBarato1,codigoBarato2);
                write('La cantidad de productos de más de 16 pesos con código par: ',cantidad);
        end.
