#> tusb_remake:talk_event/farmer/
# 農家との会話
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 農家
## 10分未満ならOK
execute as @e[distance=..6,tag=VillagerMeal,scores={Freshness=-9..}] run function tusb_remake:talk_event/farmer/ok
## 10分以上ならNG
execute as @e[distance=..6,tag=VillagerMeal,scores={Freshness=..-10}] run function tusb_remake:talk_event/farmer/ng
