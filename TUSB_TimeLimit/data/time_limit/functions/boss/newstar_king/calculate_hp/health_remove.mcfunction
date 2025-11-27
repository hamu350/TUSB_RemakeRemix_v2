#> time_limit:boss/newstar_king/calculate_hp/health_remove


# 最初に割合設定しないとバグると思う
# ボスの体力を減らします
# 102400から現在の体力を引いた値をhealthから引く？
# だから$Default_Health Boss_Health部には102400を入れてあげないとだめ
# 1024(mobの体力最大値) - 現在のボスの体力 = 与えたダメージ
scoreboard players operation $Default_Health Boss_Health -= $Current_Health Boss_Health
# 与えたダメージを5倍にする(prt20がついているため)
scoreboard players operation $Default_Health Boss_Health *= $5 Boss_x
# 耐性エフェクト分をさらに掛けます。
scoreboard players operation $Default_Health Boss_Health *= $5 Boss_x
# 与えたダメージをboss_healthから引きます
scoreboard players operation Health Boss_Health -= $Default_Health Boss_Health
# 割合確認してHP割合が変動してるかどうかをチェックする
# 現在のHPをtempに代入
scoreboard players operation $Temp Boss_Health = Health Boss_Health
# temp / 1割体力(あまりなし) = 現在のHP割合
scoreboard players operation $Temp Boss_Health /= $10percent Boss_Health
# percent_10は前に計算した割合が入っている、それより今代入したほうが小さい(削られている)なら割合変化functionを実行する
# なんか毎回形態チェンジしてる
# 君毎回動いてるね
# どうにかならんか?
execute if score $percent_10 Boss_x > $Temp Boss_Health run execute as @e[type=zombie,tag=NewStar_King,limit=1] at @s run function time_limit:boss/newstar_king/calculate_hp/percent_change
# function先はHP割合代入して形態チェンジを実行するとか?
# 計算したらHP回復しないと死んじゃうよね。
data modify entity @e[type=zombie,tag=NewStar_King,limit=1] Health set value 1024
# 102400に戻さないと計算ができないよ！
scoreboard players set $Default_Health Boss_Health 102400
# $Temp reset
#scoreboard players reset $Temp Boss_Health
