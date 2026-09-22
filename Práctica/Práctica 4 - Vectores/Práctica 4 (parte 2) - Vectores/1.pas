// 1.   a. Dado un vector de enteros de a lo sumo 500 valores, realice un módulo que reciba dicho vector y un valor n y retorne si
//      n se encuentra en el vector o no.
//

program untitled;
const
  MAX = 500;
type

  vectorEnteros = array[1..MAX] of integer;

function moduloBuscar(v:vectorEnteros;dimL:integer;n:integer):boolean;
var
  i:integer;
  encontrado:boolean;
begin
  i:= 1;
  encontrado:=false;
  while((i <= dimL) and (not encontrado)) do
  begin
    if (v[i] = n) then
      encontrado := true
    else
      i:= i + 1 ;
  end;
  moduloBuscar := encontrado;
end;

var
  v:vectorEnteros;
  diml,i,n:integer;

begin
  write('Escriba la cantidad de elementos del vector: ');
  readln(diml);

  for i:= 1 to diml do
  begin
    write('Esctibe un numero: ');
    readln(v[i]);
  end;

  write('Escribe un numero para buscar: ');
  readln(n);

  if moduloBuscar(v,diml,n) then
    write('Se encontro el numero en el vector')
  else
    write('No se encontro el numero en el vector');
end.

//    b. Modifique el módulo del inciso a. considerando ahora que el vector se encuentra ordenado de manera ascendente.

program untitled;
const
  MAX = 500;
type

  vectorEnteros = array[1..MAX] of integer;

function moduloBuscar(v:vectorEnteros;dimL:integer;n:integer):boolean;
var
  i:integer;
  encontrado:boolean;
begin
  i:= 1;
  while((i <= dimL) and (n > v[i])) do
    i:= i + 1 ;
    moduloBuscar := (n = v[i]) and (i <= dimL );
end;

var
  v:vectorEnteros;
  diml,i,n:integer;

begin
  write('Escriba la cantidad de elementos del vector: ');
  readln(diml);

  for i:= 1 to diml do
  begin
    write('Esctibe un numero: ');
    readln(v[i]);
  end;

  write('Escribe un numero para buscar: ');
  readln(n);

  if moduloBuscar(v,diml,n) then
    write('Se encontro el numero en el vector')
  else
    write('No se encontro el numero en el vector');
end.
