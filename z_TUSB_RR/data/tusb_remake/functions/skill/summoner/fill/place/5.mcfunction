#> tusb_remake:skill/summoner/fill/place/5
# 5x5
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

#### ＹＹ␣ＹＹ
#### ＹＸＺＸＹ
#### ␣Ｚ␣Ｚ␣
#### ＹＸＺＸＹ
#### ＹＹ␣ＹＹ

### X -> Y
execute rotated 0 0 if block ^1 ^ ^ #tusb_remake:air if block ^ ^ ^1 #tusb_remake:air if block ^1 ^ ^1 #tusb_remake:air positioned ^1.5 ^ ^1.5 run fill ~-0.5 ~-1 ~-0.5 ~0.5 ~-1 ~0.5 minecraft:white_wool keep
execute rotated 90 0 if block ^1 ^ ^ #tusb_remake:air if block ^ ^ ^1 #tusb_remake:air if block ^1 ^ ^1 #tusb_remake:air positioned ^1.5 ^ ^1.5 run fill ~-0.5 ~-1 ~-0.5 ~0.5 ~-1 ~0.5 minecraft:white_wool keep
execute rotated 180 0 if block ^1 ^ ^ #tusb_remake:air if block ^ ^ ^1 #tusb_remake:air if block ^1 ^ ^1 #tusb_remake:air positioned ^1.5 ^ ^1.5 run fill ~-0.5 ~-1 ~-0.5 ~0.5 ~-1 ~0.5 minecraft:white_wool keep
execute rotated 270 0 if block ^1 ^ ^ #tusb_remake:air if block ^ ^ ^1 #tusb_remake:air if block ^1 ^ ^1 #tusb_remake:air positioned ^1.5 ^ ^1.5 run fill ~-0.5 ~-1 ~-0.5 ~0.5 ~-1 ~0.5 minecraft:white_wool keep

### Z
execute rotated 0 0 if block ^ ^ ^1 #tusb_remake:air positioned ^ ^ ^2 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:white_wool keep
execute rotated 90 0 if block ^ ^ ^1 #tusb_remake:air positioned ^ ^ ^2 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:white_wool keep
execute rotated 180 0 if block ^ ^ ^1 #tusb_remake:air positioned ^ ^ ^2 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:white_wool keep
execute rotated 270 0 if block ^ ^ ^1 #tusb_remake:air positioned ^ ^ ^2 run fill ~ ~-1 ~ ~ ~-1 ~ minecraft:white_wool keep

### 中央3x3
function tusb_remake:skill/summoner/fill/place/3
