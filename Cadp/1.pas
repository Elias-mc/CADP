type 
    anioRange = 2015..2025;
    egresado = record
        dni : integer; 
        facultad: string;
        anio : anioRange;
        promedio: real;
    end; 

    InfFacultad = record
        nombre: string;
        cantidad: integer; 
        DNIALTO: integer;
    end;

    vector = array[anioRange] of integer;

    lista = ^nodo;

    nodo = record 
        dato : InfFacultad;
        sig: lista;
    end; 

    procedure guardarLista(var l: lista; f: InfFacultad);
    var 
        nue: lista; 
    begin 
        new(nue);
        nue^.dato := f;
        nue^.sig := l;
        l := nue ;
    end;

    procedure leer (var e:egresado);
    begin
        writeln('Escribe el DNI: ');
        readln(e.dni);
        if (e.dni <> 0) then 
            begin
                writeln('Escribe el nombre de la facultad: ');
                readln(e.facultad);
                writeln('Escribe el año: ');
                readln(e.anio);
                writeln('Escribe el promedio del egresado: ');
                readln(e.promedio);
            end;
    end;

    procedure procesar (var l: lista; var DNIGeneralAlto:integer; var v:vector );
    var 
        e:egresado;
        fI:InfFacultad;
        FacultadActual:string;
        MaxDNI: integer;
        cant:integer;
        MaxPromedio:real;
        MaxPromedioGeneral:real;
        i: anioRange;
    begin
        l:= nil;
        DNIGeneralAlto:= 0;
        MaxPromedioGeneral:= -1;

        for i:= 2015 to 2025 do 
            v[i] := 0;

        leer(e);

        while(e.DNI <> 0) do
            begin
                MaxDNI := 0;
                MaxPromedio := -1 ; 
                FacultadActual := e.facultad;
                cant := 0;
                While ((e.DNI <> 0) and (FacultadActual = e.facultad)) do 
                begin
                    if (e.promedio > MaxPromedio ) then 
                    begin
                        MaxPromedio := e.promedio;
                        MaxDNI := e.dni;
                    end;
                    if (e.promedio > MaxPromedioGeneral) then
                    begin
                        MaxPromedioGeneral := e.promedio;
                        DNIGeneralAlto := e.dni; 
                    end;
                    cant := cant + 1;
                    v[e.anio] := v[e.anio] + 1;
                     leer(e);
                end;

                fI.nombre:= FacultadActual;
                fI.cantidad:= cant;
                fI.DNIALTO:= MaxDNI;
                guardarLista(l,fi);
            end;
    end;
    procedure leercantidad(v: vector);
    var 
        i:anioRange;
    begin
            for i := 2015 to 2025 do 
                writeln('Este año',i,v[i]);
    end;

var
    lis: lista;
    v: vector;
    DNIALTO: integer;

begin
    procesar(lis,DNIALTO,v);
    leercantidad(v);
    writeln(DNIALTO);

    
end.

