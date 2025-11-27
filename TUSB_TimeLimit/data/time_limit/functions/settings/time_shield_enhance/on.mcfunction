#> time_limit:settings/time_shield_enhance/on

# 時送りの盾強化onスコア
scoreboard players set Time_Shield Option 1
# 設定変更しました音
playsound block.note_block.bell block @s ~ ~ ~ 1 1
kill @e[type=villager,tag=Shield]
summon villager -52 40.5 16 {Tags:["Shield"],Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Rotation:[-180F,0F],CustomName:'{"text":"時をかける村人","color":"aqua","bold":true}',VillagerData:{level:99,profession:"minecraft:none"},Offers:{}}
# msg
tellraw @s [{"text":"時送りの盾強化をオンにしました。"}]