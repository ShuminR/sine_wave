clc; %clear command
clear all; %Clears the workspace variable, freeing memory
F1=1; %signal frequency
Fs=2^8; %sampling frequency
P1=0; %Initial signal phase
N=2^8; %sampling points
t=[0:1/Fs:(N-1)/Fs]; %sampling time
ADC=2^7 - 1; %DC component
A=2^7; %signal amplitude
% generates sinusoidal signal
s=A*sin(2*pi*F1*t + pi*P1/180) + ADC;
plot(s); %Draw a graph
% Creates an MIF file
fild = fopen('sin_wave_4096x8.mif','wt');
% is written to the MIF header
fprintf(fild, '%s\n','WIDTH=8;'); %width
fprintf(fild, '%s\n\n','DEPTH=4096;'); %depth
fprintf(fild, '%s\n','ADDRESS_RADIX=UNS;'); % address format
fprintf(fild, '%s\n\n','DATA_RADIX=UNS;'); % data format
fprintf(fild, '%s\t','CONTENT'); %address
fprintf(fild, '%s\n','BEGIN'); %begin
for i = 1:N
s0(i) = round(s(i)); 
if s0(i) <0 %minus 1 Force zero
s0(i) = 0
end
fprintf(fild, 'sin[',i-1); 
fprintf(fild, '\t%g\t',i-1); %Address code
fprintf(fild, ']',i-1); 
fprintf(fild, '%s\t',':'); %colon
fprintf(fild, '%d',s0(i)); %data input
fprintf(fild, '%s\n',';'); %semicolon
end
fprintf(fild, '%s\n','END;'); %end
fclose(fild);
