#> tusb_remake:athletic/pattern6/reset
# パターン６開始
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

fill -470 66 1203 -449 70 1202 air replace minecraft:jack_o_lantern

fill -469 61 1200 -450 77 1200 minecraft:air replace #minecraft:terracotta
data remove storage tusb_remake: pattern6
tellraw @a[x=-470,y=59,z=1188,dx=21,dy=32,dz=31] {"text":"足場がリセットされた。"}
