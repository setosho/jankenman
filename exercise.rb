=begin
name = "yamada"
age = 18
#puts name
#puts age
puts "私の名前は#{name}です。年齢は#{age}歳です。"
=end
=begin
season = ["春","夏","秋"]
season << "冬"
puts season[2]
=end
=begin
house = {price:"2000万",location:"東京都",size:"100坪"}
puts house[:location]
=end
=begin
house = [{price:"2000万",location: "東京都",size:"80坪"},{price:"1500万",location:"千葉県",size:"50坪"},{price:"800万",location:"埼玉県",size:"100坪"}]
puts house[1][:location]
puts house[0][:size]
puts house[2][:price]
puts house[2][:size]
=end

=begin
num = gets.to_i
if num >= 50
   puts "50以上だよ"
else
   puts "50未満だよ"
end
=end
=begin
num = gets.to_i
if num == 30
   puts "30ちょうどだよ"
elsif num >= 50
   puts "50以上だよ"
else
   puts "50未満だよ"
end
=end

=begin
num = gets.to_i
if num % 2 == 0
   puts "numは偶数"
else
   puts "numは奇数"
end
=end

=begin
num = 1
while num < 11
   puts "こんばんは"
   num += 1
end
=end
=begin
for numbers in 0..10 do
    puts "こんにちは"
end
=end

=begin
10.times do
   puts "おはよう"
end
=end

=begin
numbers = [1,2,3,4,5,6,7,8,9,10]
[1,2,3,4,5,6,7,8,9,10].each do |numbers|
   puts numbers
end
=end

=begin
def addition(x,y,z)
   puts x + y
end
addition(2,3,7)
=end
=begin
def addition(x,y,z)
   return(x+y+z)/3
end
puts addition(2,3,7)
=end

=begin
def division(x,y)
   return x/y
end
puts division(10,5)
=end


def doing(date, place, food)
 puts"#{date}は#{place}で#{food}を食べる"#returnだと帰ってこないのはなぜか？
end

puts "予定を入力" 
 date = gets.chomp
puts "場所を入力"
 place = gets.chomp
puts "食べるものを入力"
 food = gets.chomp

doing(date,place,food)


=begin
num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

num.each do |b|
  puts b
end
=end

=begin
def doing(date, place, food)
  return "#{date}は#{place}で#{food}を食べる" #returnは省略も可
end

puts doing("今日", "渋谷", "カレー")
puts doing("明日", "池袋", "オムライス")
=end