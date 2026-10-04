#> skill:job_skill/knight/phalanx/sneaking

# スニーク時の処理

# まず自身につける
function skill:job_skill/knight/phalanx/apply

# その後周囲につける
execute as @a[distance=..15] at @s run function skill:job_skill/knight/phalanx/apply_sneak