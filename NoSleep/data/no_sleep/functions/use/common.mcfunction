#> no_sleep:use/common
# ベッドかリスポーンアンカーを使って初期スポーン地点を変更したとき
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 使える状態かどうか確認
data modify storage no_sleep: no_sleep set value false
execute store result storage no_sleep: {no_sleep:false}.no_sleep byte 1 run function #no_sleep:conditions

### 使える状態なら保存する
execute if data storage no_sleep: {no_sleep:false} run function no_sleep:save
### 使えない状態なら巻き戻す
execute unless data storage no_sleep: {no_sleep:false} run function no_sleep:rollback
