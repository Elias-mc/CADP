// 4.   Una compañía de telefonía celular debe realizar la facturación mensual de sus 9300 clientes con planes de
//      consumo ilimitados (clientes que pagan por lo que consumen). Para cada cliente se conoce su código de
//      cliente y cantidad de líneas a su nombre. De cada línea se tiene el número de teléfono, la cantidad de minutos
//      consumidos y la cantidad de MB consumidos en el mes. Se pide implementar un programa que lea los datos
//      de los clientes de la compañía e informe el monto total a facturar para cada uno. Para ello, se requiere:

//      a. Realizar un módulo que lea la información de una línea de teléfono.

//      b. Realizar un módulo que reciba los datos de un cliente, lea la información de todas sus líneas (utilizando
//         el módulo desarrollado en el inciso a y retorne la cantidad total de minutos y la cantidad total de MB a
//         facturar del cliente.

//      Nota: para realizar los cálculos tener en cuenta que cada minuto cuesta $3,40 y cada MB consumido cuesta
//      $1,35.


        program untitled;
        const
            minute:= 3.40;
            MB:= 1.35;
        type
            cliente = record
                codigo:integer;
                cantidad:integer;
            end;

            linea = record
                numero:integer;
                cant_minutos:integer;
                cant_MB:integer;
            end;



        procedure leerLinea ( var l:linea);
        begin
            write('Escriba el numero de la linea : ');
            readln(l.numero);
            write('Escriba la cantidad de minutos consumidos ');
            readln(l.cant_minutos);
            write('Escriba la cantidad de MB consumidos: ');
            readln(l.cant_MB);
        end;

        procedure leerCliente (var c:cliente);
        begin
            write('Escriba el codigo: ');
            readln(c.codigo);
            write('Escriba la cantidad de lineas: ');
            readln(c.cantidad);
        end;

        procedure ProcesasFacturacion ();
        var
            c:cliente;
            l:linea;
            i,cont:integer;
            totalMinuto,totalMB: integer;
        begin
            for i := 1 to 9300 do
            begin
                totalMB := 0;
                totalMinuto:= 0;
                leerCliente(c);
                for cont:= 1 to c.cantidad do
                begin
                    leerLinea(l);
                    totalMB := totalMB + l.cant_MB;
                    totalMinuto := totalMinuto + l.cant_minutos;
                end;
                writeln('Cantidad total minutos: ', (totalMinuto * minute):0:2, ' Del cliente : ', c.codigo);
                writeln('Cantidad total de MB:', (totalMB * MB):0:2);
            end;
        end;
begin
    ProcesasFacturacion();
end.
