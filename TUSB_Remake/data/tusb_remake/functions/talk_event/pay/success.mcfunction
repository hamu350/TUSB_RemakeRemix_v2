#> tusb_remake:talk_event/pay/success
# エメラルドの支払いできたとき
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute if score _ TUSB matches 2048.. run clear @s minecraft:emerald 2048
execute if score _ TUSB matches 2048.. run scoreboard players remove _ TUSB 2048

execute if score _ TUSB matches 1024.. run clear @s minecraft:emerald 1024
execute if score _ TUSB matches 1024.. run scoreboard players remove _ TUSB 1024

execute if score _ TUSB matches 512.. run clear @s minecraft:emerald 512
execute if score _ TUSB matches 512.. run scoreboard players remove _ TUSB 512

execute if score _ TUSB matches 256.. run clear @s minecraft:emerald 256
execute if score _ TUSB matches 256.. run scoreboard players remove _ TUSB 256

execute if score _ TUSB matches 128.. run clear @s minecraft:emerald 128
execute if score _ TUSB matches 128.. run scoreboard players remove _ TUSB 128

execute if score _ TUSB matches 64.. run clear @s minecraft:emerald 64
execute if score _ TUSB matches 64.. run scoreboard players remove _ TUSB 64

execute if score _ TUSB matches 32.. run clear @s minecraft:emerald 32
execute if score _ TUSB matches 32.. run scoreboard players remove _ TUSB 32

execute if score _ TUSB matches 16.. run clear @s minecraft:emerald 16
execute if score _ TUSB matches 16.. run scoreboard players remove _ TUSB 16

execute if score _ TUSB matches 8.. run clear @s minecraft:emerald 8
execute if score _ TUSB matches 8.. run scoreboard players remove _ TUSB 8

execute if score _ TUSB matches 4.. run clear @s minecraft:emerald 4
execute if score _ TUSB matches 4.. run scoreboard players remove _ TUSB 4

execute if score _ TUSB matches 2.. run clear @s minecraft:emerald 2
execute if score _ TUSB matches 2.. run scoreboard players remove _ TUSB 2

execute if score _ TUSB matches 1.. run clear @s minecraft:emerald 1
execute if score _ TUSB matches 1.. run scoreboard players remove _ TUSB 1

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5
