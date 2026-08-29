// 8.   Un local de ropa desea analizar las ventas realizadas en el último mes. Para ello se lee por cada día del mes,
//      los montos de las ventas realizadas. La lectura de montos para cada día finaliza cuando se lee el monto 0. Se
//      asume un mes de 31 días. Informar la cantidad de ventas por cada día, y el monto total acumulado en ventas
//      de todo el mes.

        program untitled;
        var
            dia,i,cantidad:integer;
            monto,totalMonto:real;
        begin
            totalMonto:= 0;
            for dia := 1 to 31 do
                begin
                    cantidad := 0;
                    repeat
                        write('Escribe el monto: ');
                        readln(monto);
                        totalMonto := totalMonto + monto;
                        cantidad := cantidad + 1;
                    until (monto = 0);
                    write('Para el dia: ',dia,' se vendio: ', cantidad);
                end.
            write('Total de ventas: ',totalMonto);
        end.



// a. Modifique el ejercicio anterior para que además informe el día en el que se realizó la mayor cantidad
// de ventas.

        program untitled;
        var
            dia,cantidad,mayorVenta,diaMayor:integer;
            monto,totalMonto:real;
        begin
            totalMonto:= 0;
            mayorVenta:= -1;
            for dia := 1 to 31 do
                begin
                    cantidad := 0;
                    repeat
                        write('Escribe el monto: ');
                        readln(monto);
                        totalMonto := totalMonto + monto;
                        cantidad := cantidad + 1;
                    until (monto = 0);
                    write('Para el dia: ',dia,' se vendio: ', cantidad);
                    if mayorVenta < cantidad then
                        mayorVenta := cantidad;
                        diaMayor := dia;

                end.
            write('Total de ventas: ',totalMonto);
            write('Este el el dia con mayor cantidad de ventas : ',diaMayor);
        end.
