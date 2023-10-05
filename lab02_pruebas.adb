with laboratorio02; use laboratorio02;
with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Float_Text_IO;
procedure Lab02_Pruebas is
   H,M,S:Integer;
   Segs: Integer;
   U,D,C,Um: Integer;
   Letra1, Letra2: Character;
   Num: Integer;
   -- Extra:
   Es: Boolean;
   Area, Vol:Float;
   -- Para pensar
   X,Y: Float;
   Letra: Character;
   dd,mm,aa: Integer;
begin
   ----------
   -- Hora --
   ----------
   Hora(60, H,M,S);
   Put("60 segundos son: ");
   Put(H,0); Put(" horas ");
   Put(M,0); Put(" Minutos ");
   Put(S,0); Put(" segundos.");
   New_Line;
   --Poner m�s casos para probar Hora y asegurar que funciona: 86400,0,60,3600...
   Hora(86400, H,M,S);
   Put("86400 segundos son: ");
   Put(H,0); Put(" horas ");
   Put(M,0); Put(" Minutos ");
   Put(S,0); Put(" segundos.");
   New_Line;

   Hora(0, H,M,S);
   Put("0 segundos son: ");
   Put(H,0); Put(" horas ");
   Put(M,0); Put(" Minutos ");
   Put(S,0); Put(" segundos.");
   New_Line;

   Hora(600, H,M,S);
   Put("600 segundos son: ");
   Put(H,0); Put(" horas ");
   Put(M,0); Put(" Minutos ");
   Put(S,0); Put(" segundos.");
   New_Line;

   Hora(3600, H,M,S);
   Put("3600 segundos son: ");
   Put(H,0); Put(" horas ");
   Put(M,0); Put(" Minutos ");
   Put(S,0); Put(" segundos.");
   New_Line;

   Hora(465756, H,M,S);
   Put("465756 segundos son: ");
   Put(H,0); Put(" horas ");
   Put(M,0); Put(" Minutos ");
   Put(S,0); Put(" segundos.");
   New_Line;

   Hora(Integer'Last, H,M,S);
   Put(Integer'Image(Integer'Last) & " segundos son: ");
   Put(H,0); Put(" horas ");
   Put(M,0); Put(" Minutos ");
   Put(S,0); Put(" segundos.");
   New_Line;

   New_Line;
   New_Line;

   --------------
   -- Segundos --
   --------------
   Segs := Segundos(24,0,0);
   Put("24h 0m 0s son "); Put(Segs,0); Put(" segundos");
   New_Line;
   --Poner m�s casos para probar Segundos y asegurar que funciona: los mismos que antes valdr�a
   Segs := Segundos(17,40,57);
   Put("17h 40m 57s son "); Put(Segs,0); Put(" segundos");
   New_Line;

   Segs := Segundos(0,0,0);
   Put("0h 0m 0s son "); Put(Segs,0); Put(" segundos");
   New_Line;

   Segs := Segundos(4234,346,85);
   Put("4234h 346m 85s son "); Put(Segs,0); Put(" segundos");
   New_Line;

   Segs := Segundos(54754,3457345,345745);
   Put("54754h 3457345m 345745s son "); Put(Segs,0); Put(" segundos");
   New_Line;

   New_Line;
   New_Line;

   -----------
   -- Sumar --
   -----------
   Sumar(0,0,0,0,0,0,H,M,S);

   Put("0h 0m 0s + 0h 0m 0s = 0h 0m 0s y sale ");
   Put(H,2); Put("h ");
   Put(M,2); Put("m ");
   Put(s,2); Put("s.");New_Line;

   Sumar(12,6,45,12,59,45,H,M,S);

   Put("12h 6m 45s + 12h 59m 45s = 25h 6m 30s y sale ");
   Put(H,2); Put("h ");
   Put(M,2); Put("m ");
   Put(s,2); Put("s.");New_Line;
   --Poner m�s casos para probar Sumar
   Sumar(31,46,10,46,9,3,H,M,S);

   Put("31h 46m 10s + 46h 9m 3s = 77h 55m 13s y sale ");
   Put(H,2); Put("h ");
   Put(M,2); Put("m ");
   Put(s,2); Put("s.");New_Line;

   Sumar(4,6,7,2,5,0,H,M,S);

   Put("4h 6m 7s + 2h 5m 0s = 6h 11m 7s y sale ");
   Put(H,2); Put("h ");
   Put(M,2); Put("m ");
   Put(s,2); Put("s.");New_Line;

   Sumar(4346,5383,5247,9586,8257,2747,H,M,S);

   Put("4346h 5383m 5247s + 9586h 8257m 2747s = 25h 6m 30s y sale ");
   Put(H,2); Put("h ");
   Put(M,2); Put("m ");
   Put(s,2); Put("s.");New_Line;

   New_Line;
   New_Line;

   ----------------------
   -- Entero_a_digitos --
   ----------------------
   Entero_A_Digitos(1234,U,D,C,Um);

   Put("1234 son 4u 3d 2c y 1um, y sale ");
   Put(U,0); Put("u ");
   Put(D,0); Put("d ");
   Put(C,0); Put("c y ");
   Put(UM,0); Put("um.");New_Line;
   --Poner un caso m�s de prueba
   Entero_A_Digitos(8195,U,D,C,Um);
   Put("8195 son 5u 9d 1c y 8um, y sale ");
   Put(U,0); Put("u ");
   Put(D,0); Put("d ");
   Put(C,0); Put("c y ");
   Put(UM,0); Put("um.");New_Line;

   New_Line;
   New_Line;

   ----------
   -- Swap --
   ----------
   Letra1:='A';
   Letra2:='Z';
   Swap(Letra1,Letra2);

   Put_Line("Intercambiar dos variables con 'A' y 'Z' debe dejar 'Z' y 'A' ");
   Put("Intercambiar deja '");Put(Letra1);Put("' y '");Put(Letra2); Put("'.");
   New_Line;
   --Poner m�s casos de prueba

   -----------
   -- Valor --
   -----------

   Num := Valor (4,3,2,1);

   Put("4u 3d 2c y 1um es 1234, y sale ");
   Put(Num,0); Put(".");New_Line;
   --Poner algun caso m�s de prueba

   --A partir de aqu� las pruebas de los ejercicios no obligatorios.
   --Para quitar los comentarios seleccionar el texto y pulsa ALT+F7
   -- O selecciona el texto y pulsa Edit>UnComment

   ----------------------
   -- Extra Shaw_Basho --
   ----------------------
   Num := Shaw_Basho(7);

   Put("El polinomio de Shaw_Basho de 7 debe ser 2622 y sale ");
   Put(Num,0); Put(".");New_Line;
   --Poner algun caso m�s de prueba


   ----------------------------
   -- Extra Multiplo_de_diez --
   ----------------------------
   Es := Multiplo_De_10(120);

   Put("120 es multiplo de 10 (True) y sale ");
   Put(Es'img); Put(".");New_Line;
   --Poner algun caso m�s de prueba

   ------------------------
   -- Extra Area_Circulo --
   ------------------------
   Area_Circulo(1.0, Area);

   Put("El area de un circulo de radio 1.0 es 3.14 y sale ");
   Put(area,2,2,0); New_Line;
   --Poner algun caso m�s de prueba

   ----------------------------
   -- Extra Volumen_Cilindro --
   ----------------------------
   vol := Volumen_Cilindro(1.0, 1.0);

   Put("El volumen de un cilindro de radio 1.0 y altura 1.0 es 3.14 y sale ");
   Put(vol,2,2,0); New_Line;
   --Poner algun caso m�s de prueba

   --------------------------
   -- Extra Volumen_esfera --
   --------------------------

   vol := Volumen_Esfera(1.0);

   Put("El area de una esfera de radio 1.0 es 4.19 y sale ");
   Put(vol,2,2,0); New_Line;
   --Poner algun caso m�s de prueba

   ---------------------------------------
   -- Extra Volumen_cilindro_semiesfera --
   ---------------------------------------
   Volumen_Cilindro_semiesfera(1.0, 1.0, vol);

   Put("El volumen de un cilindro de radio 1.0 y altura 1.0 ");
   Put("con una semiesfera encima de radio 1.0 es 5.24 y sale ");
   Put(vol,2,2,0); New_Line;
   --Poner algun caso m�s de prueba

   ------------------------
   -- Pensar Multiplo_de --
   ------------------------
   Es := Multiplo_De(120,10);

   Put("120 es multiplo de 10 (True) y sale ");
   Put(Es'img); Put(".");New_Line;
   --Poner algun caso m�s de prueba

   -----------------------------
   -- Pensar A_Trigonometrica --
   -----------------------------
   A_Trigonometrica(5.0,0.6435,x,y); --angulo en radianes, minimo 3 decimales

   Put("Z=(modulo 5.0, argumento 0.64) = (4.0,3.0) y sale ");
   Put('(');Put(x,0,2,0); Put(",");Put(y,0,2,0); Put(").");New_Line;
   --Poner algun caso m�s de prueba

   ----------------
   -- Pensar "+" --
   ----------------
   letra := 'A' + 1;

   Put("'A' + 1 debe devolver 'B' y sale ");
   Put("'");Put(letra);Put("'");New_Line;

   letra := 'Z' + 1;

   Put("'Z' + 1 debe devolver '[' y sale ");
   Put("'");Put(letra);Put("'");New_Line;

   letra := 'z' + 1;

   Put("'z' + 1 debe devolver '{' y sale ");
   Put("'");Put(letra);Put("'");New_Line;

   letra := '9' + 1;

   Put("'9' + 1 debe devolver ':' y sale ");
   Put("'");Put(letra);Put("'");New_Line;

   letra := '0' + (-1);

   Put("'0' - 1 debe devolver '/' y sale ");
   Put("'");Put(letra);Put("'");New_Line;

   letra := '@' + 1;

   Put("'@' + 1 debe devolver 'A' y sale ");
   Put("'");Put(letra);Put("'");New_Line;

   letra := 'A' + 255;

   Put("'A' + 255 debe devolver '@' y sale ");
   Put("'");Put(letra);Put("'");New_Line;


   ------------------------
   -- Pensar Es_Bisiesto --
   ------------------------
   Es := Es_Bisiesto(2021);

   Put("2021 no es bisiesto (False) y sale ");
   Put(Es'img); Put(".");New_Line;
   --Poner algun caso m�s de prueba
   Es := Es_Bisiesto(2024);

   Put("2024 es bisiesto (True) y sale ");
   Put(Es'img); Put(".");New_Line;

   Es := Es_Bisiesto(1900);

   Put("1900 no es bisiesto (False) y sale ");
   Put(Es'img); Put(".");New_Line;
   ----------------
   -- Pensar Hoy --
   ----------------
   Hoy(Dd,Mm,Aa);

   Put("Sabes que dia es hoy? Pues sale ");
   Put(dd,2);Put('-');Put(mm,2);Put('-');Put(aa,4);Put('.'); New_Line;

   -------------------------
   -- Pensar Cuantos_Dias --
   -------------------------

   Num := Cuantos_Dias(31,12,2020,31,1,2021);

   Put("Entre el 31-12-2020 y el 31-01-2021 hay 31 dias y sale ");
   Put(num,0); Put(" dias."); New_Line;
   --Poner algun caso m�s de prueba
end Lab02_Pruebas;

