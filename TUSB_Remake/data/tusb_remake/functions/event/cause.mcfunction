#> tusb_remake:event/cause
# イベント発生
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 嫌な予感が発生するプレイヤーを設定する
tag @r[limit=5] add CauseEvent
### お祈り表示させる
tag @a add Pray
### 嫌な予感の音
execute as @a at @s run playsound minecraft:block.portal.travel master @s ~ ~100 ~ 0 0.5 0.15
### 画面を赤くする
worldborder warning distance 20000
### 赤い画面を戻すためのタイマーをセット
scoreboard players set #SecCount Global -8
