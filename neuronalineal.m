%% Demostración de neuronas lineales
% Obsérvese una neurona lineal con 3 funciones de activación
%
% Vease tambien PlotSet
%% Obsérvese las funciones de activación
x = linspace(-4,2,1000);
y = 2*x + 3;
z1 = tanh(y);
z2 = 2./(1+exp(-y)) - 1;
z3 = zeros(1,length(x));
% Aplicar un umbral
k = y >=0;
z3(k) = 1;
PlotSet(x,[z1;z2;z3;y],'x label','x', 'y label',...
 'y', 'figure title','Linear Neuron','plot title', 'Linear Neuron',...
 'plot set',{[1 2 3 4]},'legend',{{'Tanh','Exp','Threshold','Linear'}});