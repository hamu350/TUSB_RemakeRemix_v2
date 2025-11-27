#> tusb_remake:skill/projectile/check/chaser/remove/
# エンチェイス後の処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

data modify storage tusb_remake: chaser_owner set from entity @s Owner
execute as @a run function tusb_remake:skill/projectile/check/chaser/remove/notify

### 発動したなら消す
kill @s
