type
    prestamo = record
        codigo:integer;
        ISBN:integer;
        nroSocio:integer;
        diaPrestamo:1..31;
        cantDia:integer;
    end;

    lista = ^nodo;

    nodo = record
        sig:lista;
        dato:prestamo;
    end
    vector = array [1..31] of integer;

procedure guardar(var l:lista;p:prestamo);
var
    nue,act,ant:lista;
begin
    new(nue);
    nue^.dato:= p;
    if l = nil then
    begin
        nue^.sig:= l;
        l := nue
    end else
    begin
        act:= l ;
        ant:=l;
        while (act^.sig <> nil) do
        begin
            ant := act;
            act := act^.sig;
        end;
        if (act = ant) then
        begin
            nue^.sig:= l;
            l := nue
        end else
        begin
            nue^.sig:= act;
            act^.sig:=nue;
        end;
    end
end;

procedure leer ( var p:prestamo);
begin
    writeln('isbn');
    readln(p.ISBN);
    if (p.ISBN <> -1) then
    begin
        writeln('codigo');
        readln(p.codigo);
        writeln('Numero');
        readln(p.nroSocio);
        writeln('dia');
        readln(p.diaPrestamo);
        writeln('cantDia');
        readln(p.cantDia);
    end;
end;

procedure procesar (var l:lista);
var
    p:prestamo;
begin
    l:= nil;
    leer(p)
    while (p.ISBN <> -1 ) do
    begin
        guardar(l,p);
        leer(p);
    end;
end;


procedure inicializarVector (var v:vector);
var
    i:integer;
begin
    for i := 1 to 31 do
        v[i] := 0;
end;

procedure recorrer(l:lista);
    


var
    l:lista;
    v:vector;
begin
    procesar(l);
    inicializarVector(v);
end;
