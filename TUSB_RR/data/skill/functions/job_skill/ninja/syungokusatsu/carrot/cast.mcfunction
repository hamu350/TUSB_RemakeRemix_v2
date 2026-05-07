#> \skill:job_skill/ninja/syungokusatsu/carrot/cast
# ジオクラッシュ発動


playsound entity.ghast.hurt master @a[distance=..32] ~ ~ ~ 2 2 0.1

execute at @s as @e[tag=Enemy,distance=..15] run tag @s add Freeze
execute at @s as @e[tag=Enemy,distance=..15] run data merge entity @s {NoAI:true,PortalCooldown:20}