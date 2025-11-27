#> tusb_remake:player/skill/show/
# スキル名称の表示
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 前に・をつける
data modify storage tusb_remake: prefix set value '{"text":"・"}'

### 表示
function tusb_remake:player/skill/show/display
