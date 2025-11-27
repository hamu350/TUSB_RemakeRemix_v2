#> time_limit:boss/newstar_king/skill/summon_blackhole/result

# blackholeの効果を与えます

# Boss_Fightingが消えてる?

# playsound
# 効果発動してるのがわかりやすいからね
playsound entity.enderman.teleport hostile @a[distance=..100] ~ ~ ~ 1 1
playsound minecraft:entity.wither.shoot hostile @a[distance=..100] ~ ~ ~ 0.25 2
# 引き寄せます
execute as @e[type=marker,tag=Blackhole] run tp @a[distance=..7,tag=Boss_Fighting] @s
# ダメージ与えます
# ダメージset
# 毎tickらしいっすお兄さん

# insta killになっている
data modify storage score_damage: Argument set value {Damage:2.00}
# 実行
execute as @a[distance=..1,tag=Boss_Fighting] run function score_damage:api/attack

# ぱーちくる
execute as @a[distance=..1,tag=Boss_Fighting] run effect give @s darkness 3 0
execute as @a[distance=..1,tag=Boss_Fighting] run effect give @s slowness 3 1

execute at @e[type=marker,tag=Blackhole] run function time_limit:boss/newstar_king/skill/summon_blackhole/particle/