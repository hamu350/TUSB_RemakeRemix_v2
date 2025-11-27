#> time_limit:boss/newstar_king/skill/inverse_gravity/result

# スキル効果発動
# インバース・グラヴィティー
# めっちゃデバフ+浮遊+MP減少

# デバーフ
effect give @s hunger 15 49
effect give @s instant_damage 1 4
effect give @s mining_fatigue 15 4
effect give @s nausea 15 4
effect give @s poison 15 2
effect give @s slowness 15 1
effect give @s weakness 15 4
effect give @s wither 15 2
# 浮遊
effect give @s levitation 5 4
# 継続浮遊はくっそ邪魔だけど少しならええやろの意
# MP減少
scoreboard players remove @s MP 25
# MP-にならない処理
execute as @s[scores={MP=..0}] run scoreboard players set @s MP 0