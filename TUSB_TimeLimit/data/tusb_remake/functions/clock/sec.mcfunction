#> tusb_remake:clock/sec
# １秒毎に実行したいもの
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# マナリフレッシュ
execute as @a[scores={ManaRefresh=0..}] run function tusb_remake:skill/black_mage/mana_refresh/check

# 連舞 跳躍
execute as @a[scores={Tsuremai=0..}] at @s run function tusb_remake:skill/ninja/tsuremai/check
execute as @a[scores={Choyaku=0..}] at @s run function tusb_remake:skill/ninja/choyaku/check

# 黙想継続
execute as @a[tag=Mokuso] at @s run function tusb_remake:skill/ninja/mokuso/check

# 風切
execute as @a[scores={Kazakiri=0..}] at @s run function tusb_remake:skill/ninja/kazakiri/check

# レーダーヴィジョン
execute as @a[tag=RadarVision,scores={HP=1..}] at @s run function tusb_remake:skill/archer/radar_vision/check

# 1分処理
scoreboard players add #SecCount Global 1
## 0になるのは嫌な予感の演出が終わる時だけなので、赤い視界をリセットする
execute if score #SecCount Global matches 0..2 run worldborder warning distance 0
## 1分処理を呼び出す
execute if score #SecCount Global matches 61.. run function tusb_remake:clock/min

### 動き停止飛翔物判定
execute as @e[tag=FlyingObject,nbt=!{inGround:true,OnGround:true}] at @s run function tusb_remake:entity/check_projectile
execute as @e[tag=InKasap] at @s run function tusb_remake:entity/check_kasap

### くもの巣を設置してくる害悪
execute as @e[tag=CanSpin] at @s positioned ~-0.5 ~ ~-0.5 run fill ~ ~ ~ ~1 ~1 ~1 minecraft:cobweb keep

### Freeze/Melt 居縮とかの
execute as @e[tag=Freeze,nbt={PortalCooldown:0}] run function tusb_remake:clock/sec3

###敵スキル発動チェック
execute as @e[tag=SkillMob] at @s run function tusb_remake:enemy/skill/

## 嫌な予感を実行する
execute as @a[predicate=tusb_remake:area/skyland,tag=CauseEvent] at @s if score #SecCount Global matches 0.. run function tusb_remake:event/rank/

## トカルトの処理
execute as @a[predicate=tusb_remake:area/tocult_colde,gamemode=!spectator] at @s run function tusb_remake:tocult_process/

## TLEエンカウント処理
execute as @a[predicate=time_limit:encountarea,predicate=time_limit:player] at @s run function time_limit:encount/

## ゾンビピッグマンのおこる対象を設定する
execute as @a[gamemode=!spectator] at @s run function tusb_remake:clock/gimmic/nether/angry

## オーラ(AEC)纏ってる敵のオーラを維持する？
execute as @e[tag=MobCloud] at @s as @e[dx=0,tag=Enemy,sort=nearest,limit=1] at @s as @e[dy=10,tag=MobCloud] run data modify entity @s Age set value 5

## 煉獄ボスと戦闘中の処理
execute as 0-0-1-0-4 at @s positioned ~ ~-19 ~74 if block -1860 20 -51 minecraft:slime_block if entity @p[distance=..65,gamemode=!spectator] run function tusb_remake:nether_boss/attack_check

## 死の宣告
execute as @a[tag=Doom] run function tusb_remake:doom/

## サバイバルスポナー処理
execute as @e[tag=SpawnerCore] at @s if block ~ ~ ~ minecraft:air align xyz run kill @e[dx=0,tag=Spawner]

## CooldownRequired 誤差許容長期用
tag @e[tag=CooldownRequiredLong,nbt={PortalCooldown:0}] add Garbage

## カートスポナーポータルin対策
tag @e[type=spawner_minecart,tag=CooldownRequired,nbt={PortalCooldown:300}] add Garbage

###### 島ギミック ########
## エンダーチェスト島のワープ
execute positioned 58 94 -103 as @e[dx=17,dy=2,dz=17,team=!NotExit,nbt=!{Passengers:[]}] at @s if block ~ ~-1 ~ #tusb_remake:stained_glass_and_pane run spreadplayers ~ ~ 1 300 under 319 false @s
## ホッパー島のワープ
execute positioned 177 39 -75 if entity @a[distance=..60,gamemode=!spectator] run function tusb_remake:clock/gimmic/hopper/

## 祈り(最後の手段/最初に教会に行くまで使えない)を表示
execute if data storage tusb_remake: settings{prayable:true} as @a[tag=Pray,scores={Job=1..}] run function tusb_remake:player/pray/show

## 炎出す奴
execute as @e[tag=CanFire] at @s positioned ~-0.5 ~ ~-0.5 run fill ~ ~ ~ ~1 ~1 ~1 minecraft:fire keep

## エリア境界不正侵入(バリアめり込み)防止
execute as @a[predicate=time_limit:player] at @s if block ~ ~ ~ #time_limit:unbreakable run function time_limit:player/barriarkill

execute in minecraft:overworld run schedule function tusb_remake:clock/sec 1s
