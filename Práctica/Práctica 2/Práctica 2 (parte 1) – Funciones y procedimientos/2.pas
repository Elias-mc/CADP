// 2.   Dado el siguiente programa, indicar qué imprime.

program alcance2;
var a,b: integer;
procedure uno;
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

Este programa imprime:
    3
    31
Las variables a y b están declaradas globalmente, por lo que el procedimiento uno puede acceder a ellas.
Primero:
    a := 1;
    b := 2;
Luego se ejecuta:
    uno;
Dentro de uno:
    b := 3;
    writeln(b);
Imprime b seguido de a, sin espacio entre ellos:
    31
Resultado final
    3
    31
