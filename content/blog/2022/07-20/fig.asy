import olympiad;
import cse5;
settings.render=16;
size(8cm);
defaultpen(fontsize(9pt));

pair C = (-2,-4);
pair D = (1,-4);
pair B = shift(C) * (2.5*dir(125));
pair E = shift(D) * (2.5*dir(35));
pair M = midpoint(B--D);
pair N = midpoint(C--E);
pair T = IP(L(M, shift(M) * ((D-M)*dir(90)), 5, 5),
            L(N, shift(N) * ((E-N)*dir(90)), 5, 5));
pair A = IP(L(shift(B) * ((T-B)*dir(20)),  B, 5, 5),
            L(shift(E) * ((T-E)*dir(-20)), E, 5, 5));
pair P = IP(L(C, D, 5, 5),
            L(A, B, 5, 5));
pair Q = IP(L(C, T, 5, 5),
            L(A, B, 5, 5));
pair R = IP(L(C, D, 5, 5),
            L(A, E, 5, 5));
pair S = IP(L(D, T, 5, 5),
            L(A, E, 5, 5));
pair U = IP(A--B, T--S);
pair V = IP(A--E, T--Q);

markscalefactor=0.060;
filldraw(anglemark(T,B,A), red+opacity(0.1), red);
filldraw(anglemark(A,E,T), red+opacity(0.1), red);
filldraw(anglemark(T,S,A), purple+opacity(0.1), purple);
filldraw(anglemark(A,Q,T), purple+opacity(0.1), purple);
markscalefactor=0.040;
filldraw(anglemark(S,T,B), heavycyan+opacity(0.1), heavycyan);
filldraw(anglemark(E,T,Q), heavycyan+opacity(0.1), heavycyan);

fill(B--T--C--cycle, grey + opacity(0.3));
fill(D--T--E--cycle, grey + opacity(0.3));

draw(B--C, blue);
draw(D--E, blue);
draw(B--D);
draw(C--E);
draw(M--T--N, dotted);
draw(B--T--D, deepgreen);
draw(C--T--E, orange);
draw(B--A--E);
draw(circumcircle(P,Q,S), dashed);
draw(B--P--C);
draw(E--R--C);
draw(A--S--Q--cycle);
draw(S--T--Q);
draw(U--V);

label("$P$", P, align=dir(-135));
label("$R$", R, align=dir(-35));
label("$S$", S, align=dir(90));
label("$Q$", Q, align=dir(70));
label("$A$", A, align=dir(90)*2);
label("$U$", U, align=dir(180));
label("$V$", V, align=dir(0));
label("$T$", T, align=dir(-95)*3.5);
label("$B$", B, align=dir(120));
label("$C$", C, align=dir(-90));
label("$D$", D, align=dir(-90));
label("$E$", E, align=dir(45));

dot(T);
dot(C);
dot(D);
dot(B);
dot(E);
dot(M, linewidth(1.5));
dot(N, linewidth(1.5));
dot(T);
dot(A);
dot(P);
dot(Q);
dot(R);
dot(S);
dot(U);
dot(V);

clip(box(P + (-2,-1.5), Q + (4,1)));
