#> tusb_remake:login/first
# 初回ログイン時にだけする処理
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 最初は通常世界にいることにする -> 最初にクラウディアに出てくると、タイトルが表示される
scoreboard players add @s USBDimension 0
### 空腹関係の何かのトリガー
scoreboard players set @s Hunger -1

### 初回ログイン時の設定
function tusb_remake:login/first_reset

team join FriendlyTeam @s

tag @s add Resolved
