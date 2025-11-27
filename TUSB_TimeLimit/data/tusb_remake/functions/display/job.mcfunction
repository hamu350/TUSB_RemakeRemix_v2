#> tusb_remake:display/job
# ステータス表示
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### まずは今の職業データをセーブ
function tusb_remake:job/save/
### 表示するデータを読み込む
data modify storage tusb_remake: JobData set from storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB.JobData

data modify storage tusb_remake: JobData.Job set value '{"text":"不明","color":"dark_red","bold":"true","underlined":"true"}'
execute if score @s Job matches 1 run data modify storage tusb_remake: JobData.Job set value '{"text":"剣士","color":"blue","bold":"true"}'
execute if score @s Job matches 2 run data modify storage tusb_remake: JobData.Job set value '{"text":"忍者","color":"dark_green","bold":"true"}'
execute if score @s Job matches 3 run data modify storage tusb_remake: JobData.Job set value '{"text":"狩人","color":"red","bold":"true"}'
execute if score @s Job matches 4 run data modify storage tusb_remake: JobData.Job set value '{"text":"白魔導士","color":"white","bold":"true"}'
execute if score @s Job matches 5 run data modify storage tusb_remake: JobData.Job set value '{"text":"黒魔導士","color":"dark_purple","bold":"true"}'
execute if score @s Job matches 6 run data modify storage tusb_remake: JobData.Job set value '{"text":"召喚士","color":"gold","bold":"true"}'

tellraw @s {"text":"= ステータス =","color":"white","bold":true}
tellraw @s [{"translate":"レベル: %1$s 次のレベルアップまで: %2$s EXP\n\n","color":"white","with":[{"score":{"name":"*","objective":"Level"},"color":"aqua"},{"score":{"name":"*","objective":"ExpToLevel"},"color":"aqua"}]},{"text":"レベル/残り必要経験値\n","color":"gray"},{"translate":"剣士: %1$sLV/%2$sEXP 忍者: %3$sLV/%4$sEXP 狩人: %5$sLV/%6$sEXP\n","color":"gray","with":[{"storage":"tusb_remake:","nbt":"JobData.Knight.Level","color":"aqua"},{"storage":"tusb_remake:","nbt":"JobData.Knight.ExpToLevel","color":"aqua"},{"storage":"tusb_remake:","nbt":"JobData.Ninja.Level","color":"aqua"},{"storage":"tusb_remake:","nbt":"JobData.Ninja.ExpToLevel","color":"aqua"},{"storage":"tusb_remake:","nbt":"JobData.Archer.Level","color":"aqua"},{"storage":"tusb_remake:","nbt":"JobData.Archer.ExpToLevel","color":"aqua"}]},{"translate":"白魔導士: %1$sLV/%2$sEXP 黒魔導士: %3$sLV/%4$sEXP 召喚士: %5$sLV/%6$sEXP","color":"gray","with":[{"storage":"tusb_remake:","nbt":"JobData.WhiteMage.Level","color":"aqua"},{"storage":"tusb_remake:","nbt":"JobData.WhiteMage.ExpToLevel","color":"aqua"},{"storage":"tusb_remake:","nbt":"JobData.BlackMage.Level","color":"aqua"},{"storage":"tusb_remake:","nbt":"JobData.BlackMage.ExpToLevel","color":"aqua"},{"storage":"tusb_remake:","nbt":"JobData.Summoner.Level","color":"aqua"},{"storage":"tusb_remake:","nbt":"JobData.Summoner.ExpToLevel","color":"aqua"}]}]

##トリガーリセット
scoreboard players reset @s ShowMenu
scoreboard players enable @s ShowMenu