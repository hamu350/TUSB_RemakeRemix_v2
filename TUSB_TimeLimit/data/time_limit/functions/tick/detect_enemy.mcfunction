#> time_limit:tick/detect_enemy


# まず盾付与function実行されたよタグを付ける
# 多分これをつけないと負荷重くなると思うんだよねしらんけど
tag @s add ShieldTried

# 時送りの盾を検知するために敵を判定する
# ラスボスはつけさせない
execute if entity @s[tag=Enemy,tag=!NewStar_King] run function time_limit:tick/replace_mob_data

# タグないなら盾付与のfunctionには入らせない