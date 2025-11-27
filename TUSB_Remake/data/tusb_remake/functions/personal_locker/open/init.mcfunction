#> tusb_remake:personal_locker/open/init
# 
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 個人ロッカーを初期化
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest set value [{Items:[]},{Items:[]},{Items:[]},{Items:[]},{Items:[]},{Items:[]},{Items:[]},{Items:[]},{Items:[]}]
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TUSB.PersonalEnderChest[0].Items set from entity @s EnderItems
