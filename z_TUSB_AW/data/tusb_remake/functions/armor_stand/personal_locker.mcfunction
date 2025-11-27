#> tusb_remake:armor_stand/personal_locker

summon minecraft:firework_rocket ~ ~2 ~ {Life:1,LifeTime:1,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:0b,Explosions:[{Type:2b,Colors:[I;5271807]}]}}}}
playsound block.beacon.activate block @a[distance=..16] ~ ~ ~

execute if entity @s[tag=SignStand,y_rotation=0..45] run setblock ~ ~ ~ ender_chest[facing=south]
execute if entity @s[tag=SignStand,y_rotation=90..135] run setblock ~ ~ ~ ender_chest[facing=west]
execute if entity @s[tag=SignStand,y_rotation=180..225] run setblock ~ ~ ~ ender_chest[facing=north]
execute if entity @s[tag=SignStand,y_rotation=270..315] run setblock ~ ~ ~ ender_chest[facing=east]

execute align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:[SystemEntity,PersonalLocker,PersonalLockerSign]}

execute as @p run me 「新時代の個人ロッカーだ！」