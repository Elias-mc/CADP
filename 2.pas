const
    valor = 20.50;
type 
    codRango =  1..200;

    venta = record 
        codigo: integer;
        fecha:integer;
        online:boolean;
        DNI:integer;
        codViaje: codRango; 
        cant:integer; 
        montoTotal: real; 
    end;

    lista = ^nodo;

    nodo = record
        dato:venta;
        sig:lista;
    end;

    vector = array[codRango] of integer;

procedure leer(var v:venta);
begin
    writeln('Escribe tu DNI: '); 
    readln(v.DNI);
    if (v.DNI <> 0) then 
    begin
        writeln('Escribe el codigo de tu compra: ');
        readln(v.codigo);
        writeln('Escribe la fecha de su viaje: ');
        readln(v.fecha);
        writeln('Escribe True si es online o false si es bloeteria: ');
        readln(v.online);
        writeln('Escribe el codigo de tu viaje:');
        readln(v.codViaje);
        writeln('Escribe la Cantidad de pasajes: ');
        readln(v.cant);
        v.montoTotal := v.cant * valor;
        writeln('Su monto total sera de: ', v.montoTotal);
    end;
end;

procedure guardarLista(var l:lista; v:venta);
var
    nue: lista; 
begin
    new(nue);
    nue^.dato:= v;
    nue^.sig:= l;
    l:= nue;
end;

procedure procesar (var l:lista; var vec:vector);
var
    v:venta; 
    i: codRango;
begin

    l:= nil;
    leer(v);
    for i := 1 to 200 do 
        vec[i]:= 200; 
    while (v.DNI <> 0) do
    begin
        vec[v.codViaje] := vec[v.codViaje] - v.cant;
        guardarLista(l,v);
        leer(v);
    end;
end;

procedure recorerLibres (vec:vector);
var
    i:codRango;
begin
    for i := 1 to 200 do
        writeln(vec[i],'De cada ',i);
end;

procedure Informar (l:lista);
begin
    while( l <> nil) do 
    begin
        if ( not l^.dato.online) then
            writeln(l^.dato.DNI,'ssssss',l^.dato.cant);
        l:= l^.sig;
    end;

end;

var
    l:lista;
    vec: vector;
begin
    procesar(l,vec);
    recorerLibres(vec);
    Informar(l);
end.