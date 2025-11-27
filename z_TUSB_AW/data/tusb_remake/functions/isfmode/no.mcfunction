#> tusb_remake:isfmode/no
# ハードコア拒否ぃ

schedule clear tusb_remake:isfmode/start
tellraw @a {"text":"トカルトモードへの移行を止めました","color":"light_purple","bold":true}
playsound minecraft:entity.sheep.ambient master @a ~ ~ ~ 1.0 2 0.0
scoreboard players set @s isfmode 0