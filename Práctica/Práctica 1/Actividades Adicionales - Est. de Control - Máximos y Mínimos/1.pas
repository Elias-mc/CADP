// Actividad 1: Revisando Inversiones

// Realizar un programa que analice las inversiones de las empresas más grandes del país. Para cada
// empresa se lee su código (un número entero), la cantidad de inversiones que tiene, y el monto
// dedicado a cada una de las inversiones. La lectura finaliza al ingresar la empresa con código 100,
// que debe procesarse.

// El programa deberá informar:
// ●    Para cada empresa, el monto promedio de sus inversiones
// ●    Código de la empresa con mayor monto total invertido
// ●    Cantidad de empresas con inversiones de más de $50000

// Por ejemplo:
// Ingrese un código de empresa: 33
// Ingrese la cant. de inversiones: 4
// Ingrese el monto de cada inversión: 33200 56930 24500.85 10000
// Resultado del análisis: Empresa 33 Monto promedio 31157,71

// Ingrese un código de empresa: 41
// Ingrese la cant. de inversiones: 3
// Ingrese el monto de cada inversión: 102000.22 53000 12000
// Resultado del análisis: Empresa 41 Monto promedio 55666,74

// Ingrese un código de empresa: 100
// Ingrese la cant. de inversiones: 1
// Ingrese el monto de cada inversión: 84000.34
// Resultado del análisis: Empresa 100 Monto promedio 84000.34

// (Fin de la lectura)
// La empresa 41 es la que mayor dinero posee invertido ($167000.22).
// Hay 3 empresas con inversiones por más de $50000

        program untitled;
        var
            codigo,cantidadInversiones,i,codigoMaximo,cantidad50000: integer;
            monto,montoTotal,montoPromedio,MaxMontoTotal:real;
        begin
            cantidad50000 := 0;
            MaxMontoTotal:= -1;
            repeat
                write('Escribe el codigo: ');
                readln(codigo);
                write('Escribe la cantidad Invertida: ');
                readln(cantidadInversiones);
                montoTotal:= 0;
                for i := 1 to cantidadInversiones do
                    begin
                        write('Escribe el monto : ');
                        readln(monto);
                        montoTotal:= montoTotal + monto;
                    end;
                montoPromedio := montoTotal/cantidadInversiones;
                if MaxMontoTotal < montoTotal then
                    begin
                        MaxMontoTotal := montoTotal;
                        codigoMaximo := codigo;
                    end;
                if montoTotal > 50000 then
                    cantidad50000 := cantidad50000 + 1;
                write('Resultado del análisis: Empresa ',codigo, ' Monto promedio ',montoPromedio);
            until (codigo = 100);
            writeln('La empresa ',codigoMaximo,' es la que mayor dinero posee invertido (',MaxMontoTotal,').');
            writeln('Hay ',cantidad50000,' empresas con inversiones por más de $50000');
        end;
