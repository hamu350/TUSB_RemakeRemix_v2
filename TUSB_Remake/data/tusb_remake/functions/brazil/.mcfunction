#> tusb_remake:brazil/
# ブラジルに入った時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

function #oh_my_dat:please
### チュートリアル満たしてないなら警告
execute unless data storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB{tutorial:[I;1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]} run function tusb_remake:brazil/caution
### チュートリアルクリア済ならワープ
execute if data storage oh_my_dat: _[-4][-4][-4][-4].[-4][-4][-4][-4].TUSB{tutorial:[I;1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]} run function tusb_remake:brazil/warp

advancement revoke @s only tusb_remake:brazil
