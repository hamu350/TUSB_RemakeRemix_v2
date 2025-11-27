#> tusb_remake:portal/warp/overworld/
## オーバーワールドでのワープをチェックして実行
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### TODO: 本番環境なら(EGWが生きてるので)一部要らない

### 初期スポーン地点からブラジル行き
execute positioned -1935 111 -137 align xyz if entity @s[dx=0,dy=1,dz=1] run tp @s -1739 107 -137

### 交易島からスキル設定場行き
execute positioned -50 23 34 align xyz if entity @s[dx=0,dy=0,dz=0] run tp @s -2724.0 88 -382.0 90 0
### スキル設定場でのワープ
execute positioned -2715 91 -389 align xyz if entity @s[dx=0,dy=0,dz=0] run tp @s -2795 75.5 -381
execute positioned -2795 78 -381 align xyz if entity @s[dx=0,dy=0,dz=0] run tp @s -2715 88.5 -389
### スキル設定場から交易島
execute positioned -2711 91 -383 align xyz if entity @s[dx=1,dy=0,dz=1] run tp @s -53 23.5 34 90 12.5

### スキル設定場からエクストラドメイン
execute positioned -2722 89 -268 align xyz if entity @s[dx=0,dy=0,dz=0] run function tusb_remake:portal/warp/overworld/extra/enter
### エクストラドメインからスキル設定場
execute positioned -2721 43 -38 align xyz if entity @s[dx=0,dy=0,dz=0] run tp @s -2722 88.5 -282

### 通常世界 ⇨ テーブルマウンテン
execute positioned -96 14 56 align xyz if entity @s[dx=1,dy=0,dz=0] run tp @s 24.5 18.5 -1825.5 180 0

### テーブルマウンテンの地下水路の村からのランダムワープ
execute positioned 47 67 -2186 align xyz as @s[dx=0] positioned -1919.5 6.5 -191.5 positioned ~ ~ ~-2 at @e[type=area_effect_cloud,distance=..0.1,sort=nearest,limit=1] facing entity @e[type=area_effect_cloud,distance=..1.1,sort=random,limit=1] feet positioned as @s positioned ~ ~ ~-4 positioned ^ ^ ^2 positioned 47.5 ~ ~ run tp @s ~ ~ ~

### チュートリアルワープ
execute if data storage tusb_remake: portal.cloudia.tutorial positioned -1885 114 -194 align xyz if entity @s[dx=0,dy=1,dz=0] run tp @s -1887 115.5 -189
### クラウディア城までのワープ
execute if data storage tusb_remake: portal.cloudia.castle positioned -2478 4 -128 align xyz if entity @s[dx=0,dy=1,dz=0] run tp @s -2374.5 80.5 -130.5

### ガリバーランドの印板取得
execute positioned 24 72 803 align xyz if entity @s[dx=0] unless entity @e[dx=0,type=item,tag=SealBreakerItem] positioned ~0.5 ~ ~0.5 run function tusb_remake:portal/warp/overworld/gullivers_land/yellow
execute positioned 58 66 702 align xyz if entity @s[dx=0] unless entity @e[dx=0,type=item,tag=SealBreakerItem] positioned ~0.5 ~ ~0.5 run function tusb_remake:portal/warp/overworld/gullivers_land/red
execute positioned 131 63 774 align xyz if entity @s[dx=0] unless entity @e[dx=0,type=item,tag=SealBreakerItem] positioned ~0.5 ~ ~0.5 run function tusb_remake:portal/warp/overworld/gullivers_land/blue

### スキル設定場の現在の設定表示
execute positioned -2733 88 -383 align xyz if entity @s[dz=1] if entity @s[advancements={tusb_remake:press={skill_settings_show_current=false}}] run function tusb_remake:display/skill
execute positioned -2733 88 -383 align xyz if entity @s[dz=1] run advancement grant @s only tusb_remake:press skill_settings_show_current

### 交易島の現在のステータス表示
execute positioned -65 15 28 align xyz if entity @s[dx=0] if entity @s[advancements={tusb_remake:press={trading_show_status=false}}] run function tusb_remake:display/job
execute positioned -65 15 28 align xyz if entity @s[dx=0] run advancement grant @s only tusb_remake:press trading_show_status
### 交易島の現在の攻略率表示
execute positioned -63 15 28 align xyz if entity @s[dx=0] if entity @s[advancements={tusb_remake:press={trading_show_conquer=false}}] run function tusb_remake:display/conquer
execute positioned -63 15 28 align xyz if entity @s[dx=0] run advancement grant @s only tusb_remake:press trading_show_conquer

### コオリトカス
execute positioned 203 147 -20 align xyz if entity @s[dx=0] if entity @s[advancements={tusb_remake:press={unlock_tocult=false}}] run function tusb_remake:portal/warp/overworld/unlock_tocult/
execute positioned 203 147 -20 align xyz if entity @s[dx=0] run advancement grant @s only tusb_remake:press unlock_tocult
