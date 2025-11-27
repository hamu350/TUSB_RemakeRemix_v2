#> tusb_remake:portal/warp/the_nether/
## ネザーでのワープをチェックして実行
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### ネザー ⇨ ネザーアスレ
execute positioned 0 22 29 align xyz if entity @s[dx=1,dy=2,dz=0] run tp @s -407.5 52.5 879.5 -90 0

### 水アスレ侵入
execute positioned -263 23 868 align xyz if entity @s[dx=0,dy=0,dz=1] run function tusb_remake:athletic/water_athletic/modify
### 透明アスレ侵入
execute positioned -261 24 884 align xyz if entity @s[dx=0,dy=0,dz=1] run schedule function tusb_remake:athletic/invisible_athletic/modify 5s

### パターン６
execute positioned -461 62 1209 align xyz if entity @s[dx=0,dy=0,dz=0] run function tusb_remake:athletic/pattern6/start
execute positioned -458 62 1209 align xyz if entity @s[dx=0,dy=0,dz=0] run function tusb_remake:athletic/pattern6/pause
execute positioned -460 80 1198 align xyz if entity @s[dx=1,dy=0,dz=0] run function tusb_remake:athletic/pattern6/clear

### ネザーアスレチッククリア
### へルフォール
execute positioned -515 54 888 align xyz if entity @s[dx=2,dy=0,dz=0] positioned -522 141 812 run function tusb_remake:athletic/reward
### ヘルクライム
execute positioned -353 121 1364 align xyz if entity @s[dx=1,dy=0,dz=0] positioned -518 142 808 run function tusb_remake:athletic/reward
### バードケージ
execute positioned -273 200 1191 align xyz if entity @s[dx=2,dy=0,dz=0] positioned -522 143 804 run function tusb_remake:athletic/reward
### インビジブル
execute positioned -516 61 1125 align xyz if entity @s[dx=1,dy=0,dz=0] positioned -518 144 800 run function tusb_remake:athletic/reward
### パターン６
execute positioned -460 82 1191 align xyz if entity @s[dx=1,dy=0,dz=0] positioned -522 145 796 run function tusb_remake:athletic/reward
### スピードラン
execute positioned -534 90 1342 align xyz if entity @s[dx=1,dy=0,dz=0] positioned -518 146 792 run function tusb_remake:athletic/reward
### スピードラン
execute positioned -358 79 1069 align xyz if entity @s[dx=2,dy=0,dz=0] positioned -522 147 788 run function tusb_remake:athletic/reward
### ヘルロード
execute positioned -132 81 1067 align xyz if entity @s[dx=0,dy=0,dz=1] positioned -526 148 792 run function tusb_remake:athletic/reward
### アイヴィートラップ
execute positioned -261 86 1047 align xyz if entity @s[dx=1,dy=0,dz=0] positioned -530 149 796 run function tusb_remake:athletic/reward
### ０
execute positioned -408 24 879 align xyz if entity @s[dx=0,dy=0,dz=0] positioned -518 140 816 run function tusb_remake:athletic/reward
