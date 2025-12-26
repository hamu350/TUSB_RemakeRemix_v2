#> tusb_remake:enemy/skill/game_master/6/6.solo
#
# 
#
# @within function tusb_remake:enemy/skill/game_master/6/6

# damage
    # 全貫通
        data modify storage score_damage: Argument set value {Damage:0,EPF:0,BypassArmor:true,BypassResistance:true,Type:"None",DisableParticle:true}
    # damage = HP*0.8
        execute at @e[limit=1,tag=GM] as @p[distance=..60] store result storage score_damage: Argument.Damage double 0.8 run data get entity @s Health
    # attack
        execute at @e[limit=1,tag=GM] as @p[distance=..60] run function score_damage:api/attack