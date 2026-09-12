// 8. Analizar las ventas realizadas durante un mes de 31 días.
// Para cada día, la lectura de montos finaliza con 0.
// Informar la cantidad de ventas de cada día, el total mensual y el día
// con mayor cantidad de ventas.

program ventasMensuales;

var
    dia, cantidad, mayorCantidad, diaMayor: integer;
    monto, totalMonto: real;

begin
    totalMonto := 0;
    mayorCantidad := -1;
    diaMayor := 0;

    for dia := 1 to 31 do
    begin
        cantidad := 0;
        repeat
            write('Escriba el monto del día ', dia, ': ');
            readln(monto);
            if monto <> 0 then
            begin
                totalMonto := totalMonto + monto;
                cantidad := cantidad + 1;
            end;
        until monto = 0;

        writeln('Para el día ', dia, ' se realizaron ', cantidad, ' ventas.');
        if cantidad > mayorCantidad then
        begin
            mayorCantidad := cantidad;
            diaMayor := dia;
        end;
    end;

    writeln('Total de ventas: ', totalMonto:0:2);
    writeln('Día con mayor cantidad de ventas: ', diaMayor);
end.
