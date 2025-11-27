#> tusb_remake:sign_event/hello_work/knight
# 剣士の説明
### Copyright © 2022 赤石愛

particle minecraft:happy_villager ~ ~ ~ 1 1 1 0 100 force
playsound minecraft:block.anvil.use master @a[distance=..10] ~ ~ ~ 0.5 2 0
tellraw @s [{"text":""},{"text":"[剣士]\n","bold":true},{"text":" 剣の扱いに優れ"},{"text":"高い防御性能を誇る","color":"dark_aqua","bold":true},{"text":"、近接戦闘のエキスパート。"}]
