// 1.   Dado el siguiente programa, indicar qué imprime.

program alcance1;
var a,b: integer;

procedure uno;
    var b: integer;
    begin
        b := 3;
        writeln(b);
    end;

begin
    a:= 1;
    b:= 2;
    uno;
    writeln(b, a);
end.

// El programa imprime:
//     3
//     21
// Tenemos dos variables llamadas b:
// b global → pertenece al programa principal.
// b local → pertenece al procedimiento uno.
// Cuando se ejecuta:
//     a := 1;
//     b := 2;
//     uno;
// Dentro de uno:
//     b := 3;
//     writeln(b);
// Ese b es el local, por lo que imprime: 3
// Al terminar uno, la variable local desaparece y la b global sigue valiendo 2.
