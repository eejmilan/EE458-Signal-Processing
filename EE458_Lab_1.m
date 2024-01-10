% %%%%%%%%%% Part 1 %%%%%%%%%%%%%%%%%%%%
% fc = 1000; %Define 1000 Hz Frequency
% fs = 20000; %Define 20,000 Hz sampling frequency 
% 
% T = 1/fc; %Time period
% Ts = 1/fs; %Sampling time period
% 
% t = 0:Ts:(6*T); % 6 cycles
% 
% x = sin(2*pi*fc*t); %sinusoid with 1000 Hz Freq
% 
% plot(t,x);
% xlabel('TIME VECTOR');
% ylabel('AMPLITUDE');

% %%%%%%%%%% Part 2 %%%%%%%%%%%%%%%%%%%%
% fc = 19000; %Define 19 kHz freq
% fs = 20000; %Define 20 kHz freq
% timelength = 20;
% 
% T = 1/fc; %Time period
% Ts = 1/fs; %Sampling time period
% 
% t = 0:Ts:(120*Ts)-Ts;
% 
% x = sin(2*pi*fc*t); %sinusoid with 19000 Hz Freq
% 
% plot(t,x);
% xlabel('time vector');
% ylabel('amp');

%%%%%%%%%% Part 3 %%%%%%%%%%%%%%%%%%%%
fc = 19000; %Define 1000 Hz Frequency
fs = 20000; %Define 20,000 Hz sampling frequency 

Ts = 1/fs; %Sampling time period

t1 = 0:Ts:(120*Ts)-Ts; % 6 cycles
x = sin(2*pi*fc*(t1)); %sinusoid with 1000 Hz Freq

t2 = 0:Ts:(10*Ts)-Ts;
h = exp(-1000*t2); %same length as the part 1
%h = h(1:10); %truncate to first 10 samples

con = conv(x,h);
%can only use amplitude vectors 

plot(con);