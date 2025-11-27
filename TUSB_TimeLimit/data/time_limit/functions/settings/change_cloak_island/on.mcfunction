#> time_limit:settings/change_cloak_island/on

# 時計島仕様変更onスコア
scoreboard players set Cloak_Island Option 1
# 設定変更しました音
playsound block.note_block.bell block @s ~ ~ ~ 1 1
data modify storage tusb_remake: settings.force_night set value false
time set day
gamerule doDaylightCycle true
# msg
tellraw @s [{"text":"時計島仕様変更をオンにしました。"}]