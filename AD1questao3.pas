program ad1questao3;
var
        n,j,k,x,y,z: integer;
        vet:array[1..1000] of integer;
begin
        writeln('Digite um n£mero Par: ');
        read(n);
        if (n mod 2=0) then
        begin
                for j := 2 to n do
                begin
                        if (j mod 2 =0) then
                        begin

                                if (j=2) then
                                        vet[j]:=j

                                else
                                        vet[j]:=0;

                        end
                        else
                        begin
                                if (j=3) then
                                        vet[j]:=j
                                else
                                if j mod 3 = 0 then
                                        vet[j]:=0
                                else
                                begin
                                         if (j=5) then

                                              vet[j]:=j

                                           else
                                           if j mod 5 = 0 then
                                                vet[j]:=0

                                                 else
                                                  begin
                                                     if (j mod 3 = 0) and (j mod 5 = 0) then
                                                                vet[j]:=0
                                                     else
                                                      begin
                                                        if j = 7 then
                                                          vet[j]:=j
                                                        else
                                                          begin
                                                            if j mod 7 = 0 then
                                                               vet[j]:=0
                                                            else
                                                                vet[j]:=j;
                                                          end;
                                                      end;

                                           end;
                                           end;

                        end;
                end;


               for j:= 2 to n do
                begin
                        for k:=2 to n do
                        begin
                                x:=vet[j] + vet[k];
                                if x=n then
                                begin
                                y:=vet[j];
                                z:=vet[k];
                                end

                        end;






                end;

            writeln(y,'+',z,'=',n);

        end
        else
            write('O n£mero deve ser par e estar no intervalo [4,1000]!');


end.
