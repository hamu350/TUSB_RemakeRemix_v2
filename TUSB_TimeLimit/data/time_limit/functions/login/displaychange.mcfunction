#> time_limit:login/displaychange
#
#> 人数を取得して表示を変える

execute store result score _ _ if entity @a
execute if score _ _ matches 16.. run scoreboard objectives setdisplay sidebar HP
execute if score _ _ matches 16.. run scoreboard objectives setdisplay list MP
execute if score _ _ matches 16.. run scoreboard objectives setdisplay belowName Level
execute if score _ _ matches 0..15 run scoreboard objectives setdisplay sidebar MP
execute if score _ _ matches 0..15 run scoreboard objectives setdisplay list Level
execute if score _ _ matches 0..15 run scoreboard objectives setdisplay belowName HP