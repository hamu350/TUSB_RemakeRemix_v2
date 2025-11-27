#> time_limit:tick/cloak_gimmic

# 時計島の時計が止められてないときに動くギミック

# 昼夜が2分で動いちゃう
time add 19t
# 止めるまでなり続ける
execute as @a at @s run playsound minecraft:block.anvil.land block @s ~ ~100 ~ 0.5 1.414 0.05
# 時間も早く減らさないとね、乱れてるなら。
# tickごとにtimerを減らす
execute if score Time Timer matches 1.. run scoreboard players remove Time Timer 4
# tickごとに経過時間を増やす
execute if score Time Timer matches 1.. run scoreboard players add Time Spend_Time 4