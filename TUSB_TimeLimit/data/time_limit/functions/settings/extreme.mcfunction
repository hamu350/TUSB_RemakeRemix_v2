#> time_limit:settings/extreme
# 

# サウンド
playsound minecraft:entity.ender_dragon.growl hostile @s ~ ~ ~ 1 2
# 難易度用スコアを変更
scoreboard players set Difficulty Option 4
# 初期時間40min
scoreboard players set Time Timer 48000
scoreboard players set Max_Time Timer 48000
# 攻略時追加時間20min
# msg
tellraw @s [{"text":"難易度をextremeに変更しました。"}]