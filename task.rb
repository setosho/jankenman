=begin
def inarizushi
    puts "goma"
    puts "sukeroku"
    puts "200enn"
end
inarizushi
=end

=begin
def play(sports)
    puts "今日私は#{sports}をします"
end
play("野球")

def add(x,y)
    puts x+y
end
add(2,4)

def introduce(name,age)
    puts "私の名前は#{name}です。年齢は#{age}です"
end
puts "名前"
name = gets.chomp
puts "年齢"
age = gets.to_i
introduce(name,age)
=end

=begin
def division(n,y)
    if y == 0
        return "割れないよ"
    end
    n/y
end

puts division(2,0)
=end
=begin
def add(n,y)
    if n+y < 50
        return "50より小さい"
    end
    "50以上です"
end

puts add(10,20)
　　#例題回答
def add(n, y)
  sum = n + y
  if sum < 50
    return "50より小さい"
  else
    return "50以上です"
  end
end

puts add(10, 20)

class House
end
5.times do
    p House.new
end
=end

# 以下に線形探索法を行う関数を定義してください
def linear_search(numbers,value)
  i = 0
  while i < numbers.length
    if numbers[i] == value
        return i
    end
    i += 1
  end
  return "none"
end
# 「探したい数字」が含まれている配列
numbers = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]

puts('配列numbersから探したい数字を入力してください')
# 探したい数字を入力する
target_number = gets.to_i
# 数字をlinear_searchメソッドで探し、探した結果をputsで出力する
puts(linear_search(numbers, target_number))
