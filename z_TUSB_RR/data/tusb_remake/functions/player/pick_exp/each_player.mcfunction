#> tusb_remake:player/pick_exp/each_player
# EXP計算

scoreboard players operation @s TotalXp += _ ItemCount
scoreboard players operation @s ExpToLevel -= _ ItemCount

# Global: 取得した経験値を含んだワールド総経験値取得量
# @sTotal: 取得した経験値を含んだ自身の総経験値取得量(Bonusはまだ含まれない)

# @sTotal += ItemCount
# ExpToLevel -= ItemCount
# BonusXp = min((ItemCount × min((Global × 2 ÷ @sTotal - 1), 10) + @sTotal), Global) - @sTotal
# ExpToLevel -= BonusXp
# @sTotal += BonusXp
scoreboard players operation _ TUSB = $Global TotalXp
scoreboard players operation _ TUSB += _ TUSB
scoreboard players operation _ TUSB /= @s TotalXp
scoreboard players remove _ TUSB 1
execute if score _ TUSB matches 11.. run scoreboard players set _ TUSB 10
scoreboard players operation _ TUSB *= _ ItemCount
scoreboard players operation _ TUSB += @s TotalXp
scoreboard players operation _ TUSB < $Global TotalXp
scoreboard players operation _ TUSB -= @s TotalXp
scoreboard players operation @s ExpToLevel -= _ TUSB
scoreboard players operation @s TotalXp += _ TUSB

execute if score _ TUSB matches 0 run title @s actionbar {"translate":"+ %1$sEXP","color":"yellow","with":[{"score":{"name":"_","objective":"ItemCount"}}]}
execute unless score _ TUSB matches 0 run title @s actionbar {"translate":"+ %1$sEXP (+Bonus %2$sEXP)","color":"yellow","with":[{"score":{"name":"_","objective":"ItemCount"}},{"score":{"name":"_","objective":"TUSB"},"color":"white","bold":true}]}
