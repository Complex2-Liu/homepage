size(8cm);
guide center=(0,1){W}..tension 0.8 ..(0,0){(1,-.5)}..tension 0.8..{W}(0,-1);
filldraw(center{E}..{N}(1,0)..{W}cycle, black);

guide center=(0,-1){E}.. tension 0.8 ..(0,0){(-1,0.5)}..tension 0.8..{E}(0,1);
filldraw(center{W}..{S}(-1,0)..{E}cycle,  white);
fill(circle((0,0.5),0.125), white);
fill(circle((0,-0.5),0.125), black);
