#> tusb_remake:skill/knight/iron_will/rollback
#
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

function #oh_my_dat:please
tag @s add IronWillRollbackTarget

summon minecraft:marker ~ ~ ~ {Tags:[IronWillPoint,SystemEntity,TypeChecked]}
execute as @e[distance=..0.1,tag=IronWillPoint,sort=nearest,limit=1] run function tusb_remake:skill/knight/iron_will/rollback2
tag @s remove IronWillRollbackTarget

### Motionは消えていなくても慣性は消えているはずなのでタグクリア
tag @s remove IronWillRollback

advancement revoke @s only tusb_remake:skill/knight/iron_will/rollback
