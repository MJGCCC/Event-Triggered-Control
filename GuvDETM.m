function q= Guv(in,in2)
A=in2;
[t,y]=ode45(@(t,y) F(t,y,A),[0 0.0008],in);
q(1,1)=y(41,1);
q(2,1)=y(41,2);
q(3,1)=y(41,3);
end
function dy=F(t,y,A)
dy=zeros(3,1);
dy(1)=y(2);
dy(2)=y(3);
dy(3)=A*y(3);
end