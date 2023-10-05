package Laboratorio02 is
	procedure hora (segundos: in Natural; hh,mm,ss: out Natural);
	-- post: hh,mm,ss son las horas minutos y segundos (respectivamente) de segundos

	function segundos (hh,mm,ss: in natural) return Natural;
	--post: resultado es el número de segundos de hh, mm, y ss

	procedure sumar (hh1,mm1,ss1,hh2,mm2,ss2: in Natural; hh,mm,ss: out Natural);
	--post: hh,mm,ss es el resultado de sumar (hh1:mm1:ss1) con (hh2:mm2:ss2)

	procedure entero_a_digitos (num: in Natural; unidades, decenas, centenas, u_millar: out Natural);
	--post: unidades = unidades de num; decenas =  decenas de num; centenas = centenas de num; u_millar = unidades de millar de num

	procedure swap (c1, c2: in out Character);
	--post: c1 y c2 tienen los valores intercambiados

	function valor (unidades, decenas, centenas, u_millar: in Natural) return Integer;
	--post: resultado = el valor del entero con u_millar unidades de millar, centenas centenas, decenas decenas y unidades unidades

	function Shaw_Basho (x: in Natural) return Integer;
	--post: resultado devuelve f(x) siendo X el polinomio de Shaw_basho

	function multiplo_de_10 (x: in positive) return Boolean;
	--post: resultado = true si X es multiplo de 10

	procedure area_circulo (r: in Float; area: out Float);
	--post: resultado = area del circulo de radio r

	function volumen_cilindro (r: in Float; h: in Float) return Float;
	--Post: resultado = volumen del cilindro de radio r y altura h

	function volumen_esfera (r: in Float) return Float;
	--Post: resultado = volumen de la esfera de radio r

	procedure volumen_cilindro_semiesfera (r, h: in Float; volumen: out Float);
	--Pre: r,h>0
	--Post: Volumen de un cilindro de altura h y radio r coronado por una semiesfera de radio r

	function multiplo_de(x,n: in Integer) return Boolean;
	--post: True si y solo si X es multiplo de n

	procedure a_trigonometrica(modulo_polar, argumento_polar: in Float; a,b: out Float);
	--post: a es la primera coordenada del numero complejo; b es la segunda coordenada del numero complejo

	function "+" (C: in Character; N: in Integer) return Character;
	--pre: -256 < N < 256
	--post: resultado es el caracter que resulta de avanzar N posiciones adelante (si positivo) o atras (si negativo)  a C.
	--      Si nos salimos de la tabla, se recomienza por el principio (final, si es en inverso)

	function es_bisiesto (anno: in Positive) return Boolean;
	--post: resultado = true si y solo si anno es un anno bisiesto

      procedure hoy (dd,mm,aa: out Positive);
	--post: dd, mm aa son el día mes y año de hoy

	function cuantos_dias (d1,m1,a1: in Positive; d2,m2,a2: in Positive) return Natural;
	--pre: d1,d2 <=31; m1,m2 <=12; a1,a2<=2100; d1-m1-a1 <= d2-m2-a2 (la fecha con 1 es anterior o igual a la fecha con 2)
	--post: resultado = numero de di�as entre d1-m1-a1 y d2-m2-a2
end Laboratorio02;

