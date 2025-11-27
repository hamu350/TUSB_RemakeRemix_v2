#> tusb_remake:gimmic/clock/half_tick
#
# 時計島がおかしくなってる間の演出
#
# なんかいいの思いついたら書き足してください。

execute as @a at @s run playsound block.comparator.click block @s ~ ~100 ~ 0.5 1 0.5
execute as @a[limit=1,sort=nearest] at @e[tag=Enemy,limit=1,sort=random] run execute summon minecraft:lightning_bolt run teleport @s ~ 3000 ~
worldborder warning distance 20000

# 止まるまで繰り返し
execute unless score Cloak Changed_Form matches 0 in minecraft:overworld run schedule function tusb_remake:gimmic/clock/half_tick 10t