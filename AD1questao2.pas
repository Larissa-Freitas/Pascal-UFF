program ad1questao2;
var
        x,y,xp,yp,somax,somay:real;
        qtdx,qtdy:integer;
begin
        write('Digite o ponto: ');
        readln(x,y);
        somax:= 0;
        somay:= 0;
        qtdx:= 0;
        qtdy:= 0;
        while (x <> 0) or (y <> 0) do
                begin
                        qtdx:= qtdx+1;
                        qtdy:= qtdy+1;
                        somax:=somax+x;
                        somay:=somay+y;
                        write ('Digite um ponto: ');
                        readln(x,y);
                 end;
        if (qtdx+qtdy) = 0 then
                write ('NENHUM PONTO FOI DIGITADO!')
        else
                begin
                         xp:=somax/qtdx;
                         yp:=somay/qtdy;
                         write ('Centr¢ide = (',xp:4:1,',',yp:4:1,')');

                end;
        readln();
end.

