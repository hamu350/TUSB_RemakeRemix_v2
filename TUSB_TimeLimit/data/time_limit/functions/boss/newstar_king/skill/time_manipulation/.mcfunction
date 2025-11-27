#> time_limit:boss/newstar_king/skill/time_manipulation/

# タイム・メニピュレーション
# 眷属召喚
# ms くっそ早くて脆い、すぐ殺さないと猛烈なデバフを周囲にばらまく、死の宣告とか? 確率低めね
# sec 2体騎乗のmob、拡散クロスボウとか
# min ランダムな数字ですぽーんする、数字によって能力値が変化 増えれば増えるほど体力、攻撃力が上がりデバフを付与するように
# hour 高速で走りデバフをあたりに撒き散らす
# day 2体騎乗スケルトン 下:ノーマルスケ、体力高い 上: 特殊矢もちのウィザスケ
# week 7秒後に大爆発する tag付きAECのdurationとかが0になったら召喚とか?
# month 月headをつけてるmob、倒すと跳躍力が一時的に上がって月まで届きそう(比喩)になる
# year 時送りの盾のレプリカを所持(v12Rの強化値)、それ以外の眷属キャラをスキルとして召喚する？

# 最初っからスポナーで出そうとすると楽ではあるけどコードが長くなりすぎて視認性がクソになるんで
# 個別呼び出しfunctionで対応することに、結局はスポナー出すんだけどね、、
# msだけ2体

# 1~15の乱数を取得
data modify storage math: in set value [1,15]
function #math:dice
# 乱数結果を代入する
execute store result score _ TUSB run data get storage math: out.sum

# 結果に応じてモンスター出す
execute if score _ TUSB matches 1..2 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/day
execute if score _ TUSB matches 3..4 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/hour
execute if score _ TUSB matches 5 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/micro_second
execute if score _ TUSB matches 6..7 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/minute
execute if score _ TUSB matches 8..9 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/month
execute if score _ TUSB matches 10..11 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/second
execute if score _ TUSB matches 12..13 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/week
execute if score _ TUSB matches 14..15 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/year

# 2回目

# 1~15の乱数を取得
data modify storage math: in set value [1,15]
function #math:dice
# 乱数結果を代入する
execute store result score _ TUSB run data get storage math: out.sum

# 結果に応じてモンスター出す
execute if score _ TUSB matches 1..2 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/day
execute if score _ TUSB matches 3..4 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/hour
execute if score _ TUSB matches 5 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/micro_second
execute if score _ TUSB matches 6..7 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/minute
execute if score _ TUSB matches 8..9 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/month
execute if score _ TUSB matches 10..11 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/second
execute if score _ TUSB matches 12..13 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/week
execute if score _ TUSB matches 14..15 run function time_limit:boss/newstar_king/skill/time_manipulation/god_messenger/year

# playsound

playsound item.trident.return master @a[distance=..100]