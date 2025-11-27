#> tusb_remake:portal/warp/overworld/unlock_tocult/
# トカルトコルデ入り口のゲートを開放する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute positioned 203 145 -20 unless entity @a[distance=..5,nbt={Inventory:[{id:"minecraft:lava_bucket",tag:{display:{Name:'{"text":"§4§lコオリトカース"}'}}}]}] run function tusb_remake:portal/warp/overworld/unlock_tocult/deny
execute positioned 203 145 -20 as @a[distance=..5,nbt={Inventory:[{id:"minecraft:lava_bucket",tag:{RepairCost: 1000000000, display: {Lore: ['{"extra":[{"bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"gray","text":"頑固な氷も簡単に融ける！"}],"text":""}'], Name: '{"extra":[{"bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"color":"dark_red","text":"コオリトカース"}],"text":""}'}}}]}] run function tusb_remake:portal/warp/overworld/unlock_tocult/unlock
