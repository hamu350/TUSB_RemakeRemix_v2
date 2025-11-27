#> tusb_remake:entity/type_check
# 新しいエンティティのタイプをチェックして、いろいろ設定する
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

## Enemy := team=!FriendlyTeam & type=tusb_remake:mob & Invulnerable:false

### 無敵じゃない生物で、味方として出現していないものは、敵のタグをつけておく
tag @s[team=!FriendlyTeam,type=#tusb_remake:mob,nbt={Invulnerable:false}] add Enemy
### ニフラムの対象
tag @s[tag=Enemy] add Poofable
### オーラを纏ってる場合は、オーラを初期する
execute if entity @s[tag=Enemy,nbt={Passengers:[{id:"minecraft:area_effect_cloud"}]}] at @s as @e[dy=10,type=minecraft:area_effect_cloud,tag=!TypeChecked] run data merge entity @s {Tags:[MobCloud,TypeChecked],Duration:28,Age:5,WaitTime:5,DurationOnUse:0,RadiusOnUse:0f,RadiusPerTick:0f,ReapplicationDelay:0}

### FlyingObject
### ウィンドウォール？
tag @s[type=#tusb_remake:projectile] add Driftable
tag @s[type=#tusb_remake:arrow] add Arrow
tag @s[type=#tusb_remake:wind_wall_alpha] add DriftableA

### Shulkerが弾を出したらダメージを受ける
execute as @s[type=shulker_bullet] at @s run effect give @e[distance=..5,type=minecraft:shulker,sort=nearest,limit=1] minecraft:wither 1 1 true

### スポナーのタイプは２種類(時間で消える or 地面に付くと消える)
tag @s[type=minecraft:spawner_minecart,nbt=!{PortalCooldown:0}] add CooldownRequired
tag @s[type=minecraft:spawner_minecart,tag=!CooldownRequired] add FloatingRequired

### 自然発生した村人は、特定のアイテムしか売ってくれない
execute as @s[type=villager,nbt={VillagerData:{level:1}}] run data merge entity @s {VillagerData:{profession:"minecraft:shepherd",level:5},Offers:{Recipes:[{maxUses:7,buy:{id:"minecraft:white_wool",Count:22b},sell:{id:"minecraft:emerald",Count:1b},uses:0,rewardExp:1b},{maxUses:7,buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:shears",Count:1b},uses:0,rewardExp:1b}]}}

### TNTは即爆
execute as @s[type=minecraft:tnt] run data merge entity @s {Fuse:0s,Motion:[0d,0d,0d]}

### 強さ補正
execute if data storage tusb_remake: difficulty_modifier{speed:1} run effect give @s[team=,type=!player] minecraft:speed 1000000 0 true
execute if data storage tusb_remake: difficulty_modifier{speed:2} run effect give @s[team=,type=!player] minecraft:speed 1000000 1 true
execute if data storage tusb_remake: difficulty_modifier{speed:3} run effect give @s[team=,type=!player] minecraft:speed 1000000 2 true
execute if data storage tusb_remake: difficulty_modifier{speed:4} run effect give @s[team=,type=!player] minecraft:speed 1000000 3 true
execute if data storage tusb_remake: difficulty_modifier{resistance:1} run effect give @s[team=,type=!player] minecraft:resistance 1000000 0 true
execute if data storage tusb_remake: difficulty_modifier{resistance:2} run effect give @s[team=,type=!player] minecraft:resistance 1000000 1 true
execute if data storage tusb_remake: difficulty_modifier{resistance:3} run effect give @s[team=,type=!player] minecraft:resistance 1000000 2 true
execute if data storage tusb_remake: difficulty_modifier{resistance:4} run effect give @s[team=,type=!player] minecraft:resistance 1000000 3 true

### ゾンビピッグマンは常に怒らせる
execute as @s[type=minecraft:zombified_piglin] run data merge entity @s {AngerTime:2147483647}

### クリーパーの爆発を早める
execute as @s[type=minecraft:creeper,nbt={Fuse:30s}] run data merge entity @s {Fuse:15s}
### クリーパー産のAECは消す
kill @s[type=minecraft:area_effect_cloud,nbt={RadiusPerTick:-0.008333334f}]

### 応急処置 TODO
effect clear @s[type=stray] invisibility
kill @s[type=item,nbt={Item:{Count:65b}}]
execute as @s[type=wandering_trader] run function tusb_remake:entity/limit_sapling

### 自然湧きじゃないスライム系のチェック
tag @s[type=#tusb_remake:slimey,nbt=!{AbsorptionAmount:0f}] add FromSpawner

# summon skeleton ~ ~ ~ {ArmorDropChances:[-1E40F,-1E40F,-1E40F,-1E40F],HandDropChances:[-1E40F,-1E40F]}

### チェック済みにする
tag @s add TypeChecked

