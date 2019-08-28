program ad1questao6;
var
        n:string;
        j:char;
        tam,i,k,soma:integer;
        vet:array[1..1000] of integer;
        erro:byte;

begin   soma:=0;
        write('Digite a String: ');
        writeln();
        read(n);
        tam:= length(n);
        for i:=1 to tam do
        begin
                j:=n[i];
                if ((ord(j)) >= 48) and  ((ord(j)) <= 57) then
                begin
                        val(j,k,erro);
                        vet[i]:=k;
                        soma:=soma + vet[i];
                end;
        end;
        if soma = 0 then
        begin
                write ('Nenhum Digito foi digitado!');
        end
        else
        begin
        writeln('A soma dos digitos foi: ',soma);
        end;
end.