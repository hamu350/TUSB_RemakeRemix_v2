#> tusb_remake:athletic/like_snake/start1
# スピードラン開始
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### トロッコ１
execute in minecraft:the_nether run summon minecraft:minecart -376 59 1089 {CustomName:'"SnakeBlock"',UUID:[I;0,4,0,6],Tags:["SystemEntity","TypeChecked"]}
execute in minecraft:overworld run schedule function tusb_remake:athletic/like_snake/schedule 1t

