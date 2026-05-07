#> tusb_remake:sign_event/fortune/
# 占い師のところの占い看板
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 籤を出す
summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:barrier"},Tags:[ViewPoint,SystemEntity,Kuzi],CustomName:'"大吉"',Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:barrier"},Tags:[ViewPoint,SystemEntity,Kuzi],CustomName:'"中吉"'},{id:"minecraft:falling_block",BlockState:{Name:"minecraft:barrier"},Tags:[ViewPoint,SystemEntity,Kuzi],CustomName:'"小吉"'},{id:"minecraft:falling_block",BlockState:{Name:"minecraft:barrier"},Tags:[ViewPoint,SystemEntity,Kuzi],CustomName:'"小吉"'},{id:"minecraft:falling_block",BlockState:{Name:"minecraft:barrier"},Tags:[ViewPoint,SystemEntity,Kuzi],CustomName:'"吉"'},{id:"minecraft:falling_block",BlockState:{Name:"minecraft:barrier"},Tags:[ViewPoint,SystemEntity,Kuzi],CustomName:'"吉"'},{id:"minecraft:falling_block",BlockState:{Name:"minecraft:barrier"},Tags:[ViewPoint,SystemEntity,Kuzi],CustomName:'"末吉"'},{id:"minecraft:falling_block",BlockState:{Name:"minecraft:barrier"},Tags:[ViewPoint,SystemEntity,Kuzi],CustomName:'"末吉"'},{id:"minecraft:falling_block",BlockState:{Name:"minecraft:barrier"},Tags:[ViewPoint,SystemEntity,Kuzi],CustomName:'"凶"'},{id:"minecraft:falling_block",BlockState:{Name:"minecraft:barrier"},Tags:[ViewPoint,SystemEntity,Kuzi],CustomName:'"大凶"'}]}
### 結果を表示
data merge block -62 13 2 {Text1: '{"text":""}',Text2: '{"bold":true,"color":"white","text":"✧ ✧ ✧"}',Text3: '{"bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/particle cloud ~ ~ ~ 0.3 0.3 0.3 0.1 20 force"},"translate":"✧ %1$s ✧","with":[{"italic":true,"color":"gray","selector":"@e[tag=Kuzi,type=falling_block,distance=..6,sort=random,limit=1]"}]}',Text4: '{"bold":true,"color":"white","text":"✧ ✧ ✧"}'}
# data merge block -62 13 2 {Text3: '{"bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/particle cloud ~ ~ ~ 0.3 0.3 0.3 0.1 20 force"},"translate":"✧%1$s✧","with":[{"italic":true,"color":"gray","selector":"@e[tag=Kuzi,type=falling_block,distance=..6,sort=random,limit=1]"}]}'}
### 残った籤を削除
kill @e[tag=Kuzi,type=falling_block,distance=..6]
### 音を鳴らす
playsound minecraft:entity.firework_rocket.large_blast_far master @a[distance=..16] ~ ~ ~ 1 0.7 0
