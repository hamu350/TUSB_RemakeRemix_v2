#> time_limit:time_add/hard

# タイム増やすよ(15min)
scoreboard players add Time Timer 24000
scoreboard players add Max_Time Timer 24000
# msg
tellraw @a [{"text": "残り時間が20分伸びた!","color":"aqua","bold":true}]