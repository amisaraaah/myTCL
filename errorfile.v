module errorfile(a,b,y);
input a,b;
output wire c;
assign c = ~(a&b)
for(k=0;k<8;k=k+1)
begin
#10 y = k;

