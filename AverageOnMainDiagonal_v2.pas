program DiagonalAverage;

const
  N = 3;  { Размерность квадратной матрицы }

var
  A: array[1..N, 1..N] of Integer;  { Матрица размером N x N }
  sum, i, j: Integer;  { Переменные для суммы, индексов циклов }
  avg: Double;  { Переменная для хранения среднего арифметического }

begin
  { Вводим элементы матрицы }
  WriteLn('Введите элементы матрицы:');
  for i := 1 to N do  { Внешний цикл для строк }
    for j := 1 to N do  { Внутренний цикл для столбцов }
    begin
      { Запрашиваем элементы матрицы }
      Write('A[', i, ',', j, ']: ');
      Read(A[i, j]);  { Читаем элемент матрицы }
    end;

  { Вычисляем сумму элементов на главной диагонали }
  sum := 0;  { Инициализируем сумму как 0 }
  for i := 1 to N do  { Цикл для суммирования элементов главной диагонали }
    sum := sum + A[i, i];  { Главная диагональ: элементы с одинаковыми индексами i, j }

  { Вычисляем среднее арифметическое }
  avg := sum / N;  { Среднее арифметическое = сумма / количество элементов }

  { Выводим результат }
  WriteLn('Среднее арифметическое элементов на главной диагонали: ', avg:0:2); 
  { Выводим результат с двумя знаками после запятой }
end.
