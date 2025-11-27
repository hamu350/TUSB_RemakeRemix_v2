#> time_limit:boss/newstar_king/skill/rollback_trap/change_arrow_to_trap

# 矢をトラップに置き換えます
summon armor_stand ~ ~-0.7 ~ {NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,PortalCooldown:1200,Tags:["rollback_trap","TypeChecked","CooldownRequired","BossEnemy"],ArmorItems:[{},{},{},{id:"minecraft:beacon",Count:1b}]}
# arrow kill
kill @s
# トラップ作動するかどうかはtickから