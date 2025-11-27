#> tusb_remake:player/push_button
# ボタンを押したら呼ばれるよ
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### パターン６のリセット
execute if entity @s[x=-470,y=59,z=1188,dx=21,dy=32,dz=31,nbt={Dimension:"minecraft:the_nether"}] run function tusb_remake:athletic/pattern6/reset

advancement revoke @s only tusb_remake:player/push_button
