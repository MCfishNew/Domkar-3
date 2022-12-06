var
casem: byte;
function casemf(var v: byte): byte;
begin
writeln('Да - 1');
writeln('Нет - 0');
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
f2 := 2*x * power(x, 4) + 0 * power(x, 3) -5*x * power(x, 2) + 2 * x;
func1 := f2;
end;


function predel: integer;
begin
var a, b, h, f, x, S: real;
var n: integer;
Writeln('Вычисление площади фигуры, ограниченной кривой 2 * power(x, 3) + 0 * power(x, 2) -5 * x + 2 и осью Ох (в положительной части по оси Оу)');
print('Введите пределы интегрирования "a"<"b":');
readln(a, b);
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
writeln('Ответ ', S);
writeln;
writeln('Вывести погрешность полученного результата?');
casem := casemf(casem);
case casem of
1:
begin
writeln('Погрешность = ', abs((S - f)/S));
end;
0:
writeln('Нет такого выбора!!!');
end;
writeln('Начать заново?');
casem := casemf(casem);
case casem of
1: predel;
0:
begin
writeln('Спасибо за использование данной программы, ждём снова!');
exit()
end
end;
predel := 0;
end;


begin
Writeln('Вычисление площади фигуры, ограниченной кривой 2*x^3 + (0) *x^2 + (-5) * x + (2) и осью Ох (в положительной части по оси Оу)');
Writeln('Ввести пределы интегрирования в ручную?');
casem := casemf(casem);
case casem of
1: predel;
0:
begin
writeln('Спасибо за использование данной программы, ждём снова!');

exit()
end
end;
end.