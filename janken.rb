
class Player
    def hand
        while true
            puts "数字を入力してください。"
            puts "0:グー", "1:チョキ", "2:パー"
            pl_hand = gets.to_i
            #puts pl_hand
            if  pl_hand == 0 || pl_hand == 1 || pl_hand == 2
                return pl_hand
            else 
                puts "再入力お願いします。"
            end
        end
    end
end
class Enemy
    def hand
        #cho = ["グー", "チョキ", "パー"]
        cho2 = [0,1,2]
        ene_hand = cho2.sample
    end
end
class Janken
    def pon(pl_hand, ene_hand)
        while true
            te = ["グー", "チョキ", "パー"]
            judge = (pl_hand - ene_hand + 3) % 3
            #puts judge
            if judge == 2
                puts "相手の手は#{te[ene_hand]}です。あなたの勝ちです。"
                return false
            elsif judge == 1
                puts "相手の手は#{te[ene_hand]}です。あなたの負けです。"
                return false
            else
                puts "相手の手は#{te[ene_hand]}です。あいこです。"
                puts "もう一度！"
                return true
            end
        end
    end
end
player = Player.new
enemy = Enemy.new
janken = Janken.new
game = true
while game
    game = janken.pon(player.hand, enemy.hand)
end


