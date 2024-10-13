Pascal_HitungRataRata;

var
  jumlah, nilai, count: integer;
  rata: real;
begin
  jumlah := 0;
  count := 0;
  
  writeln('Masukkan nilai (masukkan -1 untuk mengakhiri):');
  repeat
    readln(nilai);
    if nilai <> -1 then
    begin
      jumlah := jumlah + nilai;
      count := count + 1;
    end;
  until nilai = -1;
  
  if count > 0 then
  begin
    rata := jumlah / count;
    writeln('Rata-rata nilai: ', rata:0:2);
  end
  else
    writeln('Tidak ada nilai yang dimasukkan.');
end.