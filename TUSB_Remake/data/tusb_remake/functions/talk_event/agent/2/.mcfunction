#> tusb_remake:talk_event/agent/2/
# エージェントとの会話２
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## アイテムを持ってたらお断り
execute if entity @s[nbt={Inventory:[{}]}] run function tusb_remake:talk_event/agent/2/refuse
execute unless entity @s[nbt={Inventory:[{}]}] run function tusb_remake:talk_event/agent/2/accept
