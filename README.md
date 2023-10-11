# LABORATORIO 02
## Programas y subprogramas con instrucciones sencillas
### TAREA 1. Ejercicios obligatorios

1. **Hora.** Crea un procedimiento llamado **hora** que, dada una cantidad de segundos, devuelva el número de horas, minutos y segundos que representan esos segundos.

2. **Segundos.** Crea una función llamada **segundos** que, dada una hora del día definida en horas, minutos y segundos, nos devuelva cuántos segundos han transcurrido desde las 00:00 horas de ese día.

3. **Sumar.** Crea un _procedimiento_ que, dados dos lapsos de tiempo medidos en horas, minutos y segundos, los sume, y devuelva la cantidad de horas, minutos y segundos que representan en total. Para resolver el problema _**utiliza los programas de los dos apartados anteriores**_. Por ejemplo, dados 5h, 40m, 2s y 1h, 50m, 7s, el resultado esperado sería: 7h 30m 9s.

4. **Entero a Digitos.** Crea el _procedimiento_ **entero_a_digitos** que, dado un número entero positivo, desglosa su valor separándolo en unidades, decenas, centenas y unidades de millar.

5. **Intercambio.** Crea el _procedimiento_ **swap** que, dados dos valores de tipo carácter, intercambie sus valores. Es decir, que, si se le pasan los valores 'A' y 'Z', entonces debe devolver 'Z' y 'A'.

6. **Valor.** Crea la función **valor** que, dadas las unidades, decenas, centenas y unidades de millar, devuelve el valor del entero correspondiente.

### TAREA 2. Ejercicios Extra

7. **Shaw-Basho.** Crea una función llamada `Shaw_Basho` que, dado un valor de un entero positivo X, devuelva el valor asociado a ese polinomio para esa X. Los valores de este polinomio se han hecho famosos por la serie Lost. Los sucesivos valores para X=0 en adelante son 4, 12, 35, 89, 213, 511, 1194, 2622, 5346, 10150, 18093... El polinomio tiene la siguiente expresión:

  ```math
    𝑓(𝑥) = \frac{1}{120} (42𝑥⁵ - 305𝑥⁴ + 1100𝑥³ - 895𝑥² + 1018𝑥 + 480)
  ```

8. **Múltiplo de 10.** Crea una _función_ llamada **múltiplo_de_diez** que, dado un entero positivo X, devuelva true cuando ese entero sea múltiplo de 10 y false en caso contrario.

9. **Área de círculo.** Crea un _procedimiento_ llamado **area_circulo** que, dada la longitud del radio, calcule el área del círculo que define, según la fórmula siguiente: $𝐴(𝑐í𝑟𝑐𝑢𝑙𝑜) = 𝜋𝑟^2$. Utiliza el valor de $𝜋$ (Pi) que se define en la biblioteca de programas `Ada.Numerics`.

10. **Volumen de cilindro.** Crea la _función_ **volumen_cilindro** que, dada la longitud del radio de la base, r, y la altura, h, calcule el volumen del cilindro usando el programa area_circulo y sabiendo que el volumen del cilindro se calcula multiplicando el área de la base por la altura. O sea, se calcula usando la siguiente fórmula:
  ```math
    𝑉(𝑐𝑖𝑙𝑖𝑛𝑑𝑟𝑜) = 𝐴(𝑐𝑖𝑟𝑐𝑢𝑙𝑜) \cdot ℎ.
  ```
11. **Volumen de esfera.** Crea la _función_ **volumen_esfera** que, dada la longitud del radio, calcula el volumen de una esfera con dicho radio. El volumen se calcula usando la siguiente fórmula:
  ```math
    𝑉(𝑒𝑠𝑓𝑒𝑟𝑎) = \frac{4}{3} 𝜋𝑟^3$.
  ```
12. **Volumen de cilindro y semiesfera.** Crea el _procedimiento_ llamado **volumen_cilindro_semiesfera** que, dado un radio r y una altura h, calcula el volumen de un cilindro de radio r y altura h al que se le ha puesto encima media esfera de radio r. Utiliza para resolverlo las dos funciones anteriores.

### TAREA 3. Ejercicios para pensar
En estos ejercicios se deben resolver con las instrucciones que se han explicado hasta el momento en clase (asignación, instrucción nula, llamada a otros procedimientos o funciones).

13. **Múltiplo de N.** Crea una _función_ llamada **múltiplo_de**, que, dados dos enteros X y N, devuelva true si X es múltiplo de N y false en caso contrario.

14. **Polar a trigonométrica.** Crea el _procedimiento_ **a_trigonometrica**, que dado un número complejo en formato polar (son dos valores: módulo y argumento), nos devuelve el mismo número complejo representado en forma trigonométrica (son dos reales, a y b, que representan coordenadas en un plano) y que se calculan usando las fórmulas que aparecen más adelante. En Ada existe la biblioteca Ada.Numerics.Elementary_functions que incluye las funciones seno (sin) y coseno (cos).
```math
  𝑎 = 𝑚𝑜𝑑𝑢𝑙𝑜 \cdot \sin(𝑎𝑟𝑔𝑢𝑚𝑒𝑛𝑡𝑜) \qquad 𝑏 = 𝑚𝑜𝑑𝑢𝑙𝑜 \cdot \cos(𝑎𝑟𝑔𝑢𝑚𝑒𝑛𝑡𝑜)
```

15. **Suma.** Crea la _función_ **“+”** que, dados un carácter C y un entero X, devuelve un carácter que está X posiciones más adelante en el alfabeto. Por ejemplo, dada la ‘A’ y +1, el resultado debe ser ‘B’; dados Z y -2, el resultado debería ser ‘X’.

16. **¿Es bisiesto?** Crea una _función_ llamada **es_bisiesto** que, dado un entero positivo que representa un año, devuelva true si dicho año es bisiesto y false en caso contrario. Un año es bisiesto, según el calendario gregoriano es aquel que es divisible entre 4, salvo que sea año secular (el último del siglo, el que termina en 00) que no es bisiesto. Aún así, los años seculares que son múltiplos de 400, sí que son bisiestos a pesar de ser múltiplos de 100. Así, por ejemplo, son bisiestos los años 1996, 2020 (múltiplos de 4), 1600, 2000, 2400 (acaban en 00 y son múltiplos de 400) y no son bisiestos los siguientes: 1997, 2021 (no son múltiplos de 4), 1900, 2100, 2500 (múltiplos de 100).

17. **Hoy.** Crea un _procedimiento_ llamado **hoy** que, devuelva tres enteros diciendo qué día es hoy (día, mes y año). El programa debe utilizar la biblioteca de programas Ada.Calendar, que ofrece una función llamada clock para obtener el momento actual (día y hora). Y un procedimiento llamado Split que, dado un momento en el tiempo, devuelve el día, mes y año de ese momento y los segundos transcurridos desde las 00:00 de ese día hasta llegar a ese momento. O también se pueden usar las funciones year, month, day y seconds.
```ada
  -- read the computer's clock to get the current time of day
  Function Clock return Time;
  -- Resultado = numero de segundos desde 1900 hasta la hora actual
  Procedure Split  (Date    : in Time;         Year : out Year_Number;
                    Month   : out Month_Number; Day : out Day_Number;
                    Seconds : out Day_Duration);
  function Time_Of (Year : in Year_Number; Month  : in Month_Number;
                    Day  : in Day_Number; Seconds : Day_Duration:=0.0);
                    return Time;
  -- selector operations
  function Year (Date : Time) return Year_Number;
  function Month (Date : Time) return Month_Number;
  function Day (Date : Time) return Day_Number;
  function Seconds (Date : Time) return Day_Duration;
```

18. **Días entre fechas.** Crea una _función_ llamada **cuantos_dias** que, dada una fecha de nacimiento, y una fecha actual, indica los días que han transcurrido entre dichas fechas.
