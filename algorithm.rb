=begin
#線形探索法を行う関数を定義してください
def linear_search(numbers,value)
  # 「探したい数字」が含まれている配列のindexを指定するi
  i = 0
  # iが配列の個数を超えるまで繰り返し処理をする
  while i < numbers.length
    # もしも、iのindexから出される配列の値が、「探したい数字」と一致していたら
    if numbers[i] == value
      # そのインデックスの値をreturnする
      return i
    end
    # もしも、iのindexから出される配列の値が、「探したい数字」と一致していなかったら
    # 次の数字をチェックするためにiの数字を+1する
    i += 1
  end
  # iが配列の個数を超えても探したい数字がなかったら、その配列の中に探したい数字がない
  # ということなので、Noneを返す
  return "None"
end

# 「探したい数字」が含まれている配列
numbers = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]

puts('配列numbersから探したい数字を入力してください')
# 探したい数字を入力する
target_number = gets.to_i
# 数字をlinear_searchメソッドで探し、探した結果をputsで出力する
puts(linear_search(numbers, target_number))
=end



=begin
#二分探索法を行う関数を定義してください
def binary_search(numbers, value)
  # 「配列の先頭のindex」を表すhead変数を定義する（初期値は0）
  head = 0
  # 「配列の末尾のindex」を表すtail変数を定義する（初期値は配列の個数-1）
  tail = numbers.length - 1

  # 「配列の先頭のindex」が「配列の末尾のindex」を超えない限り繰り返す
  while head <= tail do
    # 先頭のindexの数字と末尾のindexの数字を足して2で割って、
    # 「真ん中の」indexの数字を定義する
    center = ((head + tail) / 2.0).round
    # 真ん中のindexの中身の数字が、「探したい数字」と一致しているかを確認する
    if (numbers[center] == value)
      # 一致していたらreturnする
      return center
    # 真ん中のindexの中身の数字が、「探したい数字」よりも大きかったら、
    # 「探したい数字」は、真ん中よりも後ろにあることになるため、
    # 先頭のindexの数字を「真ん中+1」にする
    elsif (numbers[center] < value)
      head = center + 1
    # 真ん中のindexの中身の数字が、「探したい数字」よりも小さかったら、
    # 「探したい数字」は、真ん中よりも前にあることになるため、
    # 末尾のindexの数字を「真ん中-1」にする
    else
      tail = center - 1
    end
  end
  # headがtailの数を超えても探したい数字がなかったら、その配列の中に探したい数字がない
  # ということなので、Noneを返す  
  return "None"
end


      
# 「探したい数字」が含まれている配列
numbers = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]

puts('配列numbersから探したい数字を入力してください')
# 探したい数字を入力する
target_number = gets.to_i
# 数字をbinary_searchメソッドで探し、探した結果をputsで出力する
puts(binary_search(numbers,target_number))
=end

list = (1..100).to_a
target_number=42
low_number=0
high_number=list.length-1
n=0

while low_number<= high_number do
  n +=1
  puts("#{n}回目")
  center_number = ((low_number + high_number)/2).floor
  if list [center_number]< target_number
    low_number=center_number+1
  elsif target_number< list[center_number]
    high_number = center_number -1
  else
    puts("#{target_number}見つけた")
    break
  end
end