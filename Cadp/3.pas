type
    vector = array[1..7] of integer;
    objetos = record
        codigo:integer;
        categoria:1..7;
        nombre:string;
        distancia:integer;
        nombreDescubridor:string;
        anioDescubrimiento:integer;
    end;
    lista = ^nodo;
    nodo = record
        dato:objetos;
        sig:lista;
    end;

procedure leer (var ob:objetos);
begin
    writeln('codigo');
    readln(ob.codigo);
    if (ob.codigo <> -1 ) then
    begin
        writeln('categoria');
        readln(ob.categoria);
        writeln('nombre');
        readln(ob.nombre);
        writeln('distancia');
        readln(ob.distancia);
        writeln('nombreDescubridor');
        readln(ob.nombreDescubridor);
        writeln('anioDescubrimiento');
        readln(ob.anioDescubrimiento);
    end;
end;

procedure guardar (var l:lista; ob: objetos);
var
    nue,act,ant:lista;

begin
    new(nue);
    nue^.dato := ob;
    if (l = nil) then
        nue^.sig := l;
        l:= nue;
    else
    begin
        act:= l;
        ant:= l;
        while(act <> nil) then
        begin
            ant := act
            act := act^.sig;
        end;
        if ant = act then
        begin
            nue^.sig := l;
            l:= nue
        end else
        begin
            nue^.sig := act;
            ant^.sig := nue;
        end;
    end;

end;

procedure procesar (var l:lista);
var
ob:objetos;
begin
    l:= nil;
    leer(ob);
    while (ob <> -1 ) do
    begin
        guardar(l,ob);
        leer(ob);
    end;
end;

procedure masLejos(var max1:integer; var max2:integer; var maxCode:integer; var maxCode2:integer; dis:integer;cod:integer);
begin
    if (max1 < dis ) then
    begin
        max2 := max1;
        maxCode2 := maxCode
        max1 := dis
        maxCode := cod
    end else if (max2 < dis) and (max2 < max1)then
    begin
        max2 := dis;
        maxCode2:= cod;
    end;
end;

procedure inicializarVector ( var v:vector);
var
    i:integer;
begin
    for i := 1 to 7 do
        v[i] := 0;
end;

procedure DescubirtosGalileo (var cant:integer;anio:integer;nombre:string;ob:integer);
begin
    if (anio < 1600) and (nombre = 'Galileo') and (ob = 2) then
        cant := cant + 1;
end;

function paresqueImpares(cod:integer):boolean;
var
    par,impar,mods,divs:integer;
begin
    divs:= cod;
    par:= 0;
    impar := 0 ;
    while (divs <> 0) do
    begin
        mods:= divs mod 10;
        if (mods mod 2 = 0 ) then
            par := par + 1
        else
            impar := impar + 1;
        divs := divs div 10;
    end;
    if (par > impar) then
        paresqueImpares := true
    else
        paresqueImpares := false;

end;

procedure Estrellas(l:lista);
begin
    while (l <> nil) do
    begin
        if (l^.dato.categoria = 1 ) and paresqueImpares(l^.dato.codigo) then
            writeln(l^.dato.nombre);
        l:= l^.sig;
    end;
end;
procedure imprimirVector(v:vector);
var
    i:integer;
begin
    for i := 1 to 7 do
    begin
        writeln('categoria ',i,' cantidad ', v[i])
    end;
end;
procedure reporte(l:lista; var v:vector);
var
    cantDescubieto:= integer;
    max1,max2,maxCode,maxCode2:integer;
begin
    max1:= -1;
    max2:= -1;
    maxCode:= 0;
    maxCode2:= 0;
    while (l <> nil) do
    begin
        DescubirtosGalileo(cantDescubieto,l^.dato.anioDescubrimiento,l^.dato.nombreDescubridor,l^.dato.categoria);
        v[l^.dato.categoria] := v[l^.dato.categoria] + 1 ;
        masLejos(max1,max2,maxCode,maxCode2,l^.dato.distancia,l^.dato.codigo);
        l:= l^.sig;
    end;

    imprimirVector(v);
    writeln(cantDescubieto,' Galileo ');
    writeln(max1,' codigo ', maxCode,' max2 ', max2 , ' codigo ', maxCode2);

end;
var
    l:lista;
    v:vector;
begin
    procesar(l);
    inicializarVector(v);
    reporte(l);
    Estrellas(l);
end;
