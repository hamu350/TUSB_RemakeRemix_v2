#> tusb_remake:skill/summoner/fill/adventure
# フィールを詠唱(620X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"text":"アドベンチャーエリアでは使えません。","color":"dark_red","bold":true}

scoreboard players operation @s MP += @s MPConsumption
scoreboard players set _ ActivatedSkill 0
