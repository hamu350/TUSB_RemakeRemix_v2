#> skill:job_skill/ninja/choyaku/sneak
# 跳躍を発動(222X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 剣を装備している＆モードが真空斬り
### モンスターを見ている＆スニーク時間が短い時だけ
execute if score @s CurrentMode matches 2220..2229 if entity @s[nbt={OnGround:true}] run function skill:job_skill/ninja/choyaku/triggered
scoreboard players reset @s SneakTime

advancement revoke @s only skill:trigger/ninja/choyaku/sneak
