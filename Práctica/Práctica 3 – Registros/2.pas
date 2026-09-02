// 2.   El registro civil de La Plata ha solicitado un programa para analizar la distribución de casamientos durante el
//      año 2019. Para ello, cuenta con información de las fechas de todos los casamientos realizados durante ese
//      año.

//      a.   Analizar y definir un tipo de dato adecuado para almacenar la información de la fecha de cada
//          casamiento.

//      b.   Implementar un módulo que lea una fecha desde teclado y la retorne en un parámetro cuyo tipo es el
//          definido en el inciso a.

//      c.   Implementar un programa que lea la fecha de todos los casamientos realizados en 2019. La lectura
//          finaliza al ingresar el año 2020, que no debe procesarse, e informe la cantidad de casamientos
//          realizados durante los meses de verano (enero, febrero y marzo) y la cantidad de casamientos
//          realizados en los primeros 10 días de cada mes. Nota: utilizar el módulo realizado en b) para la lectura
//          de fecha.


        program untitled;
        type
                casamientos = record
                        dia:integer;
                        mes:string;
                        anio:integer;
                end;

        procedure leer (var c:casamientos);
                begin
                        write('Escriba el anio: ');
                        readln(c.anio);

                        if (c.anio <> 2020) then
                                begin
                                        write('Escriba el dia: ');
                                        readln(c.dia);
                                        write('Escriba el mes: ');
                                        readln(c.mes);
                                end;
                end;

        procedure realizar (var cant2019:integer; var cantVerano:integer; var cantDias10:integer);
        var
                c:casamientos;
        begin
                leer(c);
                while (c.anio <> 2020) do
                begin
                        if ( c.anio = 2019) then
                                cant2019 := cant2019 + 1 ;
                        if (c.mes = 'enero') or (c.mes = 'febrero') or (c.mes = 'marzo') then
                                cantVerano := cantVerano + 1 ;
                        if (c.dia <= 10) then
                                cantDias10 := cantDias10 + 1 ;
                        leer(c);
                end;

        end;
        var
                cant2019 : integer;
                cantDias10:integer;
                cantVerano:integer;
        begin
                realizar(cant2019,cantVerano,cantDias10);
                write('Esta es la cantidad del 2019: ',cant2019);
                write('Esta es la cantidad de meses de verano: ',cantVerano);
                write('Este es la cantidad de dias menos a 10: ',cantDias10);
        end.
