#> tusb_remake:skill/black_mage/thunder_bolt/ready
# サンダーボルトの範囲をテスト
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

summon minecraft:arrow ~ ~ ~ {Fire:20s,life:1190s,damage:0d,Tags:[ThunderBolt,SystemEntity,TypeChecked]}
scoreboard players operation @e[distance=0,type=arrow,tag=ThunderBolt,nbt={Fire:20s},limit=1] ActivatedSkill = @s ActivatedSkill
execute store result score _ TUSB run time query gametime
execute store result score @e[distance=0,type=arrow,tag=ThunderBolt,nbt={Fire:20s},limit=1] TUSB run scoreboard players add _ TUSB 2

execute in minecraft:overworld run schedule function tusb_remake:skill/black_mage/thunder_bolt/schedule/ 2t
