#> mob_manager:gimmic/command_creeper/flying_pig

title @a[distance=..16] subtitle "/effect @e[distance=..16,type=zombified_piglin] levitation 1 10"
title @a[distance=..16] title "飛べない豚はただの豚"

effect give @e[distance=..16,type=zombified_piglin] levitation 10 1

fill ~ ~ ~ ~ ~ ~ air replace command_block