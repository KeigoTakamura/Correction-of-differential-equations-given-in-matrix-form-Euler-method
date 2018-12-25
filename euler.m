omega=-2.88/2;
dt=0.05
T=30
n=600

A=[0,1;omega,0];

X_ONE=[0;0];
X_TWO=[0;0];
X_SUM=[0;0];　

ans(1).v=[0.5;0];



for i=1:600
	X_ONE=A*ans(i).v*dt;
	X_TWO=A*(ans(i).v+X_ONE)*dt;
	ans(i+1).v=ans(i).v+(X_ONE+X_TWO)*0.5;
endfor


for i=1:600
 a(i)=i;
 x(i)=ans(i).v(1,1);
 v(i)=ans(i).v(2,1);
endfor


figure
subplot(2,1,1)       % add first plot in 2 x 1 grid
plot(a,x)
title('x_t(i)')



subplot(2,1,2)       % add second plot in 2 x 1 grid
plot(a,v)       % plot using + markers
title('v_t(i)')


