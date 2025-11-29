#> tusb_remake:armor_stand/sign_stand
# 看板との会話処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 謎
# tag @s[distance=0..,tag=OverOnly] remove OverOnly
# data merge entity @s[tag=OverOnly] {Health:0f}

### スポナーの場合
execute if entity @s[tag=SpawnerStand] run function tusb_remake:armor_stand/spawner
### スポナー以外の場合
execute if entity @s[tag=!SpawnerStand,tag=!PersonalLocker] run function tusb_remake:armor_stand/sign
### 個人ロッカー
execute if entity @s[tag=PersonalLocker] run function tusb_remake:armor_stand/personal_locker