#> tusb_remake:enemy/skill/game_master/pale_rider/magic
# ペイルライダーのスキル

# me
    me §2§k§r§2ペストクロップ§k§r
# tellraw
    execute as @a[distance=..60,nbt={ActiveEffects:[{Id:19}]}] at @s run tellraw @s {"translate": "§4本当のペストクロップの味はどうだい？"}
# damage
    # 全貫通2048dmg(即死)
        data modify storage score_damage: Argument set value {Damage:2048,EPF:0,BypassArmor:true,BypassResistance:true,Type:"None",DisableParticle:true,DeathCause: '[{"translate":"%1$sは%2$sによって%3$sしまった。","with":[{"selector":"@s"},{"selector":"@e[tag=GM,sort=nearest,limit=1]"},{"translate":"命を刈り取られて","color":"#f73626","bold":true}]}]'}
    # attack
        execute as @a[distance=..60,nbt={ActiveEffects:[{Id:19}]}] run function score_damage:api/attack
# sound
    playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1.5 2 0