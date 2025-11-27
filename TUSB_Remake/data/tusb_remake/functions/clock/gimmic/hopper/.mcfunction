#> tusb_remake:clock/gimmic/hopper/
# ホッパー島の吸い込みギミック
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### ホッパーのカウントを進める
execute store result storage tusb_remake: hopper_count int 0.9999999999 run data get storage tusb_remake: hopper_count
### 時間になってたら作動！！
execute if data storage tusb_remake: {hopper_count:0} run function tusb_remake:clock/gimmic/hopper/transport
