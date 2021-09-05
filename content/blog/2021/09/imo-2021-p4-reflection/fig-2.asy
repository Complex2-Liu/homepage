import cse5;
import olympiad;
size(7cm);
defaultpen(fontsize(9pt));

pair M=dir(18);
dot(M);
pair J=dir(122);
dot(J);
pair K=dir(-115);
dot(K);
pair L=dir(-35);
dot(L);

pair A=IP(L(M, M+dir(18+90), 9), L(J, J+dir(122-90), 9));
dot(A);
pair B=IP(L(J, J+dir(122+90), 9), L(K, K+dir(-115-90), 9));
dot(B);
pair C=IP(L(K, K+dir(-115+90), 9), L(L, L+dir(-35-90), 9));
dot(C);
pair D=IP(L(L, L+dir(-35+90), 9), L(M, M+dir(18-90), 9));
dot(D);

pair I=origin;
dot(I);
path omega=circumcircle(A,I,C);

pair X=intersectionpoints(L(A,B,9), omega)[0];
dot(X);
pair Z=intersectionpoints(L(C,B,9), omega)[0];
dot(Z);
pair Y=intersectionpoints(L(A,D,9), omega)[1];
dot(Y);
pair T=intersectionpoints(L(C,D,9), omega)[1];
dot(T);

draw(A--B--C--D--cycle);
draw(unitcircle);
draw(A--X);
draw(D--T);
draw(D--Y);
draw(C--Z);
draw(X--T);
draw(Y--Z);

label("$A$", A, dir(-10)*1.5);
label("$B$", B, dir(-180)*1.5);
label("$C$", C, dir(-100)*1.5);
label("$D$", D, dir(-20)*1.5);
label("$X$", X, dir(100)*1.5);
label("$T$", T, dir(80)*1.5);
label("$Z$", Z, dir(-90)*1.5);
label("$Y$", Y, dir(-45)*1.5);
label("$a$", 0.5*A+0.5*J, dir(125)*1.5);
label("$b$", 0.5*B+0.5*J, dir(125)*1.5);
label("$b$", 0.5*B+0.5*K, dir(-125)*1.5);
label("$c$", 0.5*K+0.5*C, dir(-125)*1.5);
label("$c$", 0.5*C+0.5*L, dir(-45)*1.5);
label("$d$", 0.5*L+0.5*D, dir(-45)*1);
label("$d$", 0.5*D+0.5*M, dir(25)*1);
label("$a$", 0.5*A+0.5*M, dir(25)*1.5);
label("$x$", 0.5*A+0.5*X, dir(125)*1.5);
label("$y$", 0.5*D+0.5*Y, dir(25)*1.5);
label("$z$", 0.5*C+0.5*Z, dir(-125)*1.5);
label("$t$", 0.5*D+0.5*T, dir(-45)*1.5);

