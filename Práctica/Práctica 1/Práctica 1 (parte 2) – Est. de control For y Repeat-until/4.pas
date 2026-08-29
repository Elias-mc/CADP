// 4.   Realizar un programa que lea 1000 números enteros desde teclado. Informar en pantalla cuáles son los dos
//      números mínimos leídos.

        program untitled;
        var
            numero,minimo1,minimo2,i:integer;
        begin
            minimo1:= 99999;
            minimo2:= 99999;
            for i := 1 to 1000 do
                begin
                    write('Escriba el numero: ');
                    readln(numero);
                    if minimo1 > numero then
                        begin
                            minimo2 := minimo1;
                            minimo1:= numero;
                        end
                    else if minimo2 > numero then
                        minimo2 := numero;
                end;
            write('Estos son los dos numeros minimos: ', minimo1, minimo2);
        end.

// a.   Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer el
//      número 0, el cual debe procesarse.

        program untitled;
        var
            numero,minimo1,minimo2,i:integer;
        begin
            minimo1:= 99999;
            minimo2:= 99999;

            repeat
                write('Escriba el numero: ');
                readln(numero);
                if minimo1 > numero then
                    begin
                        minimo2 := minimo1;
                        minimo1:= numero;
                    end
                else if minimo2 > numero then
                        minimo2 := numero;
            until(numero = 0);
            write('Estos son los dos numeros minimos: ', minimo1, minimo2);
        end.

// b.   Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer el
//      número 0, el cual no debe procesarse.

        program untitled;
        var
            numero,minimo1,minimo2,i:integer;
        begin
            minimo1:= 99999;
            minimo2:= 99999;
            write('Escriba el numero: ');
            readln(numero);
            while (numero <> 0) do
                begin
                    if minimo1 > numero then
                        begin
                            minimo2 := minimo1;
                            minimo1:= numero;
                        end
                    else if minimo2 > numero then
                        minimo2 := numero;

                    write('Escriba el numero: ');
                    readln(numero);
                end;
            write('Estos son los dos numeros minimos: ', minimo1, minimo2);
        end.
