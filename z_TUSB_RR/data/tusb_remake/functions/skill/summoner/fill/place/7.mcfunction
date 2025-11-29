#> tusb_remake:skill/summoner/fill/place/7
# 7x7
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

#### ␣␣␣␣␣␣␣
#### ␣ＸＹＺＹＸ␣
#### ␣ＹＹ␣ＹＹ␣
#### ␣Ｚ␣␣␣Ｚ␣
#### ␣ＹＹ␣ＹＹ␣
#### ␣ＸＹＺＹＸ␣
#### ␣␣␣␣␣␣␣

### X -> Y
execute rotated 0 0 if block ^1 ^ ^ #tusb_remake:air if block ^ ^ ^1 #tusb_remake:air if block ^1 ^ ^1 #tusb_remake:air positioned ^1 ^ ^1 if block ^1 ^ ^ #tusb_remake:air if block ^ ^ ^1 #tusb_remake:air if block ^1 ^ ^1 #tusb_remake:air positioned ^1 ^ ^1 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:white_wool keep
execute rotated 90 0 if block ^1 ^ ^ #tusb_remake:air if block ^ ^ ^1 #tusb_remake:air if block ^1 ^ ^1 #tusb_remake:air positioned ^1 ^ ^1 if block ^1 ^ ^ #tusb_remake:air if block ^ ^ ^1 #tusb_remake:air if block ^1 ^ ^1 #tusb_remake:air positioned ^1 ^ ^1 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:white_wool keep
execute rotated 180 0 if block ^1 ^ ^ #tusb_remake:air if block ^ ^ ^1 #tusb_remake:air if block ^1 ^ ^1 #tusb_remake:air positioned ^1 ^ ^1 if block ^1 ^ ^ #tusb_remake:air if block ^ ^ ^1 #tusb_remake:air if block ^1 ^ ^1 #tusb_remake:air positioned ^1 ^ ^1 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:white_wool keep
execute rotated 270 0 if block ^1 ^ ^ #tusb_remake:air if block ^ ^ ^1 #tusb_remake:air if block ^1 ^ ^1 #tusb_remake:air positioned ^1 ^ ^1 if block ^1 ^ ^ #tusb_remake:air if block ^ ^ ^1 #tusb_remake:air if block ^1 ^ ^1 #tusb_remake:air positioned ^1 ^ ^1 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:white_wool keep

### Z
execute rotated 0 0 if block ^ ^ ^1 #tusb_remake:air positioned ^ ^ ^1 if block ^ ^ ^1 #tusb_remake:air positioned ^ ^ ^1 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:white_wool keep
execute rotated 90 0 if block ^ ^ ^1 #tusb_remake:air positioned ^ ^ ^1 if block ^ ^ ^1 #tusb_remake:air positioned ^ ^ ^1 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:white_wool keep
execute rotated 180 0 if block ^ ^ ^1 #tusb_remake:air positioned ^ ^ ^1 if block ^ ^ ^1 #tusb_remake:air positioned ^ ^ ^1 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:white_wool keep
execute rotated 270 0 if block ^ ^ ^1 #tusb_remake:air positioned ^ ^ ^1 if block ^ ^ ^1 #tusb_remake:air positioned ^ ^ ^1 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:white_wool keep

### 中央3x3
function tusb_remake:skill/summoner/fill/place/3
