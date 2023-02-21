function [AH,AS,AY]=distances(H1, H2, S1, S2, Y1,Y2)
d1=abs(H1- H2);
d2=2-(abs(H1-H2));
min_d= min(d1,d2);
sub= prod(1- (min_d));
AH= nthroot(sub,11);

S=1-(abs(S1-S2));
p=prod(S);
AS=nthroot(p,11);

min_Y= min(Y1,Y2);
max_Y= max(Y1,Y2);
D=prod(min_Y/max_Y);
AY=nthroot(D,11);
