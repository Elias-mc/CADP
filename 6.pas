type 
    egresado = record 
        dni:string;
        facultad:string;
        ani:integer;
        nota:real;
    end;
    vector  = array[2015..2005] of integer;
    lista: ^node;
    node = record
        dato: egresado;
        sig:lista;
    end;

    procedure leerPrimeraLista( var l:lista); // Se dispone
    
    procedure guardar(var l:lista; e:egresado);
    var 
        nue,act,ant:lista;
    begin
        new(nue);
        nue^.dato := e;
        if (l = nil) then
        begin
            nue^.sig:= l;
            l:= nue
        end else
        begin
            act := l;
            ant := l;
            while ((act^.sig <> nil) and (act^.dato.facultad < e.facultad)) do 
            begin
                ant := act
                act := act^.sig
            end;
            if (ant = act) then
            begin
                nue^.sig:= l;
                l:= nue;
            end else
            begin
                nue^.sig := act
                ant^.sig := nue
            end;
        end;
    end; 

    procedure procesarSegunda(pLista:lista; var sLista:lista;);
    var 
    begin
        while(l<> nil) do 
        begin
             
        end;
    end;

    var 
        PrimeraLista,SegundaLista:lista;
        v:vector;
    begin
        leerPrimeraLista(PrimeraLista);

    end;