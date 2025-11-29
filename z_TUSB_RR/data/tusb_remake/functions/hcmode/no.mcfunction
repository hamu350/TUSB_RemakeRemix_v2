#> tusb_remake:hcmode/no
# ハードコア拒否ぃ

schedule clear tusb_remake:hcmode/start
tellraw @a {"text":"ハードコアモードへの移行を止めました","color":"light_purple","bold":true}
playsound minecraft:entity.sheep.ambient master @a ~ ~ ~ 1.0 2 0.0
scoreboard players set @s hcmode 0
