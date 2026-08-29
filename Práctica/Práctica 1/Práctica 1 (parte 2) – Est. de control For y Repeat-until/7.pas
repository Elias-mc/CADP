// 7.   Realizar un programa que lea desde teclado información de autos de carrera. Para cada uno de los autos se
//      lee el nombre del piloto y el tiempo total que le tomó finalizar la carrera. En la carrera participaron 100
//      autos. Informar en pantalla:

// ●    Los nombres de los dos pilotos que finalizaron en los dos primeros puestos.
// ●    Los nombres de los dos pilotos que finalizaron en los dos últimos puestos.


        program untitled;
        var
            nombre,nombreMin1,nombreMin2,nombreMax1,nombreMax2:string;
            tiempo,minimo1,minimo2,maximo1,maximo2:real;
            i:integer;
        begin
        minimo1:= 999999;
        minimo2:= 99999;
        maximo1:=-1;
        maximo2:= -1;
            for i := 1 to 100 do
                begin
                    write('Escribe el nombre: ');
                    readln(nombre);
                    write('Escribe el tiempo: ');
                    readln(tiempo);
                    if  minimo1 > tiempo then
                        begin
                            minimo2:= minimo1;
                            nombreMin2:= nombreMin1;
                            minimo1:= tiempo;
                            nombreMin1:= nombre;
                        end
                    else if minimo2 > tiempo then
                        begin
                            minimo2 := tiempo;
                            nombreMin2:= nombre;
                        end;
                    if maximo1 < tiempo then
                        begin
                            maximo2:= maximo1;
                            nombreMax2 := nombreMax1;
                            maximo1:= tiempo;
                            nombreMax1:= nombre;
                        end
                    else if (maximo2 < tiempo) then
                        begin
                            maximo2 := tiempo;
                            nombreMax2 := nombre;
                        end;
                end;
                write('Los nombres de los dos pilotos que finalizaron en los dos primeros puestos: ',nombreMin1,nombreMin2);
                write('Los nombres de los dos pilotos que finalizaron en los dos últimos puestos: ',nombreMax1,nombreMax2);

        end.
