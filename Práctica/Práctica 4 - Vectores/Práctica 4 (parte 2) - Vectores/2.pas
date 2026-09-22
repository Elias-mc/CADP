// 2.   Realice un programa que resuelva los siguientes incisos:

//      a. Lea nombres de alumnos y los almacene en un vector de a lo sumo 500 elementos. La lectura finaliza
//      cuando se lee el nombre ‘ZZZ’, que no debe procesarse.

//      b. Lea un nombre y elimine la primera ocurrencia de dicho nombre en el vector.
//      c. Lea un nombre y lo inserte en la posición 4 del vector.
//      d. Lea un nombre y lo agregue al vector.
// Nota: Realizar todas las validaciones necesarias.

program untitled;
const
  MAX = 500;
  posInsertar = 4;
type
  vectorAlumnos = array[1..MAX] of string;

procedure GuardarAlumnos(var v:vectorAlumnos; var dimL:integer);
var
  nombre:string;
begin
  write('Escribe el nombre del alumno ',dimL + 1,' :');
  readln(nombre);
  while ((nombre <> 'ZZZ') and (dimL < MAX) ) do
  begin
    dimL:= dimL + 1 ;
    v[diml]:= nombre;
    write('Escribe el nombre del alumno ',dimL + 1,' :');
    readln(nombre);
  end;
end;

// Lea un nombre y elimine la primera ocurrencia de dicho nombre en el vector.
procedure EliminarOcurrencia(var v:vectorAlumnos; var diml:integer);
var
  i:integer;
  nombre:string;
  posicion:integer;
begin
  writeln('Escriba un nombre que quiera Eliminar: ');
  readln(nombre);

  posicion := 0; //Inicia la posicion
  i:= 1;
  while (i <= diml) and (posicion = 0) do
  begin
    if v[i] = nombre then
      posicion := i;
    i := i + 1;
  end;
  i:= 0;
  if (posicion <> 0) then
  begin
    for i := posicion to (diml - 1) do  //Resta una posicion a la dimencion logica digamos posicion es 5 diml es 10 comienza en 5 y termina en 9
      v[i] := v[i + 1 ]; // le suma una posicion al vector para guardar entonces estarias quitando la posicion 5 y estarias guardando lo que estaba en la posicion 6
    diml := diml - 1;
    writeln('Se a eliminado correctamente el nombre: ', nombre )
  end
  else
    writeln('No se encontro ese nombre: ');
end;

// Lea un nombre y lo inserte en la posición 4 del vector.
procedure IncertarElemento(var v:vectorAlumnos;dimL:integer);
var
nombre: string;
i:integer;
begin
  if dimL < MAX then
  begin
    writeln('Escriba un nombre a guardar: ');
    readln(nombre);
    if dimL >= posInsertar - 1 then
    begin
      for i:= dimL downto  posInsertar  do
        v[i + 1 ] := v[i];
      v[posInsertar] := nombre;
      dimL := diml + 1;
    end
    else
      writeln('No se pudo ingresar el nombre la dimencion logica es muy pequeña.');
  end
  else
    writeln('Ya no se puede agremar mas maximo de elementos.');
end;

// Lea un nombre y lo agregue al vector.
procedure AgregarFinal(var v:vectorAlumnos;dimL:integer);
var
  nombre:string;
begin
  if (dimL < MAX) then
  begin
    writeln('Escribe un nombre de alumnos: ');
    readln(nombre);
    dimL := dimL + 1;
    v[dimL] := nombre;
    writeln('Nombre agregado correctamente.');
  end
  else
    writeln('Ya no se puede agremar mas maximo de elementos.');

end;

var
  v:vectorAlumnos;
  dimL:integer;
begin
  dimL:= 0;
  GuardarAlumnos(v,dimL);
  EliminarOcurrencia(v,dimL);
  IncertarElemento(v,dimL);
  AgregarFinal(v,dimL);
end.
