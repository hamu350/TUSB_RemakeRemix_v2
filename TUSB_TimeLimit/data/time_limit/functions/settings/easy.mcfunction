#> time_limit:settings/easy
# 

# サウンド
playsound minecraft:entity.villager.celebrate neutral @s ~ ~ ~ 1 1
# 難易度用スコアを変更
scoreboard players set Difficulty Option 1
# 初期時間2h
scoreboard players set Time Timer 144000
scoreboard players set Max_Time Timer 144000
# 攻略時追加時間1h
# msg
tellraw @s [{"text":"難易度をeasyに変更しました。"}]