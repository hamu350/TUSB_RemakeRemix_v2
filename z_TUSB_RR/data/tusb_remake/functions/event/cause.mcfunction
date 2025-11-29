#> tusb_remake:event/cause
# イベント発生
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 嫌な予感が発生するプレイヤーを設定する
tag @a add CauseEvent
### お祈り表示させる
tag @a add Pray
### 嫌な予感の音
execute as @a[scores={ChooseEvent=0..1}] at @s run playsound minecraft:block.portal.travel master @s ~ ~100 ~ 0 0.5 0.15
execute as @a[scores={ChooseEvent=2}] at @s run playsound minecraft:entity.warden.emerge master @s ~ ~ ~ 1 0.75 0.15
### 画面を赤くする
worldborder warning distance 20000
### 赤い画面を戻すためのタイマーをセット
scoreboard players set #SecCount Global -8

# 変更点、嫌な予感の対象を5人ランダムから全員へ