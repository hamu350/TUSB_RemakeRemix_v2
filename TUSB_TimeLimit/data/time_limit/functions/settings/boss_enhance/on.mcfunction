#> time_limit:settings/boss_enhance/on

# ボス強化onスコア
scoreboard players set Enhance_Boss Option 1
# 設定変更しました音
playsound block.note_block.bell block @s ~ ~ ~ 1 1
# msg
tellraw @s [{"text":"ボス強化をオンにしました。"}]