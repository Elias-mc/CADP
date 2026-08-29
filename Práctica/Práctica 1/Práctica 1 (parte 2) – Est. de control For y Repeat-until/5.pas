// 5.   Realizar un programa que lea números enteros desde teclado. La lectura debe finalizar cuando se ingrese el
//      número 100, el cual debe procesarse. Informar en pantalla:

// ●    El número máximo leído.
// ●    El número mínimo leído.
// ●    La suma total de los números leídos.

        program untitled;
        var
            numero,maximo,minimo,total:integer;
        begin
            maximo := -1;
            minimo := 9999;
            total := 0;
            repeat
                write('Escriba un numero: ');
                readln(numero);
                if maximo < numero then
                    maximo := numero;
                if minimo > numero then
                    minimo := numero;
                total:= numero + total;
            until(numero = 100);
            write('Numero maximo : ', maximo);
            write('Numero minimo :', minimo);
            write('Total : ', total);
        end.
