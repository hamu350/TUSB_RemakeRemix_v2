#> skill:job/ninja/taisosinnyo/act
#
# 
#
# @within function skill:job/ninja/taisosinnyo/apply

execute at @e[tag=taisosinnyo] as @e[distance=..12,type=#lib:mob] at @s run function skill:job/ninja/taisosinnyo/enemy

execute if entity @e[tag=taisosinnyo] run schedule function skill:job/ninja/taisosinnyo/act 10t
