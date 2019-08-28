program ad1questao5;
var
        vet,vet2:array[1..50] of integer;
        menor,maior,i,j,media,aux,maior2,menor2,ma,me: integer;

begin
        menor:=101;
        maior:=-1;
        media:=0;
        maior2:=-1;
        menor2:=101;
        randomize();

        for i:=1 to 50 do
        begin
                vet[i]:=random(20);
                if vet[i] < menor then
                        menor:=vet[i];
                if vet[i] > maior then
                        maior:=vet[i];


                media:=media+vet[i];


        end;
        media:=media div 50;

        for i:=50 downto 2 do
        begin
                for j:= 1 to i-1 do
                begin
                        if vet[j] > vet[j+1] then
                        begin
                                aux:=vet[j];
                                vet[j]:=vet[j+1];
                                vet[j+1]:=aux;
                        end;
                end;
        end;

        for i:=1 to 50 do
        begin
                write(vet[i],' ');

        end;
        writeln();
        for i:=1 to 50 do
        begin
                vet2[i]:=0
        end;

        for i:=1 to 50 do
        begin
                for j:= (i+1) to 50 do
                begin
                        if vet[i]=vet[j] then
                        begin
                                vet2[i]:=vet2[i]+1;
                                if vet2[i] < menor2 then
                                begin
                                        menor2:=vet2[i];
                                        me:=i

                                end;
                                if vet2[i] > maior2 then
                                begin
                                        maior2:=vet2[i];
                                        ma:=i
                                end;


                        end;
                end;
        end;





       writeln('O menor valor foi: ',menor,' O maior valor foi: ',maior);

       writeln(' O valor que mais ocorreu foi: ',vet[ma]);

       writeln( ' O valor que menos ocorreu foi: ',vet[me]);

       writeln('A m‚dia dos valores gerados foi: ',media);








end.
