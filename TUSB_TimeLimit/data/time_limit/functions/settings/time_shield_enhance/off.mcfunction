#> time_limit:settings/time_shield_enhance/off

# 時送りの盾強化offスコア
scoreboard players set Time_Shield Option 0
# 設定変更しました音
playsound block.lava.extinguish block @s ~ ~ ~ 1 1
kill @e[type=villager,tag=Shield]
# msg
tellraw @s [{"text":"時送りの盾強化をオフにしました。"}]