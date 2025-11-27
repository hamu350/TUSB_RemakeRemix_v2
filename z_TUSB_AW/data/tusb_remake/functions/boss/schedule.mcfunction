#> tusb_remake:boss/schedule

execute store success storage tusb_remake: infinity_boss.live byte 1 if entity @e[limit=1,sort=nearest,type=wither_skeleton,tag=InfinityBoss]
schedule function tusb_remake:boss/schedule 1t
execute unless data storage tusb_remake: infinity_boss{live:1b} run schedule clear tusb_remake:boss/schedule
execute unless data storage tusb_remake: infinity_boss{live:1b} run function tusb_remake:boss/bossdefeat/
# ボスバー！
bossbar set infinity_boss players @a[tag=InfinityBossBattle]
execute store result bossbar infinity_boss value run data get entity @e[limit=1,sort=nearest,type=wither_skeleton,tag=InfinityBoss] AbsorptionAmount

execute as @e[type=wither_skeleton,tag=InfinityBoss] at @s unless entity @a[distance=..64,tag=InfinityBossBattle,gamemode=!spectator] run function tusb_remake:boss/bosswin/