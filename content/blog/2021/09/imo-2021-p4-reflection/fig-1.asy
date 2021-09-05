import cse5;
import olympiad;
size(12cm);
defaultpen(fontsize(9pt));

pair M=dir(18);
pair J=dir(122);
pair K=dir(-115);
pair L=dir(-35);

pair A=IP(L(M, M+dir(18+90), 9), L(J, J+dir(122-90), 9));
pair B=IP(L(J, J+dir(122+90), 9), L(K, K+dir(-115-90), 9));
pair C=IP(L(K, K+dir(-115+90), 9), L(L, L+dir(-35-90), 9));
pair D=IP(L(L, L+dir(-35+90), 9), L(M, M+dir(18-90), 9));

pair I=origin;
path omega=circumcircle(A,I,C);

pair X=intersectionpoints(L(A,B,9), omega)[0];
pair Z=intersectionpoints(L(C,B,9), omega)[0];
pair Y=intersectionpoints(L(A,D,9), omega)[1];
pair T=intersectionpoints(L(C,D,9), omega)[1];

pair X_1=2*foot(X,A,I)-X;
pair T_1=2*foot(T,D,I)-T;
pair Z_1=2*foot(Z,C,I)-Z;
pair Y_1=2*foot(Y,D,I)-Y;

filldraw(X_1--I--T_1--cycle, orange+opacity(0.2));
filldraw(Y_1--I--Z_1--cycle, orange+opacity(0.2));
filldraw(I--X--T--cycle, grey+opacity(0.2));
filldraw(I--Y--Z--cycle, grey+opacity(0.2));
draw(MA(B,A,I,0.23,red));
draw(MA(I,A,D,0.3,red));
draw(MA(X,T,I,0.23,red));
draw(MA(I,X_1,A,0.33,deepcyan+linewidth(1.1)));
draw(MA(A,X,I,0.33,deepcyan+linewidth(1.1)));
draw(MA(A,T_1,I,0.33,deepcyan+linewidth(1.1)));
draw(MA(I,Y_1,D,0.33,deepcyan+linewidth(1.1)));
draw(A--B--C--D--cycle);
draw(unitcircle, linetype("4"));
draw(omega, dashed);
draw(A--X);
draw(D--T);
draw(D--Y);
draw(C--Z);
draw(X--T);
draw(Y--Z);
draw(A--I--C);
draw(D--I);
draw(X--X_1, linetype("16"));
draw(Y--Y_1, linetype("16"));
draw(Z--Z_1, linetype("16"));
draw(T--T_1, linetype("16"));
draw(X--I--Y, blue+linewidth(1.3));
draw(T--I--Z, deepgreen+linewidth(1.3));
draw(X_1--I--Y_1, magenta+linewidth(1.1));
draw(Z_1--I--T_1, red+linewidth(1.1));


label("$A$", A, dir(-10)*2);
label("$B$", B, dir(-180)*2);
label("$C$", C, dir(-100)*2);
label("$D$", D, dir(-20)*2);
label("$I$", I, dir(180)*2);
label("$X$", X, dir(100)*2);
label("$Y$", Y, dir(45)*2);
label("$Z$", Z, dir(-90)*2);
label("$T$", T, dir(90)*2);
label("$X'$", X_1, dir(180)*2);
label("$Y'$", Y_1, dir(-20)*2);
label("$Z'$", Z_1, dir(180)*2);
label("$T'$", T_1, dir(-20)*2);

dot(M);
dot(J);
dot(K);
dot(L);
dot(A);
dot(B);
dot(C);
dot(D);
dot(I);
dot(X);
dot(Z);
dot(Y);
dot(T);
dot(X_1);
dot(T_1);
dot(Z_1);
dot(Y_1);

real xmin=-3, ymin=-4, xmax=3.8, ymax=4.3;
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
