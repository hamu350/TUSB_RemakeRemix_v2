#> mob_manager:gimmic/command_creeper/teleport

title @p[distance=..16] subtitle "/spreadplayers ~ ~ 0 200 @a[distance=..16]"
title @p[distance=..16] title "どこかにワープした！"

spreadplayers ~ ~ 0 200 false @p[distance=..16]

fill ~ ~ ~ ~ ~ ~ air replace command_block