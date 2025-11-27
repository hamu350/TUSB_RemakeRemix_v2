#> tusb_remake:clock/main
# メインクロック？
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### 初回ログイン時
execute as @a[team=] at @s run function tusb_remake:login/first
### ログイン時
execute as @a[scores={LeaveGame=1..}] at @s run function tusb_remake:login/

### 紙を拾ったプレイヤーがいたらトレードイベント(職業変更/釣りチケット)判定を呼び出す
execute as @a[scores={PickupPaper=1..}] run scoreboard players operation @s TradedVillager >< @s PickupPaper
execute as @a[scores={TradedVillager=1..}] run function tusb_remake:trade_event/

### 死亡処理
execute as @a[scores={HP=..0,Hunger=..-1}] at @s run function tusb_remake:player/death/
### 生き返ったときは満腹度調整処理
execute as @a[scores={HP=1..,Hunger=0..}] run function tusb_remake:player/apply_hunger

### 経験値取得処理
execute as @a[nbt={Inventory:[{id:"minecraft:nether_star"}]}] at @s run function tusb_remake:player/pick_exp/

### レベルアップ処理
execute as @a[scores={ExpToLevel=..0,Job=1..}] at @s run function tusb_remake:player/level_up

### MP自然回復
execute as @a[scores={CoolTickCounter=1..}] unless score @s MP >= @s MPMax run function tusb_remake:player/mp/natural

###島攻略
execute as @a[scores={UseEnderEye=1..}] at @s run function tusb_remake:area/conquer/

### 緩衝体力付きで死んでいる場合、エフェクトクリアすることで、体力を正常にする
effect clear @a[scores={Deaths=1..,HP=1..}]

### ベッドで寝たときの効果
execute as @a[scores={SleepInBed=1..}] at @s run function tusb_remake:player/sleep/

### お祈り処理(kill)
execute as @a[scores={kill=1..}] at @s run function tusb_remake:player/pray/

### 交易島落下防止＆製作者村人の追加
execute positioned -58 23 22 in minecraft:overworld run tp @e[distance=25..,type=villager,tag=NewShopStaff] -54.5 24.5 9.0

###村人会話
execute as @a[scores={AgentFlag=1..}] at @s run function tusb_remake:talk_event/agent/trigger/
execute as @a[scores={PastorFlag=1..}] at @s run function tusb_remake:talk_event/pastor/trigger/
execute as @a[scores={AugurFlag=1..}] at @s run function tusb_remake:talk_event/augur/trigger/

### 村人更新
execute at @a as @e[type=villager,scores={VillagerId=0..},distance=..10] run function tusb_remake:villager/

## スポナー更新
execute as @e[tag=Spawner,type=armor_stand,scores={SpawnerId=-2147483648..2147483647}] at @s run function tusb_remake:spawner/

### テーブルマウンテンの不思議な力
execute positioned -6 65 -2148 as @a[dx=64,dy=135,dz=48,gamemode=adventure] run function tusb_remake:clock/gimmic/table_mountain/fall_force
execute as @a[predicate=tusb_remake:area/table_mountain,gamemode=!spectator] at @s if block ~ ~-0.5 ~ minecraft:redstone_block unless block ~ ~-1.5 ~ minecraft:command_block run function tusb_remake:clock/gimmic/table_mountain/red_zone

###ネザー火山噴火
execute as @a[scores={MineNetherrack=1..}] at @s run function tusb_remake:player/volcano/

# ### サボテン島の罠 もとい サトウキビ島
execute positioned 39 7 67 if entity @a[distance=..10,limit=1] run function tusb_remake:gimmic/sealed_alter/

# 透明化＆エーテル Invisible
execute as @a[nbt={ActiveEffects:[{Id:14}]}] at @s run function tusb_remake:player/invisible/

# 奈落防止
execute as @e[tag=AbyssWarp] at @s positioned ~-0.5 -70 ~-0.5 run tp @s[dy=-29] @p
# execute @a ~ -30 ~ /tp @a[dy=32] ~ ~ ~
# execute as @a at @s positioned ~ -30 ~ run tp @s[dy=32] ~ ~ ~

## エリトラ花火の大量耐久消費
execute as @a[scores={UseFireworkRocket=1..}] run function tusb_remake:player/use_firework/

# NoAIの停止 Freeze おのれもやん => NoAIでも動くやつがいるみたいなのだったかも
execute as @e[tag=Freeze] run data merge entity @s {Motion:[0d,0d,0d]}

### 共鳴
# おのれもやんなのでインベントリが2t空白になったら共鳴をチェックする
tag @a[tag=EmptyInventory] remove EmptyInventory
execute as @a unless data entity @s Inventory[0] run tag @s add EmptyInventory
tag @a[tag=!EmptyInventory] add KyoumeiCheak
tag @s[tag=EmptyInventory,tag=EmptyInventory2] add KyoumeiCheak
tag @a[tag=KyoumeiCheak] remove Kyoumei
execute as @a[tag=KyoumeiCheak] if data entity @s Inventory[{tag:{Kyoumei:true}}] at @s run function tusb_remake:clock/kyoumei/
tag @a[tag=KyoumeiCheak] remove KyoumeiCheak
tag @a[tag=EmptyInventory1] add EmptyInventory2
tag @a[tag=EmptyInventory] add EmptyInventory1
tag @a[tag=!EmptyInventory] remove EmptyInventory1
tag @a[tag=!EmptyInventory] remove EmptyInventory2

### leap(跳躍妨害)
execute at @e[tag=leap] run effect give @a[distance=..7,nbt={ActiveEffects:[{Id:8,Amplifier:0b}]}] levitation 10 236
execute at @e[tag=leap] run effect clear @a[distance=..32] jump_boost

# ボスチーム
execute at @e[team=Boss] as @e[type=potion,distance=..3] run function tusb_remake:clock/potion_barrier
effect give @e[team=Boss] resistance 3 2 true
effect clear @e[team=Boss] weakness
effect clear @e[team=Boss] slowness

### くもの巣を設置してくる害悪
execute as @e[tag=CanSpin] at @s positioned ~-0.5 ~ ~-0.5 run fill ~ ~ ~ ~1 ~1 ~1 minecraft:cobweb keep

### 個人ロッカー(印板)
execute as @e[tag=PersonalLockerSign] at @s run function tusb_remake:clock/personal_locker_sign

### オプションモード拒否
execute as @a at @s run function tusb_remake:tick/player_tick

execute as @a[tag=!InfinityBossArea,tag=!InfinityBossBattle,gamemode=!spectator,gamemode=!creative] at @e[type=armor_stand,tag=Boss_MarkerB] if entity @s[distance=..30] run function tusb_remake:boss/barrier
execute as @a[tag=!InfinityBossArea,tag=!InfinityBossBattle,gamemode=!spectator,gamemode=!creative] at @e[type=armor_stand,tag=barrier] if entity @s[distance=..8] run function tusb_remake:boss/barrier
execute as @a[tag=!GameMasterArea,tag=!GameMasterBattle,gamemode=!spectator,gamemode=!creative] at @e[type=armor_stand,tag=Boss_MarkerC] if entity @s[distance=..70] run function tusb_remake:game_master/barrier

# CantTp
tag @a[tag=CantTp] remove CantTp
execute at @e[tag=CantTpSmall] run tag @a[distance=..8] add CantTp
execute at @e[tag=CantTpMedium] run tag @a[distance=..16] add CantTp
execute at @e[tag=CantTpLarge] run tag @a[distance=..32] add CantTp
execute at @e[tag=Boss_MarkerC] run tag @a[distance=..70] add CantTp

# ItemClear
execute at @e[tag=ItemClear] run kill @e[type=item,distance=..8]
execute at @e[tag=Boss_MarkerB] run kill @e[type=item,distance=..20]
execute at @e[tag=Boss_MarkerC] run kill @e[type=item,distance=..70]
