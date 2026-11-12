#> skill:job/black_mage/lightning_shower/damage
#
# 
#
# @within function skill:job/black_mage/lightning_shower/apply

function score_damage:api/attack
execute as @a[distance=..5] run function skill:job/black_mage/lightning_shower/player
