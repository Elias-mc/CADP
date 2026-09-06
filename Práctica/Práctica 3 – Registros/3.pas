// 3.   El Ministerio de Educación desea realizar un relevamiento de las 2400 escuelas primarias de la provincia de Bs.
//      As, con el objetivo de evaluar si se cumple la proporción de alumnos por docente calculada por la UNESCO
//      para el año 2015 (1 docente cada 23,435 alumnos). Para ello, se cuenta con información de: CUE (código único
//      de establecimiento), nombre del establecimiento, cantidad de docentes, cantidad de alumnos, localidad. Se
//      pide implementar un programa que procese la información y determine:

//      ● Cantidad de escuelas de La Plata con una relación de alumnos por docente superior a la sugerida por
//        UNESCO.

//      ● CUE y nombre de las dos escuelas con mejor relación entre docentes y alumnos.
//        El programa debe utilizar:
//          a. Un módulo para la lectura de la información de la escuela.
//          b. Un módulo para determinar la relación docente-alumno (esa relación se obtiene del cociente entre la
//             cantidad de alumnos y la cantidad de docentes).


        program untitled;

        const
            ESCUELAS = 2400;
            RELACION_UNESCO = 23.435;

        type
            escuela = record
                cue: integer;
                nombre: string;
                docentes: integer;
                alumnos: integer;
                localidad: string;
            end;


        // a. Módulo para leer la información de una escuela
        procedure leerEscuela(var e: escuela);
        begin
            write('CUE: ');
            readln(e.cue);

            write('Nombre de la escuela: ');
            readln(e.nombre);

            write('Cantidad de docentes: ');
            readln(e.docentes);

            write('Cantidad de alumnos: ');
            readln(e.alumnos);

            write('Localidad: ');
            readln(e.localidad);
        end;


        // b. Módulo para calcular la relación alumnos/docente
        function relacion(e: escuela): real;
        begin
            relacion := e.alumnos / e.docentes;
        end;


        var
            e: escuela;
            i: integer;
            cantidadLaPlata: integer;

            mejorRelacion1: real;
            mejorRelacion2: real;
            cueMejor1: integer;
            cueMejor2: integer;
            nombreMejor1: string;
            nombreMejor2: string;

        begin
            cantidadLaPlata := 0;

            mejorRelacion1 := 99999;
            mejorRelacion2 := 99999;

            for i := 1 to ESCUELAS do
            begin
                leerEscuela(e);

                // Cantidad de escuelas de La Plata
                // cuya relación supera la recomendada por UNESCO
                if (e.localidad = 'La Plata') and (relacion(e) > RELACION_UNESCO) then
                begin
                    cantidadLaPlata := cantidadLaPlata + 1;
                end;

                // Buscar las dos mejores relaciones
                if relacion(e) < mejorRelacion1 then
                begin
                    mejorRelacion2 := mejorRelacion1;
                    cueMejor2 := cueMejor1;
                    nombreMejor2 := nombreMejor1;

                    mejorRelacion1 := relacion(e);
                    cueMejor1 := e.cue;
                    nombreMejor1 := e.nombre;
                end
                else if relacion(e) < mejorRelacion2 then
                begin
                    mejorRelacion2 := relacion(e);
                    cueMejor2 := e.cue;
                    nombreMejor2 := e.nombre;
                end;
            end;

            writeln('Cantidad de escuelas de La Plata con relacion superior a UNESCO: ',cantidadLaPlata);

            writeln('Escuela con mejor relacion:');
            writeln('CUE: ', cueMejor1);
            writeln('Nombre: ', nombreMejor1);
            writeln('Relacion: ', mejorRelacion1:0:3);

            writeln('Escuela con segunda mejor relacion:');
            writeln('CUE: ', cueMejor2);
            writeln('Nombre: ', nombreMejor2);
            writeln('Relacion: ', mejorRelacion2:0:3);
        end.
