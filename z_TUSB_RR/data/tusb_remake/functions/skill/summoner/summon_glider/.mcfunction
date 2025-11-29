#> tusb_remake:skill/summoner/summon_glider/
# グライダーを召喚(6080)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

summon minecraft:arrow ~ ~0.1 ~ {Silent:true,life:1140s,Tags:[YouCanFly,TypeChecked],Passengers:[{id:"minecraft:chicken",Invulnerable:false,Silent:true,ActiveEffects:[{Id:25,Duration:80,Amplifier:7b,ShowParticles:false},{Id:11,Duration:80,Amplifier:4b,ShowParticles:false},{Id:7,Duration:200,Amplifier:7b,ShowParticles:false},{Id:14,Duration:2147483647,Amplifier:127b,ShowParticles:false}],Team:NoCollision,Tags:[FloatingRequired,SystemEntity,TypeChecked],DeathLootTable:"minecraft:empty",Passengers:[{id:"minecraft:phantom",Invulnerable:false,NoAI:true,Team:NoCollision,Tags:[FloatingRequired,SystemEntity,Glider,TypeChecked],PortalCooldown:100,ActiveEffects:[{Id:12,Duration:2147483647,Amplifier:0b,ShowParticles:false}],Passengers:[{id:"minecraft:minecart",CustomName:'"グライダー"',CustomNameVisible:true,FallDistance:-10000000f,Tags:[FloatingRequired,TypeChecked,GliderCart]}]}]}]}

### サモンバルーンの演出を有効化
execute in minecraft:overworld run schedule function tusb_remake:skill/summoner/summon_balloon/schedule/ 1t

### グライダーの操作を有効化
execute in minecraft:overworld run schedule function tusb_remake:skill/summoner/summon_glider/schedule/ 1t
