#> tusb_remake:talk_event/old_shopstaff/
# 古い交易島村人に話しかけた時
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

tag @s add TalkingToOldStaff

### 農業家
execute as @e[distance=..8,type=minecraft:villager,tag=ShopStaff,nbt={Offers:{Recipes:[{sell:{tag:{display:{Name:'{"text":"§f今日の昼食"}'}}}}]}}] run function tusb_remake:talk_event/old_shopstaff/farmer
### エージェント
execute as @e[distance=..8,type=minecraft:villager,tag=ShopStaff,tag=Agent] run function tusb_remake:talk_event/old_shopstaff/agent
### 牧師
execute as @e[distance=..8,type=minecraft:villager,tag=ShopStaff,tag=Pastor] run function tusb_remake:talk_event/old_shopstaff/pastor
### 占い師
execute as @e[distance=..8,type=minecraft:villager,tag=ShopStaff,tag=Augur] run function tusb_remake:talk_event/old_shopstaff/augur

### アルバイト
execute as @e[distance=..8,type=minecraft:villager,name="アルバイト",tag=ShopStaff] run function tusb_remake:talk_event/old_shopstaff/arbeit
### ブロント
execute as @e[distance=..8,type=minecraft:villager,name="ブロント",tag=ShopStaff] run function tusb_remake:talk_event/old_shopstaff/buronto

### それ以外
execute as @e[distance=..8,type=minecraft:villager,tag=ShopStaff] run tag @s add NewShopStaff
execute as @e[distance=..8,type=minecraft:villager,tag=ShopStaff] run tag @s remove ShopStaff
execute as @e[distance=..8,type=minecraft:villager,tag=NewShopStaff] run data modify entity @s VillagerData.level set value 100

tag @s remove TalkingToOldStaff
