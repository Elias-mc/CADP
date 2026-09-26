// 5.   Realizar un programa que lea y almacene la información de productos de un supermercado. De cada
//      producto se lee: código, descripción, stock actual, stock mínimo y precio. La lectura finaliza cuando se
//      ingresa el código -1, que no debe procesarse. Una vez leída y almacenada toda la información, calcular
//      e informar:

//      a. Porcentaje de productos con stock actual por debajo de su stock mínimo.
//      b. Descripción de aquellos productos con código compuesto por al menos tres dígitos pares.
//      c. Código de los dos productos más económicos.

program untitled;

type
  Producto  = record
    codigo:integer;
    descripcion:string;
    stockAct:integer;
    stockMini:integer;
    precio:real;
  end;

  lista = ^node;

  node  = record
    sig:lista;
    dato:Producto;
  end;

  //Lee los datos para pasarlos
procedure Leer(var p:Producto);
begin
  writeln('Escribe el codigo del producto: ');
  readln(p.codigo);
  if (p.codigo <> -1) then
  begin
    writeln('Escribe la descripcion del producto: ');
    readln(p.descripcion);
    writeln('Escrbe el stock actual: ');
    readln(p.stockAct);
    writeln('Escribe el stock minimo: ');
    readln(p.stockMini);
    writeln('Escribe el precio: ');
    readln(p.precio);
  end;
end;

//Creamos una nueva lista y la guardamos en la lista con el producto
procedure Guardar(var l:lista; p:Producto);
var
  nue:lista;
begin
  new(nue);
  nue^.dato:= p ;
  nue^.sig:= l;
  l := nue;
end;

//Llamamos al procedure leer y guardar para guardar los productos
procedure Procesar(var l:lista);
var
  p:Producto;
begin
  Leer(p);
  while (p.codigo <> -1) do
  begin
    Guardar(l,p);
    Leer(p);
  end;
end;

// Suma si el stock actual es menor que el stock minimo
function ContadorStockBajo(stockAct:integer;stockMini:integer):integer;
begin
  if (stockAct < stockMini) then
    ContadorStockBajo := 1
  else
    ContadorStockBajo := 0;
end;

// Calcular el porcentaje de cantidad stock por debajo y cantidad de productos
function Porcentaje(cont:integer;cantPro:integer):real;
begin
  Porcentaje := (cont/cantPro) * 100;
end;

// busca almenos 3 digitos pares y devuelve true si son mayor a 3
function DigitosPares(cod:integer):boolean;
var
  codigo,numero,cantidad:integer;
begin
  codigo := cod;
  cantidad := 0 ;
  while (codigo <> 0 ) do
  begin
    numero := codigo mod 10;
    if ((numero mod 2) = 0) then
      cantidad := cantidad + 1;
    codigo := codigo div 10 ;
  end;
  if (cantidad >= 3 ) then
    DigitosPares := true
  else
    DigitosPares := false;
end;

//buscamos los dos codigos precios minimos
procedure ProductosEconomicos(var max1Precio:real;var max2Precio:real; var max1Codigo:integer; var max2Codigo:integer; precio:real; codigo:integer);
begin
  if (max1Precio > precio) then
  begin
    max2Precio := max1Precio;
    max2Codigo := max1Codigo;
    max1Precio := precio;
    max1Codigo := codigo;
  end

  else if (max2Precio > precio) then
  begin
    max2Precio := precio ;
    max2Codigo := codigo;
  end;
end;

procedure Realizar(l:lista);
var
  cantidadProducto :integer;
  cantidadStockBajo :integer;
  max1Precio,max2Precio: real;
  max1Codigo,max2Codigo:integer;
begin
  cantidadProducto := 0;
  cantidadStockBajo := 0;
  max1Precio := 99999;
  max2Precio := 99999;
  max1Codigo := 0;
  max2Codigo := 0;

  while (l <> nil) do
  begin
    cantidadProducto := 1 + cantidadProducto;
    cantidadStockBajo := cantidadStockBajo + ContadorStockBajo(l^.dato.stockAct,l^.dato.stockMini);
    if (DigitosPares(l^.dato.codigo))then
      writeln('Este es la descricion :',l^.dato.descripcion,' del codigo : ',l^.dato.codigo);
    ProductosEconomicos (max1Precio,max2Precio,max1Codigo,max2Codigo,l^.dato.precio,l^.dato.codigo);
    l := l^.sig;
  end;
  writeln('Los codigos mmas economicos son ',max1Codigo,' , ',max2Codigo);
  writeln('Porcentajes de productos son : ', Porcentaje(cantidadStockBajo,cantidadProducto));
end;
var
  l:lista;

begin
  l := nil;
  Procesar(l);  //Lamamos a Procesar para generar la lista
  Realizar(l);
end.
