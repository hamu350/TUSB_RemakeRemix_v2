#> tusb_remake:enemy/skill/infinity_boss/
# infinity_bossスキル

# 乱数を生成
function tusb_remake:random/update
scoreboard players set _ TUSB 6
scoreboard players operation @s Random %= _ TUSB

# ad
execute if score @s Random matches 0 run function tusb_remake:enemy/skill/infinity_boss/ad/
# devil
execute if score @s Random matches 1 run function tusb_remake:enemy/skill/infinity_boss/devil/
# isf
execute if score @s Random matches 2 run function tusb_remake:enemy/skill/infinity_boss/isf/
# neo
execute if score @s Random matches 3 run function tusb_remake:enemy/skill/infinity_boss/neo/
# sp
execute if score @s Random matches 4 run function tusb_remake:enemy/skill/infinity_boss/sp/
# tle
execute if score @s Random matches 5 run function tusb_remake:enemy/skill/infinity_boss/tle/


# 二周目

# 乱数を生成
function tusb_remake:random/update
scoreboard players set _ TUSB 6
scoreboard players operation @s Random %= _ TUSB

# ad
execute if score @s Random matches 0 run function tusb_remake:enemy/skill/infinity_boss/ad/
# devil
execute if score @s Random matches 1 run function tusb_remake:enemy/skill/infinity_boss/devil/
# isf
execute if score @s Random matches 2 run function tusb_remake:enemy/skill/infinity_boss/isf/
# neo
execute if score @s Random matches 3 run function tusb_remake:enemy/skill/infinity_boss/neo/
# sp
execute if score @s Random matches 4 run function tusb_remake:enemy/skill/infinity_boss/sp/
# tle
execute if score @s Random matches 5 run function tusb_remake:enemy/skill/infinity_boss/tle/

# 三周目

# 二周目

# 乱数を生成
function tusb_remake:random/update
scoreboard players set _ TUSB 6
scoreboard players operation @s Random %= _ TUSB

# ad
execute if score @s Random matches 0 run function tusb_remake:enemy/skill/infinity_boss/ad/
# devil
execute if score @s Random matches 1 run function tusb_remake:enemy/skill/infinity_boss/devil/
# isf
execute if score @s Random matches 2 run function tusb_remake:enemy/skill/infinity_boss/isf/
# neo
execute if score @s Random matches 3 run function tusb_remake:enemy/skill/infinity_boss/neo/
# sp
execute if score @s Random matches 4 run function tusb_remake:enemy/skill/infinity_boss/sp/
# tle
execute if score @s Random matches 5 run function tusb_remake:enemy/skill/infinity_boss/tle/
