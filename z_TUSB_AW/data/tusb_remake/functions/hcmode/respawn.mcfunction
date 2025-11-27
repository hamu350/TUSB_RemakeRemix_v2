#> tusb_remake:hcmode/respawn
# 初期地点に復活

execute in minecraft:overworld run tp @s -1910 116 -136
tellraw @s {"translate": "%1$sは復活した！","color": "gold","bold": true,"with":[{"selector": "@s"}]}
gamemode adventure @s
tag @s remove death
