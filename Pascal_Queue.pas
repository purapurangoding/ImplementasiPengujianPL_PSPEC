program ImplementasiAntrian;

const
  MAX_SIZE = 100;

type
  Queue = record
    items: array[1..MAX_SIZE] of integer;
    front, rear: integer;
  end;

procedure initialize(var q: Queue);
begin
  q.front := 0;
  q.rear := 0;
end;

function isEmpty(q: Queue): boolean;
begin
  isEmpty := (q.rear = 0);
end;

function isFull(q: Queue): boolean;
begin
  isFull := (q.rear = MAX_SIZE);
end;

procedure enqueue(var q: Queue; x: integer);
begin
  if isFull(q) then
    writeln('Antrian penuh')
  else
  begin
    q.rear := q.rear + 1;
    q.items[q.rear] := x;
  end;
end;

function dequeue(var q: Queue): integer;
var
  x: integer;
begin
  if isEmpty(q) then
  begin
    writeln('Antrian kosong');
    dequeue := -1;
  end
  else
  begin
    x := q.items[1];
    for var i := 1 to q.rear - 1 do
      q.items[i] := q.items[i+1];
    q.rear := q.rear - 1;
    dequeue := x;
  end;
end;

var
  q: Queue;
  choice, item: integer;

begin
  initialize(q);
  
  repeat
    writeln('1. Enqueue');
    writeln('2. Dequeue');
    writeln('3. Keluar');
    write('Pilihan Anda: ');
    readln(choice);
    
    case choice of
      1: begin
           write('Masukkan item: ');
           readln(item);
           enqueue(q, item);
         end;
      2: begin
           item := dequeue(q);
           if item <> -1 then
             writeln('Item yang dihapus: ', item);
         end;
      3: writeln('Program selesai');
    else
      writeln('Pilihan tidak valid');
    end;
  until choice = 3;
end.