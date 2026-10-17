#> skill:job/knight/phalanx/sneaking

# スニーク時の処理

# まず自身につける
function skill:job/knight/phalanx/apply

# その後周囲につける
execute as @a[distance=..15] at @s run function skill:job/knight/phalanx/apply_sneak