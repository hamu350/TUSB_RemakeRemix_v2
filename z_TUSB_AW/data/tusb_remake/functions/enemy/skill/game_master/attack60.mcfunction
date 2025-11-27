#> tusb_remake:enemy/skill/game_master/attack60
#
# 
#

# tellraw
    tellraw @s {"translate": "君はUNOもできないのかい？"}
# damage
    # 全貫通
        data modify storage score_damage: Argument set value {Damage:0,EPF:0,BypassArmor:true,BypassResistance:true,Type:"None",DisableParticle:true}
    # damage = HP*0.6
        execute store result storage score_damage: Argument.Damage double 0.6 run data get entity @s Health
    # attack
        function score_damage:api/attack