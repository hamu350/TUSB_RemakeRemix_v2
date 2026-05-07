#> tusb_remake:enemy/command_creeper/teleport

execute as @p run me コマンドクリーパーが爆発した！
title @a[distance=..16] subtitle "/spreadplayers ~ ~ 0 200 @a[distance=..16]"
title @a[distance=..16] title "どこかにワープした！"

spreadplayers ~ ~ 0 200 false @a[distance=..16]

fill ~ ~ ~ ~ ~ ~ air replace command_block