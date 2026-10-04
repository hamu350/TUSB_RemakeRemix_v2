#> skill:job_skill/white_mage/lullaby/

playsound entity.item.pickup master @a[distance=..16] ~ ~ ~ 1 2 0

execute as @a[distance=..15] at @s run function skill:job_skill/white_mage/lullaby/apply
