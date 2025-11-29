#> tusb_remake:skill/archer/flare/
# 照明弾発動(301X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Flicker:true,Trail:true,Colors:[I;16752934],FadeColors:[I;16777215]},{Type:0b,Flicker:false,Trail:false,Colors:[I;16777215,16777215,16777215],FadeColors:[I;16752934]}]}}},Tags:[TypeChecked]}

effect give @a[distance=..30] minecraft:night_vision 60 0
effect clear @a[distance=..30] minecraft:blindness
