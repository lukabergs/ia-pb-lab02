with Ada.Numerics; use Ada.Numerics;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;
with Ada.Calendar; use Ada.Calendar;

package body Laboratorio02 is
   --- AUTHOR: BERGARETXE LOPEZ, LUKA


   ----------
   -- hora --
   ----------

   procedure hora (segundos: in Natural; hh,mm,ss: out Natural) is
   begin
      hh := segundos / 3600;
      mm := (segundos - 3600 * hh) / 60;
      ss := segundos - 3600 * hh - 60 * mm;
   end hora;

   --------------
   -- segundos ---- Se pueden crear m�s variables de las que se nos dan?
   --------------

   function segundos (hh,mm,ss: in natural) return Natural is
   begin
      return 3600 * hh + 60 * mm + ss;
   end segundos;

   -----------
   -- sumar ---- Se pueden crear m�s variables de las que se nos dan?
   -----------

   procedure sumar
     (hh1,mm1,ss1,hh2,mm2,ss2: in Natural;
      hh,mm,ss: out Natural)
   is
   begin
      hh := (3600 * (hh1 + hh2) + 60 * (mm1 + mm2) + (ss1 + ss2)) / 3600;
      mm := ((3600 * (hh1 + hh2) + 60 * (mm1 + mm2) + (ss1 + ss2)) - 3600 * hh) / 60;
      ss := (3600 * (hh1 + hh2) + 60 * (mm1 + mm2) + (ss1 + ss2)) - 3600 * hh - 60 * mm;
   end sumar;

   ----------------------
   -- entero_a_digitos --
   ----------------------

   procedure entero_a_digitos
     (num: in Natural;
      unidades, decenas, centenas, u_millar: out Natural)
   is
   begin
      u_millar := num / 1000;
      centenas := (num - 1000 * u_millar) / 100;
      decenas  := (num - 1000 * u_millar - 100 * centenas) / 10;
      unidades := num - 1000 * u_millar - 100 * centenas - 10 * decenas;
   end entero_a_digitos;

   ----------
   -- swap --
   ----------

   procedure swap (c1, c2: in out Character) is
      aux : Character;
   begin
      aux := c1;
      c1 := c2;
      c2 := aux;
   end swap;

   -----------
   -- valor --
   -----------

   function valor
     (unidades, decenas, centenas, u_millar: in Natural)
      return Integer
   is
   begin
      return 1000 * u_millar + 100 * centenas + 10 * decenas + unidades;
   end valor;

   ----------------
   -- Shaw_Basho --
   ----------------

   function Shaw_Basho (x: in Natural) return Integer is
   begin
      return (42 * (x ** 5) - 305 * (x ** 4) + 1100 * (x ** 3) - 895 * (x ** 2) + 1018 * x + 480) / 120;
   end Shaw_Basho;

   --------------------
   -- multiplo_de_10 --
   --------------------

   function multiplo_de_10 (x: in positive) return Boolean is
   begin
      return 0 = x rem 10;
   end multiplo_de_10;

   ------------------
   -- area_circulo --
   ------------------

   procedure area_circulo (r: in Float; area: out Float) is
   begin
      area := Pi * (r ** 2);
   end area_circulo;

   ----------------------
   -- volumen_cilindro --
   ----------------------

   function volumen_cilindro (r: in Float; h: in Float) return Float is
   begin
      return Pi * (r ** 2) * h;
   end volumen_cilindro;

   --------------------
   -- volumen_esfera --
   --------------------

   function volumen_esfera (r: in Float) return Float is
   begin
      return (4.0 / 3.0) * (Pi * (r ** 3));
   end volumen_esfera;

   ---------------------------------
   -- volumen_cilindro_semiesfera --
   ---------------------------------

   procedure volumen_cilindro_semiesfera
     (r, h: in Float;
      volumen: out Float)
   is
   begin
      volumen := (Pi * (r ** 2) * h) + (2.0 / 3.0) * (Pi * (r ** 3));
   end volumen_cilindro_semiesfera;

   -----------------
   -- multiplo_de --
   -----------------

   function multiplo_de (x,n: in Integer) return Boolean is
   begin
      return 0 = x rem n;
   end multiplo_de;

   ----------------------
   -- a_trigonometrica --
   ----------------------

   procedure a_trigonometrica
     (modulo_polar, argumento_polar: in Float;
      a,b: out Float)
   is
   begin
      a := modulo_polar * Cos(argumento_polar);
      b := modulo_polar * Sin(argumento_polar);
   end a_trigonometrica;

   ---------
   -- "+" --
   ---------

   function "+" (C: in Character; N: in Integer) return Character is
   begin
      return Character'Val(((Character'Pos(C) + N) mod 256));
   end "+";

   -----------------
   -- es_bisiesto --
   -----------------

   function es_bisiesto (anno: in Positive) return Boolean is
   begin
      return ((0 = anno rem 4) not in (0 = anno rem 100)) or (0 = anno rem 400);
   end es_bisiesto;

   ---------
   -- hoy --
   ---------

   procedure hoy (dd,mm,aa: out Positive) is
      ahora : Ada.Calendar.Time := Ada.Calendar.Clock;
   begin
      dd    := Ada.Calendar.Day   (Date => ahora);
      mm    := Ada.Calendar.Month (Date => ahora);
      aa    := Ada.Calendar.Year  (Date => ahora);
   end hoy;

   ----------------------
   -- cuantos_dias --
   ----------------------

   function cuantos_dias
     (d1,m1,a1: in Positive;
      d2,m2,a2: in Positive)
      return Natural
   is
      t1, t2: Positive; -- Total d�as normales
      n1, n2: Natural;  -- Total d�as bisiestos
   begin
      t1 :=   365 * a1
            + 31 * Boolean'Pos(m1 > 1)
            + 28 * Boolean'Pos(m1 > 2)
            + Boolean'Pos((m1 > 3) and (m1 < 9)) *
               ((((m1 - 2) / 2) * 31) + (((m1 - 3) / 2) * 30))
            + Boolean'Pos(m1 > 8) *
               ((((m1 - 7) / 2) * 31) + (((m1 - 8) / 2) * 30) + 153)
            + d1;
      n1 :=   ((a1 - 1) / 4)
            - ((a1 - 1) / 100)
            + ((a1 - 1) / 400)
            + Boolean'Pos(((((a1 rem 4 = 0) not in (a1 rem 100 = 0)) or (a1 rem 400 = 0)) and (m1 >= 3)));
      t2 :=   365 * a2
            + 31 * Boolean'Pos(m2 > 1)
            + 28 * Boolean'Pos(m2 > 2)
            + Boolean'Pos((m2 > 3) and (m2 < 9)) *
               ((((m2 - 2) / 2) * 31) + (((m2 - 3) / 2) * 30))
            + Boolean'Pos(m2 > 8) *
               ((((m2 - 7) / 2) * 31) + (((m2 - 8) / 2) * 30) + 153)
            + d2;
      n2 :=   ((a2 - 1) / 4)
            - ((a2 - 1) / 100)
            + ((a2 - 1) / 400)
            + Boolean'Pos(((((a2 rem 4 = 0) not in (a2 rem 100 = 0)) or (a2 rem 400 = 0)) and (m2 >= 3)));
      return ((t2 + n2) - (t1 + n1));
   end cuantos_dias;

end Laboratorio02;
