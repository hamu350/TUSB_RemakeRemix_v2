#> tusb_remake:login/schedule
# ログイン時にエラーがない場合の処理
### Copyright © 2022 フレイシェル
### This software is released under the MIT License, see LICENSE.

### もし職業があれば、現在のスキル設定を表示
execute as @a[tag=LoginMessage,scores={Job=1..}] run function tusb_remake:display/skill
execute as @a[tag=LoginMessage,scores={Job=1..}] run function time_limit:login/show_menu
### もし観光モードなら、それを表示
execute if data storage tusb_remake: settings{is_sightseeing:true} run tellraw @a[tag=LoginMessage] {"text":"観光モード中です。","color":"yellow"}
### 祈りが表示できれば表示
tag @a[tag=LoginMessage] add Pray
function time_limit:login/displaychange

tag @a[tag=LoginMessage] remove LoginMessage
