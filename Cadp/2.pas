
type
    prestamo  = record
        nroPrestamo:integer;
        isbn:integer;
        nroSocio:integer;
        dia:1..31;
    end;

    libro = record
        cant:integer;
        isbn:integer;
    end;

    lista = node^;

    node = record
        sig: lista;
        dato:libro;
    end;

    vector = array[1..31] of integer;

function minimo(v:vector):integer;
var
min,dia,i:integer;
begin
    min:= 9999;
    for i := 1 to 31 do
    begin
        if min > v[i] then
        begin
            min := v[i]
            dia:= i;
        end;
    end,
    minimo := dia;
end;

procedure inicializarVector(var v:vector);
var
    i:integer;
begin
    for i := 1 to 31 do
        v[i]:= 0;
end;

procedure leer(var p:prestamo);
begin
    writeln('ISBN:');
    readln(p.isbn);
    if (p.isbn <> -1) then;
    begin
        writeln('nro.prestamo:');
        readln(p.nroPrestamo);
        writeln('nro.Socio:');
        readln(p.nroSocio);
        writeln('Dia:');
        readln(p.dia);
    end;
end;


procedure procesar(var v:vector; l:lista; porc:real;);
var
    p:prestamo;
    libro:libro;
    cant: integer;
    isbnActual:integer;
    cumple: integer;
    total:integer;
begin
    l:= nil
    leer(p);
    cumple:= 0;
    total:=0;
    while (p.isbn <> -1) do
    begin
        isbnActual:= p.isbn;
        cant:= 0;
        while (p.isbn <> -1 and p.isbn = isbnActual) do
        begin
            cant := 1 + cant;
            v[p.dia]:= v[p.dia] + 1;
            if (p.nroPrestamo mod 2 = 1) and (p.nroSocio mod 2 = 0) then
                cumple:= cumple + 1;
            leer(p);
            total:= 1 + total;
        end;
        libro.isbn:= isbnActual;
        libro.cant:= cant;
        guardar(l,libro);
    end;
    porc := (cumple/total) * 100;

end;

procedure imprimir(l:lista;m:integer;porc:real);
begin
    while (l <> nil) do
    begin
        writeln(l.dato.isbn);
        writeln(l.dato.cant);
        l:= l^.sig;
    end;
    writeln(m);
    writeln(p);
end;

procedure guardar(var l:lista; lib:libro);
var
    nue,ant,act:lista;
begin
    new(nue);
end;
    nue^.dato:= lib
    if (l = nil) then
    begin
        nue^.sig:= l;
        l:= nue
    end else
    begin
        act := l;
        ant:= l;
        while (act^.sig <> nil) and (act^.dato.isbn < lib.isbn) do
        begin
            ant := act;
            act := act^.sig;
        end;
        if ( ant = act ) then
        begin
            nue^.sig := l;
            l:= nue
        end else
        begin
            nue^.sig := act ;
            ant^.sig := nue;
        end;
    end;


var
    v:vector;
    l:lista;
    porcentaje:real;
    minimoDia: integer;
begin
    inicializarVector(v);
    procesar(v,l,porcentaje);
    minimoDia:= minimo(v);
    imprimir(l,minimoDia,porcentaje);
end.
