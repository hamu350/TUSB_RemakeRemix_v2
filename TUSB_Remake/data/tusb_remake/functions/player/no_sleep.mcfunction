#> tusb_remake:player/no_sleep
# プレイヤーが眠れるかどうかの判定
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 眠れない条件を列挙すればいいよ！

### 通常世界じゃないなら眠れない
execute unless predicate tusb_remake:in_overworld
### アドベンチャーモードなら眠れない
execute if predicate tusb_remake:is_adventure_mode
