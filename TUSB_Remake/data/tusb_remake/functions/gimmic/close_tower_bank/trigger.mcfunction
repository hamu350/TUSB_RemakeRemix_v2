#> tusb_remake:gimmic/close_tower_bank/trigger
# タワーバンクを閉鎖する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

execute in minecraft:overworld run data merge block -2814 76 -398 {Text1:'{"bold":true,"color":"dark_gray","text":"- = - = - = - = - = -"}',Text2:'{"bold":true,"color":"black","text":"封鎖中"}',Text3:'{"bold":true,"color":"dark_gray","text":"- = - = - = - = - = -"}',Text4:'{"text":""}'}

execute in minecraft:overworld run data merge block -2813 78 -383 {Color:"black",GlowingText:0b,Text1:'{"color":"dark_blue","text":"個人ロッカー","clickEvent":{"action":"run_command","value":"/tellraw @s \\"エンダーチェストを制圧済みのエンドポータルフレームの上に設置すると、個人ロッカーにアクセスできます。\\""}}',Text2:'{"color":"black","text":"はクラウド化しました","clickEvent":{"action":"run_command","value":"/tellraw @s \\"利き手に持っているアイテムの位置に応じて異なるロッカーに繋がります。\\""}}',Text3:'{"color":"black","text":"ご利用方法は"}',Text4:'{"color":"black","text":"右ｸﾘｯｸで確認してね"}'}



data merge block ~ ~ ~ {Slot: 4b, id: "minecraft:end_crystal", Count: 4b, tag: {HideFlags: 60, AttributeModifiers: [{Amount: 2.0d, Slot: "mainhand", AttributeName: "minecraft:generic.max_health", Operation: 0, UUID: [I; 0, 1, 0, 1], Name: '{"text":"wax100"}'}, {Amount: 2.0d, Slot: "offhand", AttributeName: "minecraft:generic.movement_speed", Operation: 0, UUID: [I; 0, 2, 0, 1], Name: '{"text":"wax100"}'}], display: {Name: '{"text":"§e§lエストレーヤ"}'}}}

data merge block ~ ~ ~ {Slot: 4b, id: "minecraft:end_crystal", Count: 4b, tag: {HideFlags: 60, AttributeModifiers: [{Amount: 2.0d, Slot: "mainhand", AttributeName: "generic.max_health", Operation: 0, UUID: [I; 0, 1, 0, 1], Name: "wax100"}, {Amount: 2.0d, Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 0, UUID: [I; 0, 2, 0, 1], Name: "wax100"}], display: {Name: '{"text":"§e§lエストレーヤ"}'}}}
