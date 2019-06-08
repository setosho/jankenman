=begin
class Player
  def hand
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
    # グーチョキパー(1,2,3)に当てはまる入力だった場合にのみbreakで処理を抜ける
    # my_handに入力されたものをinclude?でjan_numbersの中を探し、当てはまればtrueを返し、breakで処理を抜ける
    jan_numbers = (1..3)
    while true
      puts("数字を入力してください")
      puts ("[1]:グー\n[2]:チョキ\n[3]:パー")
      my_hand = gets.to_i
      break if jan_numbers.include?(my_hand)
        puts("数値が正しくありません")
      end
       my_hand -= 1
  end
end
=end

class Player
  def hand
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
    # my_handに入力されたものが1,2,3のいずれかの場合は、インスタンス変数のplayer_handにmy_handを代入する
      puts("数字を入力してください")
      puts ("[1]:グー\n[2]:チョキ\n[3]:パー")
      my_hand = gets.to_i
      if my_hand == 1 || my_hand == 2 || my_hand == 3
        my_hand -= 1
      else
        puts("数値が正しくありません")
        hand
      end
  end
end

class Enemy
  def hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
      enemy_hand = rand(3)
  end
end

class Janken
  def pon(my_hand, enemy_hand)
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる

    #勝敗の処理
    match = (my_hand - enemy_hand + 3) % 3

    if match == 0
      result = "あいこ（´・ω・｀）"

    elsif match == 1
      result = "負け m9(^Д^)"

    else match == 2
      result = "勝ち (｀・ω・´) "
    end

    #相手が出したものと勝敗の表示
    #ランダム生成されたenemy_handの数字に合わせて変数を設定しグーチョキパーを代入する

    case enemy_hand
    when 0
      com_hand = "グー"
    when 1
      com_hand = "チョキ"
    else
      com_hand = "パー"
    end
    puts "相手の手は#{com_hand}です。結果は#{result}"
    #あいこだった時の処理の記述
    if result == "あいこ（´・ω・｀）"
      return yobidashi
    end

  end
end

def yobidashi
  player = Player.new
  enemy = Enemy.new
  janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
  janken.pon(player.hand, enemy.hand)
end

yobidashi
