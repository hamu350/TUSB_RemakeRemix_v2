#> core:tocult_mode/no
# ハードコア拒否ぃ

schedule clear core:tocult_mode/start
tellraw @a {"text":"トカルトモードへの移行を止めました","color":"light_purple","bold":true}
playsound minecraft:entity.sheep.ambient master @a ~ ~ ~ 1.0 2 0.0
scoreboard players set @s isfmode 0
