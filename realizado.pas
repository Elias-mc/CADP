type
    persona = record 
        dni: integer;
        apellido:string;
        nombre:string;
        edad:integer;
        codActuacion:1..5;
    end;    

    listas =  ^node;

    node = record
        dato: persona;
        sig:listas;
    end;

    vector = array[1..5] of integer;

procedure ParesEInpares(var total:integer; dni:integer);
var
    par,impar,divs,mods:integer;
begin
    divs:= dni;
    mods := 0;
    par := 0; 
    impar := 0;

    while (divs <> 0) do 
    begin
        mods:= divs mod 10;
        if (mods mod 2 = 0) then
            par := par + 1
        else 
            impar := impar +  1; 
        divs := divs div 10;
    end;
    if (par > impar) then 
        total := total + 1 ; 
end;

procedure InicializarVector(var v:vector);
var
    i: integer;
begin
    for i := 1 to 5 do 
        v[i] := 0 ;
end;

function genero(i: integer):string;

begin
    if ( i = 1 ) then
        genero := 'drama'
    else if ( i = 2) then
        genero := 'romantico'
    else if ( i = 3 ) then
        genero := 'accion'
    else if ( i = 4 )then
        genero := 'suspenso'
    else 
        genero := 'terro';
end;

procedure MasElegidos(v:vector);
var 
 i,max,max2,genMax,genMax2: integer;
begin
    max:= -1;
    max2:= -2;
    genMax:= 0;
    for i := 1 to 5 do 
    begin
        if (max < v[i]) then 
        begin
            max2 := max;
            genMax2 := genMax;
            max := v[i];
            genMax:= i;
            
        end;
        if (max2 < max) and (max > v[i]) and (max2 < v[i])then
        begin
                max2 := v[i];
                genMax2 := i;
        end;
    end;
    writeln('Los codigos mas elegidos son:', genero(genMax),' con ',max,' y ', genero(genMax2),' con ', max2 );
 end;

procedure leer(var p:persona);
begin
    writeln('Escriba su dni');
    readln(p.dni);
    if ( p.dni <> 335) then
    begin
        writeln('Escriba su apellido'); 
        readln(p.apellido);
        writeln('Escriba su nombre');
        readln(p.nombre);
        writeln('esciba su edad');
        readln(p.edad);
        writeln('Escriba su codigo de genero');
        readln(p.codActuacion);
    end;
end;

procedure guardar(var l:listas; p:persona);
var 
    nue:listas;
begin
    new(nue);
    nue^.dato:= p;
    nue^.sig:= l;
    l:= nue;
end;

procedure prosesar(var l:listas);
var
    p:persona;

begin
    l:= nil;
    leer(p);
    while (p.dni <> 335) do 
    begin
        guardar(l,p);
        leer(p);
    end;
end;

procedure realizar(l:listas; var v: vector);
var
    total: integer;
begin
    total:= 0;
    InicializarVector(v);
    while(l <> nil) do 
    begin
        ParesEInpares(total,l^.dato.dni);
        v[l^.dato.codActuacion] := v[l^.dato.codActuacion] + 1;
        l:= l^.sig;
    end;
    MasElegidos(v);
    writeln('Esta es la cantidad de personas cuyo DNI contiene más dígitos pares que impares', total);
end;

var 
    l: listas;
    v: vector;
begin
    prosesar(l);
    realizar(l,v);
end.

