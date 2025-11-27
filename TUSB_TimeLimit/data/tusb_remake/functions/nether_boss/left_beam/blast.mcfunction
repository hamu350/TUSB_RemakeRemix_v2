#> tusb_remake:nether_boss/left_beam/blast
# 左目からのビームの爆発
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

gamerule mobGriefing false
execute if score Difficulty Option matches 0..3 run execute as @e[tag=LeftEyeBlast] at @s positioned ~ ~3.5 ~ run summon minecraft:creeper ~ ~ ~ {Fuse:0s,ExplosionRadius:3b,Invulnerable:true,DeathTime:19s,CustomName:'"ドラゴンゲイズ"'}
execute if score Difficulty Option matches 4 run execute as @e[tag=LeftEyeBlast] at @s positioned ~ ~3.5 ~ run summon minecraft:creeper ~ ~ ~ {Fuse:0s,ExplosionRadius:5b,powered:1b,Invulnerable:true,DeathTime:19s,CustomName:'"ドラゴンゲイズ"'}
