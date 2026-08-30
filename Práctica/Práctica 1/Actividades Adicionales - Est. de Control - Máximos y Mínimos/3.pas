// Actividad 3: Ventas de tanques de agua

// Un fabricante de tanques de agua está analizando las ventas de sus tanques durante el 2020. La
// empresa fabrica tanques a medida, que pueden ser rectangulares (tanques 'R') o cilíndricos (tanques
// 'C') .

// - De cada tanque R se conoce su ancho (A), su largo (B) y su alto (C)
// - De cada tanque C se conoce su radio y su alto

// Todas las medidas se ingresan en metros. Realizar un programa que lea la información de los
// tanques vendidos por la empresa. La lectura finaliza al ingresar un tanque de tipo 'Z'. Al finalizar la
// lectura, el programa debe informar:

// - Volumen de los dos mayores tanques vendidos
// - Volumen promedio de todos los tanques cilíndricos vendidos
// - Volumen promedio de todos los tanques rectangulares vendidos
// - Cantidad de tanques cuyo alto sea menor a 1.40 metros
// - Cantidad de tanques cuyo volumen sea menor a 800 metros cúbicos

        program untitled;

        var
            tipo: string;
            ancho, largo, alto, radio: real;
            volumen: real;
            mayor1, mayor2: real;
            sumaCilindricos, sumaRectangulares: real;
            cantidadCilindricos, cantidadRectangulares: integer;
            cantidadAltos, cantidadVolumen: integer;
        begin

            mayor1 := -1;
            mayor2 := -1;

            sumaCilindricos := 0;
            sumaRectangulares := 0;

            cantidadCilindricos := 0;
            cantidadRectangulares := 0;

            cantidadAltos := 0;
            cantidadVolumen := 0;

            write('Escribe el tipo de tanque (R/C/Z): ');
            readln(tipo);

            while tipo <> 'Z' do
                begin

                    write('Escribe el alto: ');
                    readln(alto);
                    if tipo = 'R' then
                        begin
                            write('Escribe el ancho: ');
                            readln(ancho);

                            write('Escribe el largo: ');
                            readln(largo);

                            volumen := ancho * largo * alto;

                            sumaRectangulares := sumaRectangulares + volumen;
                            cantidadRectangulares := cantidadRectangulares + 1;
                        end
                    else
                        begin
                            write('Escribe el radio: ');
                            readln(radio);

                            volumen := 3.14159 * radio * radio * alto;

                            sumaCilindricos := sumaCilindricos + volumen;
                            cantidadCilindricos := cantidadCilindricos + 1;
                        end;


                    if volumen > mayor1 then
                        begin
                            mayor2 := mayor1;
                            mayor1 := volumen;
                        end
                    else if volumen > mayor2 then
                        begin
                            mayor2 := volumen;
                        end;

                    if alto < 1.40 then
                        cantidadAltos := cantidadAltos + 1;

                    if volumen < 800 then
                        cantidadVolumen := cantidadVolumen + 1;

                    write('Escribe el tipo de tanque (R/C/Z): ');
                    readln(tipo);
                end;
            writeln('Volumen del tanque mayor: ',mayor1:0:2,'m3');
            writeln('Volumen del segundo tanque mayor: ',mayor2:0:2,' m3');

            if cantidadCilindricos > 0 then
                writeln('Volumen promedio de los tanques cilindricos: ',(sumaCilindricos / cantidadCilindricos):0:2,' m3')
            else
                writeln('No se vendieron tanques cilindricos.');

            if cantidadRectangulares > 0 then
                writeln('Volumen promedio de los tanques rectangulares: ',(sumaRectangulares / cantidadRectangulares):0:2,' m3')
            else
                writeln('No se vendieron tanques rectangulares.');

            writeln('Cantidad de tanques con alto menor a 1.40 m: ',cantidadAltos);
            writeln('Cantidad de tanques con volumen menor a 800 m3: ',cantidadVolumen);
        end.
