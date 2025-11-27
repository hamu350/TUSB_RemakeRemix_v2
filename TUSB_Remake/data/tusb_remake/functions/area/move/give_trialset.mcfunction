#> tusb_remake:area/move/give_trialset
# お試しセットを渡します
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### お試しセットを渡す
give @s minecraft:ghast_spawn_egg{display:{Name:'"§bお試しセットの印玉"',Lore:['"§rモードスキル用お試しセットが入っている。"','"§rなくなったら交易島のアルバイトから買おう。"']},Enchantments:[{}],EntityTag:{id:"minecraft:bat",DeathTime:19s,ActiveEffects:[{Id:7,Duration:100,Amplifier:5b,ShowParticles:false},{Id:14,Duration:100,Amplifier:0b,ShowParticles:false}],Tags:[RewardEgg,TypeChecked],DeathLootTable:"usb:signs/skillkit"},CanPlaceOn:["#minecraft:all"],HideFlags:16}
tellraw @s {"translate":"* %1$s を受け取った。","with":[{"text":"お試しセットの印玉","color":"aqua"}]}
tag @s remove TrialSet

### 電話ボックスのドアを復元する
execute positioned -2719 89 -392 run function tusb_remake:system/load_chunk
execute positioned -2719 89 -392 as @e[type=armor_stand,name="door",tag=SystemEntity,distance=..3] run loot replace entity @s armor.head mine ~ ~ ~ minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
execute positioned -2723 89 -392 run function tusb_remake:system/load_chunk
execute positioned -2723 89 -392 as @e[type=armor_stand,name="door",tag=SystemEntity,distance=..3] run loot replace entity @s armor.head mine ~ ~ ~ minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}

### ついでに観光モードの看板も更新する
data merge block -2718 90 -393 {Text1:'{"text":"観光ﾓｰﾄﾞを切替えます","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"function tusb_remake:system/switch_sightseeing"}}',Text2:'{"text":"観光モード中の","color":"dark_red","bold":true}',Text3:'{"text":"死亡回数は","color":"dark_red","bold":true}',Text4:'{"text":"記録されます","color":"dark_red","bold":true}'}

### スキル説明の看板を修正する
execute positioned -2736 90 -382 run function tusb_remake:system/load_chunk
data merge block -2736 90 -382 {Text1:'{"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[モードスキルの発動方法]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" モードチェンジ\\",\\"color\\":\\"light_purple\\",\\"bold\\":true},{\\"text\\":\\"（たまご）を使用すると、モードが切り替わります。\\\\nそのモードに設定しているスキルのトリガーとなる行動をすると発動します。\\\\nスキルによってトリガーは異なります。\\\\nスキルをセットする際は、何がトリガーとなるのか確認しておきましょう。\\"}]"},"text":"モードスキル"}',Text3:'{"bold":true,"clickEvent":{"action":"run_command","value":"/playsound minecraft:entity.iron_golem.attack master @s ~ ~ ~ 1 1.414"},"text":"発動方法"}',Text4:'{"text":""}'}
data merge block -2736 90 -383 {Text1:'{"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[サポートスキルの発動方法]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" 対応した\\"},{\\"text\\":\\"サポートアクション\\",\\"color\\":\\"gold\\",\\"bold\\":true},{\\"text\\":\\"（たまご）を使用すると発動します。\\"}]"},"text":"サポートスキル"}',Text3:'{"bold":true,"clickEvent":{"action":"run_command","value":"/playsound minecraft:entity.iron_golem.attack master @s ~ ~ ~ 1 1.414"},"text":"発動方法"}',Text4:'{"text":""}'}
data merge block -2735 89 -382 {Text1:'{"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[スキルのスロット数]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" スキルは\\\\nモードスキル２種類\\\\nサポートスキル２種類\\\\n計４種類セットしておくことができます。\\"}]"},"text":"スキルのスロット数"}',Text3:'{"clickEvent":{"action":"run_command","value":"/playsound minecraft:entity.iron_golem.attack master @s ~ ~ ~ 1 1.414"},"text":""}',Text4:'{"text":""}'}
data merge block -2735 89 -383 {Text1:'{"text":""}',Text2:'{"bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @s [{\\"text\\":\\"\\"},{\\"text\\":\\"[スキルのセット方法]\\\\n\\",\\"bold\\":true},{\\"text\\":\\" 看板を右クリックすると、設定できるスキルの一覧がでます。\\\\nスキル名にカーソルを合わせると、スキルの詳細が表示されます。\\\\nスキル名をクリックすると、スキルがセットされます。\\"}]"},"text":"スキルのセット方法"}',Text3:'{"clickEvent":{"action":"run_command","value":"/playsound minecraft:entity.iron_golem.attack master @s ~ ~ ~ 1 1.414"},"text":""}',Text4:'{"text":""}'}
