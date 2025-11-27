#> tusb_remake:talk_event/bonfire/
# 篝火との会話
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 篝火
data modify storage player_item_tuner: condition set value {if:{id:"minecraft:lever",tag: {display:{Name: '{"text":"§7消えた松明"}'}}}}
data modify storage player_item_tuner: result set value {set:{id:"minecraft:torch"}}
function #player_item_tuner:modify/inventory
