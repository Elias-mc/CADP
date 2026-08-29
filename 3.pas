type 
    codigoRango= 1..5;
    participantes = record
        DNI : integer;
        apellido: string;
        nombre:string;
        edad:integer;
        codigo:codigoRango;
    end;

    lista = ^nodo;

    nodo = record 
        dato: participantes; 
        sig: lista;
    end;

    vector = array[codigoRango] of integer;
procedure leer(var p:participantes);
begin
    writeln('Escribe tu dni: ');
    readln(p.DNI);
    writeln('Escribe tu apellido: ');
    readln(p.apellido);
    writeln('Escribe tu nombre: '); 
    readln(p.nombre);
    writeln('Escribe tu edad: '); 
    readln(p.edad);
    writeln('Escribe tu codigo: ');
    readln(p.codigo);
end;

procedure guardar(var l:lista; p: participantes);
var 
    nue:lista;
begin
    new(nue);
    nue^.dato:= p;
    nue^.sig:= l;
    l:= nue;
end;

function parMayor(p:integer):boolean;
var
    par,impar:integer;
    Pmod,Pdiv:integer;

begin
    par:=0;
    impar:=0;
    Pdiv:= p;
    while(Pdiv <> 0) do 
    begin
        Pmod:= Pdiv mod 10;
        if (Pmod mod 2 = 0) then
            par:= par + 1
        else
            impar:= impar + 1; 
        Pdiv := Pdiv div 10;
    end;
    if (par > impar) then
        parMayor:= True
    else
        parMayor:= false
end; 

procedure procesar(var l:lista);
var 
    p:participantes;
    cantPersonas:integer;
    pCodigo,maxCodigo:integer;
    v:vector;
    i:integer;

begin
    l:= nil;
    cantPersonas:= 0; 
    for i := 1 to 5 do 
        v[i] := 0;
    repeat
        begin
        leer(p);
        writeln(p.DNI);
        if (parMayor(p.DNI)) then
            cantPersonas:= cantPersonas + 1 ;
        v[p.codigo]:= v[p.codigo] + 1 ;
        guardar(l,p);
        writeln(p.DNI);
        end;
    until (335 = p.DNI);
    writeln('Esta es la cantida de persona cuyo dni son digitos pares que impares: ',cantPersonas);
    maxCodigo:= -1;
    for i := 1 to 5 do 
    begin   
        if (maxCodigo < v[i]) then
        begin
            pCodigo := maxCodigo;
            maxCodigo := v[i];
        end;
    end;
    writeln('Esto son los dos codigos mas elegidos: ',maxCodigo,' y ',pCodigo);
end;
procedure eliminar(var l:lista;buscamosDNI:integer);
var
    act,ant:lista;
begin
    
    act:= l;
    ant:= nil;
    while ((act <> nil)and (act^.dato.DNI <> buscamosDNI)) do 
    begin
        ant:= act;
        act:= act^.sig;
    end; 

    if (act <> nil) then
    begin
        if (act = nil) then
            l:= act^.sig
        else
            ant^.sig:= act^.sig;
        dispose(act);
    end;
end;
    

    

var
    l:lista;
    buscamosDNI:integer;
begin
    procesar(l);
    writeln('Escribe el dni que buscas: ');
    readln(buscamosDNI);
    eliminar(l,buscamosDNI);
end.