#> tusb_remake:skill/ninja/choyaku/sneak
# 跳躍を発動(222X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 剣を装備している＆モードが真空斬り
### モンスターを見ている＆スニーク時間が短い時だけ
execute if score @s CurrentMode matches 2260..2269 if entity @s[nbt={OnGround:true}] run function tusb_remake:skill/ninja/seiyou/triggered
execute if score @s SneakTime matches 1.. if score @s CurrentMode matches 2260..2269 if entity @s[nbt={OnGround:true}] run playsound entity.ender_dragon.flap master @a[distance=..16] ~ ~ ~ 8 0.8 0
execute if score @s SneakTime matches 1.. if score @s CurrentMode matches 2260..2269 if entity @s[nbt={OnGround:true}] run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1.0 0.75 0.0
scoreboard players reset @s SneakTime



advancement revoke @s only tusb_remake:skill/ninja/seiyou/sneak
