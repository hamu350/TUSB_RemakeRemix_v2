#> tusb_remake:event/rank/tle_addition/acceralator

# この予感が発動すると時計島のタイマーが起動する

me 「時計が鳴り響いている！」

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