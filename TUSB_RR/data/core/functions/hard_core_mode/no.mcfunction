#> core:hard_core_mode/no
# ハードコア拒否ぃ

schedule clear core:hard_core_mode/start
tellraw @a {"text":"ハードコアモードへの移行を止めました","color":"light_purple","bold":true}
playsound minecraft:entity.sheep.ambient master @a ~ ~ ~ 1.0 2 0.0
scoreboard players set @s hcmode 0
