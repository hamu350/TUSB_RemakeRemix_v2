#> time_limit:settings/normal
# 

# サウンド
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2
# 難易度用スコアを変更
scoreboard players set Difficulty Option 2
# 初期時間80min
scoreboard players set Time Timer 96000
scoreboard players set Max_Time Timer 96000
# 攻略時追加時間40min
# msg
tellraw @s [{"text":"難易度をnormalに変更しました。"}]