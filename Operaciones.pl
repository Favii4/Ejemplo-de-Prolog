%Presentado por: Fabian Alexander Franco Quiroga - 20152020048
%Ejemplo en prolog de una calculadora.
%
operaciones:-write('Ingrese el primer numero= '),
      read(A),
      write('Ingrese el segundo numero= '),
      read(B),
      C is A+B,
      D is A-B,
      E is A*B,
      F is A/B,
      format('El resultado de la suma es ~w',[C]),
      format('El resultado de la resta es ~w',[D]),
      format('El resultado de la multiplicacion es ~w',[E]),
      format('El resultado de la division es ~w',[F]).



