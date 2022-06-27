size(5cm);

pair A_2 = dir(90);
pair A_3 = dir(90 + 120);
pair A_1 = dir(90 + 240);
path thebox = box((-1.5,-1), (1.5,1.5));
fill(thebox, white);
draw(A_1 -- A_2 -- A_3);
dot(A_1);
dot(A_2);
dot(A_3);

clip(thebox);
label("$v_1$", A_1, align=down);
label("$v_2$", A_2, align=up);
label("$v_3$", A_3, align=down);
