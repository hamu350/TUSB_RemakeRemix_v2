#> time_limit:player/trigger/sneak_frequency
#
#> スニーク頻度
#
#> スニークすると+10 毎Tick-1

#> 設定表示
execute if score @s SneakFrequency matches 20.. run function time_limit:login/show_menu
execute if score @s SneakFrequency matches 20.. run scoreboard players set @s SneakFrequency 1

scoreboard players remove @s SneakFrequency 1