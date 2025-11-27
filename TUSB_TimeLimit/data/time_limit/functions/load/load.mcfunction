#> time_limit:load/load
# load時に実行されるコマンド群

# random tick変更
gamerule randomTickSpeed 30

# 初回ロードかどうかをチェックする(最後に実行)
scoreboard objectives add loaded dummy
execute unless score loaded loaded matches 1 run function time_limit:load/load_once
# debug用
#function time_limit:load/load_once
#scoreboard players set Start Game 0
