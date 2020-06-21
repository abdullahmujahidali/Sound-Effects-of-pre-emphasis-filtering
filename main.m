f=8000;
apre=[1];
[s1,f]=wavread('C:\Users\N\Desktop\family.wav');
figure(1)
plot(s1)
title('speech signal');
sound(s1,f);
pause
% design pre-emphasis filter
bpre=[1 -0.95];
fvtool(bpre,apre);
ypre=filter(bpre,apre,s1);
figure(2)
plot(ypre);
title('First filter response');
sound(ypre,f);
pause
s3=conv(s1,ypre);
figure(3);
plot(s3);
title('speech after filtering');
sound(m,fs);
pause
