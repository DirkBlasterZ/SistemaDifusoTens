
% ESTABLECIMIENTO DE LAS VARIABLES DE ENTRADA
% VARIABLE DE ENTRADA - DOLOR
intervalo=0.01;
e=0:intervalo:10;
L=trapmf(e, [0 0 1 3]); % TRAPEZOIDAL
M=trimf(e, [1 3 5]);    % TRIANGULAR
I=trimf(e, [3 5 7]);    % TRIANGULAR
MI=trapmf(e, [5 7 10 10]);  % TRAPEZOIDAL
%GRAFICA DE LOS CONJUNTOS DIFUSOS PARA LA VARIABLE DOLOR
subplot(3,1,1),plot(e,L,e,M,e,I,e,MI,'LineWidth',3)
set(gca,'FontSize',16),legend('DLeve','DModerado','DIntenso','DMuyIntenso')
xlabel('DOLOR'),ylabel('\mu(Dolor)')

% VARIABLE DE ENTRADA - TOLERANCIA
e=1:intervalo:5;
P=trapmf(e,  [1 1 2 3]);    % TRAPEZOIDAL
R=trimf(e,  [2 3 4]);       % TRIANGULAR
M=trapmf(e,  [3 4 5 5]);    %TRAPEZOIDAL
%GRAFICA DE LOS CONJUNTOS DIFUSOS PARA LA VARIABLE TOLERANCIA
subplot(3,1,1),plot(e,P,e,R,e,M,'LineWidth',3)
set(gca,'FontSize',16),legend('TPoca','TRegular','TMucha')
xlabel('TOLERANCIA'),ylabel('\mu(Tolerancia)')

% ESTABLECIMIENTO DE LAS VARIABLES DE SALIDA
%VARIABLE DE SALIDA - FRECUENCIA
e=1:intervalo:120; 
FB=trapmf(e, [1 1 24 48]); %TRAPEZOIDAL
FM=trimf(e, [24 48 72]);   %TRIANGULAR
FA=trimf(e, [48 72 96]);   %TRIANGULAR 
FMA=trapmf(e, [72 96 120 120]); %TRAPEZOIDAL
%GRAFICA DE LOS CONJUNTOS DIFUSOS PARA LA VARIABLE FRECUENCIA
subplot(3,1,1),plot(e,FB,e,FM,e,FA,e,FMA,'LineWidth',3)
set(gca,'FontSize',16),legend('FBaja','FModerada','FAlta','FMuyAlta')
xlabel('FRECUENCIA'),ylabel('\mu(Frecuencia)')

%VARIABLE DE SALIDA - INTENSIDAD
e=0:intervalo:12;
B=trapmf(e,   [0 0 2 6]); %TRAPEZOIDAL
M=trimf(e, [2 6 10]);     %TRIANGULAR  
A=trapmf(e,   [6 10 12 12]); %TRAPEZOIDAL
%GRAFICA DE LOS CONJUNTOS DIFUSOS PARA LA VARIABLE INTENSIDAD
subplot(3,1,1),plot(e,B,e,M,e,A,'LineWidth',3)
set(gca,'FontSize',16),legend('Baja','Mediana','Alta')
xlabel('INTENSIDAD'),ylabel('\mu(Intensidad)')

% ESTABLECIMIENTO DE LA REGLAS DIFUSAS

If (dolor is DLeve) and (tolerancia is TPoca) then (intensidad is IBaja)(frecuencia is FBaja)         
If (dolor is DLeve) and (tolerancia is TRegular) then (intensidad is IMedia)(frecuencia is FBaja)        
If (dolor is DLeve) and (tolerancia is TMucha) then (intensidad is IAlta)(frecuencia is FBaja)             
If (dolor is DModerado) and (tolerancia is TPoca) then (intensidad is IBaja)(frecuencia is FModerada)    
If (dolor is DModerado) and (tolerancia is TRegular) then (intensidad is IMedia)(frecuencia is FModerada)  
If (dolor is DModerado) and (tolerancia is TMucha) then (intensidad is IAlta)(frecuencia is FModerada)   
If (dolor is DIntenso) and (tolerancia is TPoca) then (intensidad is IBaja)(frecuencia is FAlta)          
If (dolor is DIntenso) and (tolerancia is TRegular) then (intensidad is IMedia)(frecuencia is FAlta)      
If (dolor is DIntenso) and (tolerancia is TMucha) then (intensidad is IAlta)(frecuencia is FAlta)        
If (dolor is DMuyIntenso) and (tolerancia is TPoca) then (intensidad is IBaja)(frecuencia is FMuyAlta)  
If (dolor is DMuyIntenso) and (tolerancia is TRegular) then (intensidad is IMedia)(frecuencia is FMuyAlta)
If (dolor is DMuyIntenso) and (tolerancia is TMucha) then (intensidad is IAlta)(frecuencia is FMuyAlta)  
