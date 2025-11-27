#> time_limit:player/trigger/sneak
#
#> remakeのスニーク処理はよくわからんので新設
#
#

#> スニーク頻度
execute if score @s SneakingTime matches 1 run scoreboard players add @s SneakFrequency 10

#> スニーク状態取得
scoreboard players set _ _ 2
scoreboard players operation @s SneakingTime *= _ _
scoreboard players set _ _ 4
scoreboard players operation @s SneakingTime %= _ _