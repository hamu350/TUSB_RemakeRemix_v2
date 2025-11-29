#> tusb_remake:skill/summoner/magic_block/check
# 魔法のブロックのチェック
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 先にタイマーを更新
tp @s ~ ~ ~ ~ ~-0.1

### 共通パーティクル
particle minecraft:dragon_breath ~ ~ ~ 0.5 0.5 0.5 0.1 1 force

### 初期化タグがついていたら、初期化
execute if entity @s[tag=PreMagicBlock] run function tusb_remake:skill/summoner/magic_block/init

### ぷちブラック判定
execute if entity @s[tag=PetitBlack] run function tusb_remake:skill/summoner/summon_petit_black/check

### 上を向いていたら魔法のブロックを消す
execute if entity @s[x_rotation=-90] run function tusb_remake:skill/summoner/magic_block/break

### まわりのプレイヤーがブロックを壊せないようにする
effect give @a[distance=..10] minecraft:mining_fatigue 1 127
