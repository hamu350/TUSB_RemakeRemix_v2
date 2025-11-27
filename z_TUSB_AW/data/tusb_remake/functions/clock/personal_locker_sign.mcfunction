#> tusb_remake:clock/personal_locker_sign
# tick処理

particle enchant ~ ~ ~ 0 0 0 0.5 5

execute unless block ~ ~ ~ ender_chest run playsound block.glass.break block @a[distance=..16]
execute unless block ~ ~ ~ ender_chest run playsound block.beacon.deactivate block @a[distance=..16]
execute unless block ~ ~ ~ ender_chest run kill @s