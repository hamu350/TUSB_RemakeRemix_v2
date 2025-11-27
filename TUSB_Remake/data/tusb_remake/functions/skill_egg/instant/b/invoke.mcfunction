#> tusb_remake:skill_egg/instant/b/invoke
# サファイアスキル発動
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard players operation @s ActivatedSkill = @s InstantSkillB
scoreboard players operation @s MPConsumption = @s InstantCostB

tellraw @s[scores={ActivatedSkill=..0}] {"text":"スキルを設定していなかった！","bold":true,"color":"yellow"}
execute if entity @s[scores={ActivatedSkill=..0}] run playsound block.fire.extinguish master @s ~ ~ ~ 0.5 2
scoreboard players reset @s[scores={ActivatedSkill=..0}] ActivatedSkill

### MPチェック
function tusb_remake:skill/check_mp/

### ここでActivatedSkillに合わせてスキルを実行
function tusb_remake:skill_egg/instant/fork

data modify entity @e[distance=..1,tag=SkillEgg,tag=Instant,tag=Sapphire,limit=1] Health set value 0f
