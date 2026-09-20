// Actividad 2: procesamiento de las autoevaluaciones de CADP

// La cátedra de CADP está analizando los resultados de las autoevaluaciones que realizaron los
// alumnos durante el cuatrimestre. Realizar un programa que lea, para cada alumno, su legajo, su
// condición (I para INGRESANTE, R para RECURSANTE), y la nota obtenida en cada una de las 5
// autoevaluaciones. Si un alumno no realizó alguna autoevaluación en tiempo y forma, se le cargará la
// nota -1. La lectura finaliza al ingresar el legajo -1. Por ejemplo, si la materia tuviera dos alumnos, un
// ingresante y un recursante, la lectura podría ser así:

// Legajo: 19003
// Condición: R
// Notas: 8 10 6 -1 8

// Legajo 21020
// Condición: I
// Notas: 4 0 6 10 -1

// Legajo -1
// (Fin de la lectura)

// Una vez ingresados todos los datos, el programa debe informar:
// - Cantidad de alumnos INGRESANTES en condiciones de rendir el parcial y porcentaje sobre el
// total de alumnos INGRESANTES.
// - Cantidad de alumnos RECURSANTES en condiciones de rendir el parcial y porcentaje sobre el
// total de alumnos RECURSANTES.
// - Cantidad de alumnos que aprobaron todas las autoevaluaciones
// - Cantidad de alumnos cuya nota promedio fue mayor a 6.5 puntos
// - Cantidad de alumnos que obtuvieron cero puntos en al menos una autoevaluación.
// - Código de los dos alumnos con mayor cantidad de autoevaluaciones con nota 10 (diez)
// - Código de los dos alumnos con mayor cantidad de autoevaluaciones con nota 0 (cero)

// Nota: recuerde que, para poder rendir el EXAMEN PARCIAL, el alumno deberá obtener “Presente” en al menos
// el 75% del total de las autoevaluaciones propuestas. Se considera “Presente” la autoevaluación que se entrega
// en tiempo y forma y con al menos el 40% de respuestas correctas.


program untitled;

var
    legajo, i, presentes, IngresanteEnCondicion, recursanteEnCondicion,
    recursanteCantidad, IngresanteCantidad, cantidadAlumnos6: integer;

    cantidadAprobaronTodo, cantZero, cant10, max10, max10_2,
    codmax1, codmax2, cant0, max0_1, max0_2, cod0_1, cod0_2: integer;

    condicion: string;
    nota, notaTotal: real;
    sacocero: boolean;

begin
    recursanteCantidad := 0;
    recursanteEnCondicion := 0;
    IngresanteCantidad := 0;
    IngresanteEnCondicion := 0;
    cantidadAprobaronTodo := 0;
    cantidadAlumnos6 := 0;
    cantZero := 0;

    max10 := -1;
    max10_2 := -1;
    max0_1 := -1;
    max0_2 := -1;

    write('Escribe el legajo: ');
    readln(legajo);

    while (legajo <> -1) do
    begin
        sacocero := false;
        presentes := 0;
        notaTotal := 0;
        cant10 := 0;
        cant0 := 0;

        write('Escribe tu condicion: ');
        readln(condicion);

        if (condicion = 'I') then
            IngresanteCantidad := IngresanteCantidad + 1
        else
            recursanteCantidad := recursanteCantidad + 1;

        for i := 1 to 5 do
        begin
            write('Escribe la nota: ');
            readln(nota);

            { Una nota >= 4 significa Presente }
            if (nota >= 4) then
                presentes := presentes + 1;

            notaTotal := notaTotal + nota;

            if (nota = 0) then
                sacocero := true;

            if (nota = 10) then
                cant10 := cant10 + 1;

            if (nota = 0) then
                cant0 := cant0 + 1;
        end;

        { Busca los dos alumnos con mayor cantidad de 10 }
        if cant10 > max10 then
        begin
            max10_2 := max10;
            codmax2 := codmax1;

            max10 := cant10;
            codmax1 := legajo;
        end
        else if cant10 > max10_2 then
        begin
            max10_2 := cant10;
            codmax2 := legajo;
        end;

        { Busca los dos alumnos con mayor cantidad de 0 }
        if cant0 > max0_1 then
        begin
            max0_2 := max0_1;
            cod0_2 := cod0_1;

            max0_1 := cant0;
            cod0_1 := legajo;
        end
        else if cant0 > max0_2 then
        begin
            max0_2 := cant0;
            cod0_2 := legajo;
        end;

        //  Cantidad de alumnos con al menos un cero
        if sacocero then
            cantZero := cantZero + 1;

        //  Cantidad de alumnos con promedio mayor a 6.5
        if (notaTotal / 5 > 6.5) then
            cantidadAlumnos6 := cantidadAlumnos6 + 1;

        { Cantidad de alumnos que aprobaron todas las autoevaluaciones }
        if presentes = 5 then
            cantidadAprobaronTodo := cantidadAprobaronTodo + 1;

        { Para rendir necesita al menos 4 presentes de 5 (75%) }
        if presentes >= 4 then
        begin
            if condicion = 'I' then
                IngresanteEnCondicion := IngresanteEnCondicion + 1
            else
                recursanteEnCondicion := recursanteEnCondicion + 1;
        end;

        write('Escribe el legajo: ');
        readln(legajo);
    end;


    writeln('Cantidad de alumnos INGRESANTES en condiciones: ',
            IngresanteEnCondicion);

    if IngresanteCantidad > 0 then
        writeln('Porcentaje sobre el total de INGRESANTES: ',
                (IngresanteEnCondicion / IngresanteCantidad) * 100:0:2, '%')
    else
        writeln('Porcentaje sobre el total de INGRESANTES: 0%');


    writeln('Cantidad de alumnos RECURSANTES en condiciones: ',
            recursanteEnCondicion);

    if recursanteCantidad > 0 then
        writeln('Porcentaje sobre el total de RECURSANTES: ',
                (recursanteEnCondicion / recursanteCantidad) * 100:0:2, '%')
    else
        writeln('Porcentaje sobre el total de RECURSANTES: 0%');

    writeln;

    writeln('Cantidad de alumnos que aprobaron todas las autoevaluaciones: ',cantidadAprobaronTodo);

    writeln('Cantidad de alumnos cuya nota promedio fue mayor a 6.5 puntos: ',cantidadAlumnos6);

    writeln('Cantidad de alumnos que obtuvieron cero puntos en al menos una autoevaluacion: ',cantZero);

    writeln('Codigo de los dos alumnos con mayor cantidad de autoevaluaciones con nota 10: ',codmax1, ' y ', codmax2);

    writeln('Codigo de los dos alumnos con mayor cantidad de autoevaluaciones con nota 0: ',cod0_1, ' y ', cod0_2);

end.
