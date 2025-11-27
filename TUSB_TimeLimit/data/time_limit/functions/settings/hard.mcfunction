#> time_limit:settings/hard
# 

# サウンド
playsound minecraft:block.portal.trigger block @s ~ ~ ~ 1 2
# 難易度用スコアを変更
scoreboard players set Difficulty Option 3
# 初期時間40min
scoreboard players set Time Timer 48000
scoreboard players set Max_Time Timer 48000
# 攻略時追加時間20min
# msg
tellraw @s [{"text":"難易度をhardに変更しました。"}]