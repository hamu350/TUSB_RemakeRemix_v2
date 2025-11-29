#> tusb_remake:enemy/skill/game_master/6/6.multi
#
# 
#
# @within function tusb_remake:enemy/skill/game_master/6/6

# damage
    # 全貫通2048dmg(即死)
        data modify storage score_damage: Argument set value {Damage:2048,EPF:0,BypassArmor:true,BypassResistance:true,Type:"None",DisableParticle:true,DeathCause: '[{"translate":"%1$sは%2$sによって%3$sしまった。","with":[{"selector":"@s"},{"selector":"@e[tag=GM,sort=nearest,limit=1]"},{"translate":"命を弄ばれて","color":"#2C00A6","bold":true}]}]'}
    # attack
        execute at @e[limit=1,tag=GM] as @a[distance=..60,tag=GameMasterBattle,nbt={ActiveEffects:[{Id:19}]}] run function score_damage:api/attack