#> tusb_remake:button_event/super_craft/result/
# 結果反映
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 結果が変化していなかったら
execute if blocks -2721 70 -355 -2721 70 -355 -2739 90 -362 all run function tusb_remake:button_event/super_craft/result/ng
### 結果が変化していたら
execute unless blocks -2721 70 -355 -2721 70 -355 -2739 90 -362 all run function tusb_remake:button_event/super_craft/result/ok
