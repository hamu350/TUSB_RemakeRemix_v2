#> time_limit:boss/newstar_king/boss_kill

# healthスコアが0になったらkillします
kill @e[type=zombie,tag=NewStar_King]
# 深淵ノ王のデータを変えます(無敵化解除)
data modify entity @e[type=zombie,tag=Abyss_King,limit=1] Invulnerable set value 0
tag @e[type=zombie,tag=Abyss_King,limit=1] add Enemy
effect clear @e[type=zombie,tag=Abyss_King] resistance
effect give @e[type=zombie,tag=Abyss_King] resistance 1000000 3

# msg
title @a title {"text":"時空の歪みが戻った気がする？！","color":"aqua"}