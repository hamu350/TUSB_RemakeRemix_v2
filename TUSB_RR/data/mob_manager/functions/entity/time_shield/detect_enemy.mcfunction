#> mob_manager:entity/time_shield/detect_enemy
#
#

# まず盾付与function実行されたよタグを付ける
tag @s add ShieldTried

# 時送りの盾を検知するために敵を判定する
# ラスボスはつけさせない
# ボスチームにもつけさせない
execute if entity @s[tag=Enemy,tag=!NewStar_King,team=!Boss] run function mob_manager:entity/time_shield/replace_mob_data
