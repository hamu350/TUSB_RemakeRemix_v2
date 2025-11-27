#> time_limit:clear

# すべての島を攻略しボスを倒したものに贈るもの。

title @a title {"text":"全島攻略おめでとう!","color":"gold"}
title @a subtitle {"text":"You completed TUSB TimeLimit Edition!","color":"aqua"}
playsound entity.player.levelup player @a
playsound block.portal.trigger block @a ~ ~ ~ 1 2

# タイマーストップ
scoreboard players set Start Game 2