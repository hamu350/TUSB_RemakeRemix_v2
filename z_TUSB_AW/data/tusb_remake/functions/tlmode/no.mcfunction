#> tusb_remake:tlmode/no
# ハードコア拒否ぃ

schedule clear tusb_remake:tlmode/start
tellraw @a {"text":"タイムリミットモードへの移行を止めました","color":"light_purple","bold":true}
playsound minecraft:entity.sheep.ambient master @a ~ ~ ~ 1.0 2 0.0
scoreboard players set @s tlmode 0