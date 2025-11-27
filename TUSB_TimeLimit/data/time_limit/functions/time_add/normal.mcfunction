#> time_limit:time_add/normal

# タイム増やすよ(30min)
scoreboard players add Time Timer 48000
scoreboard players add Max_Time Timer 48000
# msg
tellraw @a [{"text": "残り時間が40分伸びた!","color":"aqua","bold":true}]