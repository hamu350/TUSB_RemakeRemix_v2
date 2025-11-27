#> tusb_remake:tocult_process/
# トカルトコルデのいろんな処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## トカルトの松明処理
tag @s[tag=!SaveTorch] add RemoveTorch
tag @s[tag=SaveTorch] remove SaveTorch

### トカルトに初めてきたプレイヤーに松明を渡す処理
tellraw @s[tag=ISFUnreached] [{"text":"[辺境調査員] おや？ 他の島からかい？ 珍しいねぇ。\n これを持ってお行き。\n ここは寒さが厳しいからね。凍え死んじまうよ。\n"},{"translate":"* %1$s を64個受け取った。","with":[{"text":"松明","color":"aqua"}]},{"translate":"\n[辺境調査員] %2$sは%1$sで付け直せるからね。\n %3$sが減ったら%1$sのあるところまで戻るんだよ。","with":[{"text":"篝火","color":"gold"},{"text":"消えた松明","color":"aqua"},{"text":"松明","color":"aqua"}]}]
give @s[tag=ISFUnreached] minecraft:torch 64
tag @s[tag=ISFUnreached] remove ISFUnreached

### 水の中での松明消費判定
execute as @s[tag=RemoveTorch] at @s if block ~ ~0.5 ~ minecraft:water run tag @s add RemoveTorchInWater
tag @s[tag=RemoveTorchInWater,nbt={RootVehicle:{Entity:{id:"minecraft:boat"}}}] remove RemoveTorchInWater
### 松明消費
execute if entity @s[tag=RemoveTorch,tag=!RemoveTorchInWater] run function tusb_remake:tocult_process/out_of_water
execute if entity @s[tag=RemoveTorch,tag=RemoveTorchInWater] run function tusb_remake:tocult_process/in_water

### 村人の近くは敵が出ない
execute if entity @e[distance=..16,type=villager,tag=!Enemy,limit=1] run tag @s remove RemoveTorch
### エンカウント処理
execute if entity @s[tag=RemoveTorch] if block ~ ~8 ~ minecraft:air run scoreboard players remove @s ISFEncount 1
execute if entity @s[scores={ISFEncount=..0}] run function tusb_remake:tocult_process/encount

tag @s[tag=RemoveTorch] remove RemoveTorch
