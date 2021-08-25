import graph;
size(15cm);
real labelscalefactor = 0.25; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */ 

pair A_1=(0,0);
pair B_1=(1,0);
pair C_1=dir(60);

dot(A_1);
dot(B_1);
dot(C_1);
draw(A_1--B_1--C_1--cycle);
label("$n=1$", (1/2,0), dir(-90));

pair A_2=(2,0);
pair B_2=(4,0);
pair C_2=A_2 + 2*dir(60);
pair X_1=A_2 + dir(0);
pair Y_1=B_2 + dir(120);
pair Z_1=A_2 + dir(60);

dot(A_2);
dot(B_2);
dot(C_2);
dot(X_1);
dot(Y_1);
dot(Z_1);
draw(A_2--B_2--C_2--cycle);
draw(X_1--Y_1--Z_1--cycle);
label("$n=2$", (3,0), dir(-90));

pair A_3=(6,0);
pair B_3=(9,0);
pair C_3=A_3 + 3*dir(60);
pair X_2=A_3 + (1,0);
pair X_3=A_3 + (2,0);
pair Y_2=B_3 + dir(120);
pair Y_3=B_3 + 2*dir(120);
pair Z_2=A_3 + 2*dir(60);
pair Z_3=A_3 + dir(60);

dot(A_3);
dot(B_3);
dot(C_3);
dot(X_2);
dot(X_3);
dot(Y_2);
dot(Y_3);
dot(Z_2);
dot(Z_3);
dot(0.5*Z_3+0.5*Y_2);
draw(A_3--B_3--C_3--cycle);
draw(Z_2--Y_3);
draw(Z_3--Y_2);
draw(Z_3--X_2);
draw(Z_2--X_3);
draw(X_2--Y_3);
draw(X_3--Y_2);
label("$n=3$", (7.5,0), dir(-90));
