type 
    anoRango= 1980..2024;
    anoARango = 2010..2020;

    compra = record 
        codigo:integer;
        ano:anoRango;
        monto:real;
        DNI:integer;
    end;

    compraA = record
        ano:anoARango;
        codigo:integer;
        monto:real;
        DNI:integer;
    end;

    lista = ^node;
    node = record
        dato: compraA;
        sig:lista;
    end;

    vector = array[anoARango] of integer

procedure leer(var c:compra); 
begin
    writeln('Codigo:');
    readln(c.codigo);
    writeln('Año');
    readln(c.ano);
    writeln('Dni');
    readln(c.DNI);
end;
procedure guardar(l,cA);
var 
    nue,act,ant:lista;
begin
    new(nue);
    nue^.dato:=cA;
    nue^.sig:= l;
    if (l = nil ) then 
    begin
        nue^.sig := l;
        l:= nue;
    end else 
    begin
        act:= l;
        ant:= l;
        while((act <> nil) and (act^.dato.DNI < c.DNI))do 
        begin   
            ant:= act
            act:= act^.sig;
        end;
        if(ant = act) then 
        begin
            nue^.sig:= l;
            l:= nue;

        end else
        begin
            if (act = nil) then
            begin
                nue^.sig:= act;
                ant^.sig:= nue;
            end else 
            begin
                nue^.sig:= act;
                ant^.sig:= nue;
            end;
        end;
    end;
   
    

    


end;

procedure procesar(var l:lista);
var
    c:compra;
    cA:compraA;
    anoAR:anoARango;
begin
    l:= nil
    repeat
    leer(c);
    if (anoAR in c.ano) then
        begin
            cA.ano:= c.ano;
            cA.codigo:= c.codigo;
            cA.monto:= c.monto;
            cA.DNI := c.DNI;
            guardar(l,cA);
        end;
    until();
end;
