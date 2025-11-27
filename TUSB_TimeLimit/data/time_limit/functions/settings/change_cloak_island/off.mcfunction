#> time_limit:settings/change_cloak_island/off

# 時計島仕様変更offスコア
scoreboard players set Cloak_Island Option 1
# 設定変更しました音
playsound block.lava.extinguish block @s ~ ~ ~ 1 1
data modify storage tusb_remake: settings.force_night set value true
time set night
gamerule doDaylightCycle false
# msg
tellraw @s [{"text":"時計島仕様変更をオフにしました。"}]