#> tusb_remake:sign_event/extra_hint_tutorial/
# エクストラドメインのヒント看板
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tellraw @s {"text":"～鍵付き宝箱の開け方～","color":"dark_aqua","bold":true}
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5 0
particle enchant ~ ~1 ~ 0.1 0.1 0.1 1 90
tellraw @s [{"text":"看板の下にあるような","color":"white","bold":true},{"text":"鍵卵","color":"dark_aqua","bold":true},{"text":"が各地にあり、  それを手に持った状態ならば鍵付きのﾁｪｽﾄを開く事ができます。","color":"white","bold":true}]
