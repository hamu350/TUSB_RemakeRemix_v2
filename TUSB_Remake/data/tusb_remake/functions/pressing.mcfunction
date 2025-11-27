#> tusb_remake:pressing
# 感圧板を押しているとき
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### もうスキル表示の感圧版を押してないなら
execute if entity @s[advancements={tusb_remake:press={skill_settings_show_current=true}}] if predicate tusb_remake:area/cloudia positioned -2733 88 -383 align xyz unless entity @s[dz=1] run advancement revoke @s only tusb_remake:press skill_settings_show_current

### もうステータス表示の感圧版を押してないなら
execute if entity @s[advancements={tusb_remake:press={trading_show_status=true}}] if predicate tusb_remake:area/skyland positioned -65 15 28 align xyz unless entity @s[dx=0] run advancement revoke @s only tusb_remake:press trading_show_status
### もう攻略率表示の感圧版を押してないなら
execute if entity @s[advancements={tusb_remake:press={trading_show_conquer=true}}] if predicate tusb_remake:area/skyland positioned -63 15 28 align xyz unless entity @s[dx=0] run advancement revoke @s only tusb_remake:press trading_show_conquer

### もうトカルト解除の感圧版を押してないなら
execute if entity @s[advancements={tusb_remake:press={unlock_tocult=true}}] if predicate tusb_remake:area/skyland positioned 203 147 -20 align xyz unless entity @s[dx=0] run advancement revoke @s only tusb_remake:press unlock_tocult

advancement revoke @s only tusb_remake:pressing
