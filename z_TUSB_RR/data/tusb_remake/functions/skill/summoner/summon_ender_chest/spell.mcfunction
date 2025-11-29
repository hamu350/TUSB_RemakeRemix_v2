#> tusb_remake:skill/summoner/summon_ender_chest/spell
# エンダーチェストを召喚(628X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
    scoreboard players operation @s ActivatedSkill = @s CurrentMode
    scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
    function tusb_remake:skill/check_mp/

# 使えるかチェック
    function tusb_remake:skill/summoner/summon_ender_chest/check

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 6280..6289 run function tusb_remake:skill/summoner/summon_ender_chest/cast
