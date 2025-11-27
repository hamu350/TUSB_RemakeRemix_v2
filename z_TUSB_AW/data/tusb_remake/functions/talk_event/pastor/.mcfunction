#> tusb_remake:talk_event/pastor/
# エージェントとの会話
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 牧師
tellraw @s {"translate":"[牧師] ご存知ですか？ %1$s / %2$s","with":[{"text":"はい","color":"aqua","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger PastorFlag set 2"}},{"text":"いいえ","color":"aqua","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger PastorFlag set 1"}}]}

### トリガー有効化
scoreboard players set @s PastorFlag 0
scoreboard players enable @s PastorFlag
