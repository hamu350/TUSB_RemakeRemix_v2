#> time_limit:time_add/easy

# タイム増やすよ(1h)
scoreboard players add Time Timer 72000
scoreboard players add Max_Time Timer 72000
# msg
tellraw @a [{"text": "残り時間が1時間伸びた!","color":"aqua","bold":true}]