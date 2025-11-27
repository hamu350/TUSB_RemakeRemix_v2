#> time_limit:settings/boss_enhance/off

# ボス強化offスコア
scoreboard players set Enhance_Boss Option 0
# 設定変更しました音
playsound block.lava.extinguish block @s ~ ~ ~ 1 1
# msg
tellraw @s [{"text":"ボス強化をオフにしました。"}]