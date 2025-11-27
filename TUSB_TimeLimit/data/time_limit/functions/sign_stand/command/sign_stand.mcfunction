#> time_limit:sign_stand/command/sign_stand
# 看板との会話処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# 謎
# tag @s[distance=0..,tag=OverOnly] remove OverOnly
# data merge entity @s[tag=OverOnly] {Health:0f}

### スポナーの場合
execute if entity @s[tag=TL_SpawnerStand] run function time_limit:sign_stand/command/spawner
### スポナー以外の場合
execute if entity @s[tag=!TL_SpawnerStand] run function time_limit:sign_stand/command/sign


# 変更点: tagの名称変更とpath変更