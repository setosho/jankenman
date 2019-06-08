=begin
def selection_sort(numbers)
  # 「まだ調べていない中で、一番左にある値のインデックス番号」を表す変数iを定義する
  i = 0
  # iの値が、配列の個数を超えるまで繰り返す
  while i < (numbers.length) -1 do
    # 配列の移動を目で確認するためのp(number)
    p(numbers)
    # 「一番小さい値が入っている配列のindex番号である」ということを
    # 表すための、indexMinという変数を定義しておく
    indexMin = i
    # numbers[i]の中身に入っている数字と、見比べるための
    # 右隣の数字を引っ張り出すためのインデックスの数字kを定義する
    k = i + 1
    # kの値が、配列の個数を超えるまで繰り返す
    while k < (numbers.length) do
      # numbers[indexMin]の値（一番左の値）が、numbers[k]より大きければ
      if numbers[k] < numbers[indexMin]
        # numbers[k]の中に入っている値が、最小の値ということになる
        # なので、kの値（index番号）をindexMinに移す
        indexMin = k
      end
      k += 1
    end
    # すべてのループが終わったあと、numbers[indexMin]に入っている値が、
    # すべて調べた中で最小の値、ということになるので、それを一番左に移す
    numbers[indexMin], numbers[i] = numbers[i], numbers[indexMin]
    i += 1
  end
  p(numbers)
end

selection_sort([12, 13, 11, 14, 10])
=end

=begin
def bubble_sort(numbers)
  # 配列の数だけ、ソートを繰り返す
  # iは「配列のインデックス番号」
  for i in 0..((numbers.length)-1)
    # 配列の移動を目で確認するためのp(number)
    p(numbers)
    # まだ調べていない配列の中身を、左から順にすべてチェックする
    # jは「今回の探索でまだ調べていない配列の数字」
    for j in 1.. ((numbers.length)-i-1)
      # 左と右の数字を比べて、左のほうが大きかったら
      if numbers[j-1] > numbers[j]
        # 左と右を交換する
        numbers[j-1],numbers[j] = numbers[j],numbers[j-1]
      end
    end
  end
end

bubble_sort([100,50,25,4,1])
=end

list =1..100
target_number=42

for n in list do
  puts("#{n}回目の探索")
  if n == target_number
    puts("#{target_number}を見つけた")
    break
  end
end