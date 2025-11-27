#> tusb_remake:skill/summoner/summon_balloon/
# 風船を召喚(6070)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

summon minecraft:arrow ~ ~0.1 ~ {Silent:true,life:1140s,Tags:[YouCanFly,TypeChecked],Passengers:[{id:"minecraft:chicken",Invulnerable:true,Silent:true,ActiveEffects:[{Id:25,Duration:360,Amplifier:7b,ShowParticles:false},{Id:14,Duration:2147483647,Amplifier:127b,ShowParticles:false}],Team:NoCollision,Tags:[FloatingRequired,SystemEntity,TypeChecked],Passengers:[{id:"minecraft:armor_stand",Invisible:true,Tags:[FloatingRequired,TypeChecked],Passengers:[{id:"minecraft:armor_stand",Invisible:true,Tags:[FloatingRequired,TypeChecked],Passengers:[{id:"minecraft:armor_stand",Invisible:true,Tags:[FloatingRequired,TypeChecked],Passengers:[{id:"minecraft:armor_stand",Invisible:true,Tags:[FloatingRequired,TypeChecked],Passengers:[{id:"minecraft:ghast",NoAI:true,Silent:true,Invulnerable:true,Tags:[RidingRequired,TypeChecked]}]}]}]}]},{id:"minecraft:minecart",CustomName:'"熱気球"',CustomNameVisible:true,FallDistance:-10000000f,Tags:[FloatingRequired,TypeChecked],CustomDisplayTile:true,DisplayState:{Name:"minecraft:campfire",Properties:{lit:"true"}},DisplayOffset:80}]}]}

### サモンバルーンの演出を有効化
execute in minecraft:overworld run schedule function tusb_remake:skill/summoner/summon_balloon/schedule/ 1t
