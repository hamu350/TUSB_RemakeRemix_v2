#> tusb_remake:guardian_curse/
# エルダーガーディアンの呪いを受けた時、効果を変更する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## ガーディアン呪い効果変更
effect clear @s minecraft:mining_fatigue
effect give @s minecraft:mining_fatigue 15 2
effect give @s minecraft:weakness 15 2
effect give @s minecraft:hunger 15 2

advancement revoke @s only tusb_remake:guardian_curse
