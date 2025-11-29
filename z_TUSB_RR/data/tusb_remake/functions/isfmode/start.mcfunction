#> tusb_remake:isfmode/start
#ハードコアモード開始ぃ

data modify storage tusb_remake: settings.toculting set value 1b
tellraw @a [{"color":"dark_aqua", "bold": true,"text":" トカルトモードに切り替わりました。"}]
execute as @a run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.5 0.67
loot give @r loot asset:item/other/other/stationary_bonfires
loot give @r loot asset:item/other/other/stationary_bonfires
forceload add -58 19 -58 19
schedule function tusb_remake:isfmode/villager 1t
execute as @a run tellraw @s [{"text":"[篝溶岩] 何者かによってこの世界に寒気が訪れた...\n これを持っていくがいい...\n 松明がないと凍え死んでしまうだろう...\n"},{"translate":"* %1$s を64個受け取った。","with":[{"text":"松明","color":"aqua"}]},{"translate":"\n[篝溶岩] %2$sは%1$sで付け直せるだろう...\n %3$sが減ったら%1$sのあるところまで戻るがいい...","with":[{"text":"篝火","color":"gold"},{"text":"消えた松明","color":"aqua"},{"text":"松明","color":"aqua"}]}]
