#> tusb_remake:portal/warp/overworld/extra/enter
# エクストラドメインに行くとき

title @s times 30 40 40
title @s subtitle {"text":"= EX:domain =","italic":true,"color":"white"}
title @s title [{"bold":true,"italic":true,"color":"white","text":""},{"color":"dark_red","text":"エ"},{"color":"red","text":"ク"},{"color":"gold","text":"ス"},{"color":"yellow","text":"ト"},{"color":"green","text":"ラ"},{"color":"dark_green","text":" ド"},{"color":"blue","text":"メ"},{"color":"light_purple","text":"イ"},{"color":"dark_purple","text":"ン"}]
tp @s -2721 45 -33 ~ 0
playsound entity.player.levelup master @s -2721 45 -33 1 1.2 0
