#> tusb_remake:skill/summoner/summon_ender_chest/check
#
# 使用可能かどうか確かめます
#
# @within function tusb_remake:skill/summoner/summon_ender_chest/spell

execute if entity @e[tag=CantUseEnderChestAreaSmall,distance=..8] run scoreboard players set @s ActivatedSkill -1
execute if entity @e[tag=CantUseEnderChestAreaMedium,distance=..16] run scoreboard players set @s ActivatedSkill -1
execute if entity @e[tag=CantUseEnderChestAreaLarge,distance=..32] run scoreboard players set @s ActivatedSkill -1

execute if score @s ActivatedSkill matches -1 run tellraw @s {"text":"§4エンダーチェスト使用不可エリアです"}