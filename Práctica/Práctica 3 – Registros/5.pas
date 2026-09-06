// 5.   Realizar un programa que lea información de autos que están a la venta en una concesionaria. De cada auto se
//      lee: marca, modelo y precio. La lectura finaliza cuando se ingresa la marca “ZZZ” que no debe procesarse. La
//      información se ingresa ordenada por marca. Se pide calcular e informar:

//      a. El precio promedio por marca.

//      b. Marca y modelo del auto más caro.


        program untitled;
        type
            auto  = record
                marca : string;
                modelo : string;
                precio : real;
            end;

        procedure leerAuto(var au:auto);
        begin
            write('Escriba la marca: ');
            readln(au.marca);
            write('Escriba el modelo: ');
            readln(au.modelo);
            write('Escriba el precio: ');
            readln(au.precio);
        end;

        procedure Realizar( );
        var
            au:auto;
            maraAct:string;
            cantMarca:integer;
            precioTotal:real;
            precioMax:real;
            marcaMax:string;
            modeloMax:string;
        begin
            leerAuto(au);

            precioMax:= -1;
            while(au.marca <> 'ZZZ') do
            begin
                precioTotal:= 0;
                cantMarca:=0;
                maraAct:= au.marca;
                while (au.marca = maraAct) do
                begin
                    precioTotal:= precioTotal + au.precio;
                    cantMarca:= cantMarca + 1 ;
                    if precioMax < au.precio then
                    begin
                        precioMax := au.precio;
                        marcaMax := maraAct;
                        modeloMax := au.modelo;
                    end;
                    leerAuto(au);

                end;
                write('Precio promedio es :',precioTotal/cantMarca);
            end;
            write('Este es el precio: ',precioMax,' Este es la marca mas cara: ',marcaMax,' de este modelo: ',modeloMax);
        end;

    begin
        Realizar()
    end.
