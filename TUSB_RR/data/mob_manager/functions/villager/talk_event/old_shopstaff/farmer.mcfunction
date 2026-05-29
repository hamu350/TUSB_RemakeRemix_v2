#> mob_manager:villager/talk_event/old_shopstaff/farmer
# 古い交易島村人に話しかけた時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 農業家
tag @s add Farmer
tag @s add NPC

advancement grant @a[tag=TalkingToOldStaff] only player_manager:talk_event farmer
