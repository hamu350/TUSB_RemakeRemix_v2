#> tusb_remake:enemy/skill/shinsei/acceleration
#
#> 新星様のスキル
#
#> 時計島タイマーを起動させ時を加速させる
execute as @a at @s run playsound block.sculk_shrieker.shriek block @s ~ ~ ~ 1 1 1
me は§4§lタイムアクセラレーション§rを唱えた！

# タイマーセット
data modify storage tusb_remake: clock_ring_time set value 180
execute in minecraft:overworld run schedule function tusb_remake:gimmic/clock/ring 1t
# 演出
worldborder warning distance 20000
execute in minecraft:overworld run schedule function tusb_remake:gimmic/clock/half_tick 10t
# msg
tellraw @a [{"text":"時の流れがおかしくなった気がする！","bold": false,"color": "#FF2A2A"}]
tellraw @a [{"text":"すぐに時の乱れを止めないと...！","bold": false,"color": "#FF2A2A"}]

# 時計島タイマー起動！
scoreboard players set Cloak Changed_Form 1