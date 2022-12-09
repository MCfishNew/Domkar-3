uses crt;
var
casem: byte;
function casemf(var v: byte): byte;
begin
textcolor(2);
writeln('Да - 1');
textcolor(4);
writeln('Нет - 0');
textcolor(1);
Write('Выберите вариант: ');
readln(v);
casemf := v;
end;
function func(var x: real): real;
begin
var f1: real;
f1 := 2 * power(x, 3) + 0 * power(x, 2) -5 * x + 2;
func := f1;
end;
function func1(var x: real): real;
begin
var f2: real;
f2 := 2*x * (power(x, 4)/4) + 0*x * (power(x, 3)/3) -5*x * (power(x, 2)/2) + 2 * x;
func1 := f2;
end;
function predel: integer;
begin
var a, b, h, f, x, S: real;
var n: integer;
textcolor(2);
print('Введите пределы интегрирования "a"<"b":');
readln(a, b);
textcolor(2);
print('Количество интервалов разбиения:');
readln(n);
h := (b - a) / n;
x := a + h/2;
for var i := 0 to n - 1 do
begin
f := func(x);
S +=f;
x +=h;
end;
S += func(a) + func(b);
Textcolor(1);
writeln('Ответ ', S);
writeln;
Textcolor(15);
writeln('Вывести погрешность полученного результата?');
casem := casemf(casem);
case casem of
1:
begin
Textcolor(2);
S:= func1(a) + func1(b);
writeln('Погрешность = ', (abs((S - f)/S)):1:2);
end;
0:
exit()
end;
writeln('Начать заново?');
casem := casemf(casem);
case casem of
1: predel;
0:
begin
exit()
end
end;
predel := 0;
end;
begin
Writeln('Вычисление площади фигуры, ограниченной кривой ');
textcolor(13);
writeln('2*x^3 + (0) *x^2 + (-5) * x + (2)');
textcolor(15);
write('и осью Ох (в положительной части по оси Оу)');
textcolor(15);
Writeln('Ввести пределы интегрирования в ручную?');
casem := casemf(casem);
case casem of
1: predel;
0:
begin
exit()
end
end;
end.