program ad1primeira;
var
        i,j,n:integer;
begin
        write('Digite um n£mero: ');
        read(n);
        if n < 1 then
                write('ERRO: o n£mero ‚ menor que 1!');

                         for i := n downto 1 do
                           begin
                                  for j := n downto (n-i+1) do
                                         begin
                                                 write((n-i+1)*j,' ');

                                         end;
                           writeln();
                           end;


end.
