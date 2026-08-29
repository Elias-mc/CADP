type 
     
    tranferencias = record 
        cuentaOrigen:integer;
        dniOrigen:integer;
        cuentaDestino:integer;
        dniDestino:integer;
        fecha:integer;
        hora:integer;
        monto:real;
        codigo:1..7;
    end;

    lista= ^nodo;

    nodo = record 
        dato: tranferencias;
        sig:lista;
    end;

    vector = array[1..7] of integer;

    procedure leer(params);
    begin
        
    end;

    procedure guardar(var l:lista; t:tranferencias);
    var
        nue,ant,act:lista;
    begin   
        new(nue);
        nue^.dato:= t;
        if (l = nil ) then 
        begin
            nue^.sig := l;
            l:= nue; 
        end else
        begin
            ant:= l;
            act :=l;
            while ((act^.sig <> nil) and (act^.dato.cuentaOrigen < t.cuentaOrigen ) ) do 
            begin
                ant:= act;
                act:= act^.sig;
            end;
            if( ant = act) then 
            begin
                nue^.sig := l;
                l:= nue; 
            end else
            begin
                if (act = nil) then 
                begin
                    nue^.sig := act;
                    ant^.sig := nue;
                end else
                begin
                    nue^.sig := act;
                    ant^.sig := nue;
                end;
            end;
        end ;
    end;

    procedure procesar(l:lista; var nueL:lista);
    begin
        while (l <> nil) do 
        begin
            if(l^.dato.dniOrigen <> l^.dato.dniDestino) then
                guardar(nueL,l^.dato);
            l:= l^.sig;
        end;
    end;

    procedure InicVector(var v:vector);
    var
        i: integer;
    begin
        for i:= 1 to 7 do 
            v[i] := 0;
    end;

    procedure LeerVector(var v:vector);
    var
        i: integer;
        max:integer;
    begin
        max:= -1;
        for i := 1 to 7 do 
            begin
                if (max < v[i]) then
                    max := v[i];
            end;
    end;
    

    procedure MontoTotal(cuenOrigen:integer;cuenDestino:integer;var montoT:integer);
        begin

        end;