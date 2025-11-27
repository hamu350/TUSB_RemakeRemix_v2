#> time_limit:boss/newstar_king/skill/time_realization/version/1.17/attack/coal

# 一定周期で周囲に炎上ダメージ

# このfunctionに入るたびにスコア加算とparticleを出す
# スコアが一定以上になったらダメージ


execute if score @s TUSB matches 20 run function time_limit:boss/newstar_king/skill/time_realization/version/1.17/attack/coal_dmg


execute at @e run particle lava ~ ~ ~ 0 0 0 0.1 10 normal @s
scoreboard players add @e TUSB 1

# これ専用のボススコアボード作ってあげないと、deadしたときにスコアボードの書き換えが困難になりそう