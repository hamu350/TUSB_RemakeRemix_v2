#> core:clock/sec
# １秒毎に実行したいもの
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

# マナリフレッシュ
    execute as @a[scores={ManaRefresh=0..}] run function skill:job_skill/black_mage/mana_refresh/check

# 連舞 跳躍
    execute as @a[scores={Tsuremai=0..}] at @s run function skill:job_skill/ninja/tsuremai/check
    execute as @a[scores={Choyaku=0..}] at @s run function skill:job_skill/ninja/choyaku/check
    execute as @a[scores={seiyou=0..}] at @s run function skill:job_skill/ninja/seiyou/check
    execute as @a[scores={Syungoku=0..}] at @s run function skill:job_skill/ninja/syungokusatsu/punch/check

# 黙想継続
    execute as @a[tag=Mokuso] at @s run function skill:job_skill/ninja/mokuso/check

# 風切
    execute as @a[scores={Kazakiri=0..}] at @s run function skill:job_skill/ninja/kazakiri/check

# レーダーヴィジョン
    execute as @a[tag=RadarVision,scores={HP=1..}] at @s run function skill:job_skill/archer/radar_vision/check

# 個人ロッカー(印板)から音
    execute at @e[tag=PersonalLockerSign] run playsound minecraft:block.beacon.ambient block @a[distance=..16]

# 1分処理
    scoreboard players add #SecCount Global 1
# 0になるのは嫌な予感の演出が終わる時だけなので、赤い視界をリセットする
    execute if score #SecCount Global matches 0..2 run worldborder warning distance 0
# 1分処理を呼び出す
    execute if score #SecCount Global matches 61.. run function core:clock/min

# 動き停止飛翔物判定
    execute as @e[tag=FlyingObject,nbt=!{inGround:true,OnGround:true}] at @s run function mob_manager:entity/check_projectile
    execute as @e[tag=InKasap] at @s run function mob_manager:entity/check_kasap

# Freeze/Melt 居縮とかの
    execute as @e[tag=Freeze,nbt={PortalCooldown:0}] run function core:clock/sec3

# 敵スキル発動チェック
    execute as @e[tag=SkillMob] at @s run function mob_manager:gimmic/skill/

# 嫌な予感を実行する
    execute as @a[predicate=world_manager:area/skyland,tag=CauseEvent] at @s if score #SecCount Global matches 0.. run function world_manager:event/rank/

# トカルトの処理
    execute unless data storage tusb_remake: settings{toculting:1b} as @a[predicate=world_manager:area/tocult_colde,gamemode=!spectator] at @s run function world_manager:dimension/tocult/process/
    execute unless data storage tusb_remake: settings{toculting:1b} as @a[predicate=!world_manager:area/tocult_colde,gamemode=!spectator] at @s if entity @e[tag=TocultArea,distance=..32] run function world_manager:dimension/tocult/process/
    execute if data storage tusb_remake: settings{toculting:1b} as @a[predicate=!world_manager:area/nether_trial,gamemode=!spectator] at @s run function world_manager:dimension/tocult/process/

# ゾンビピッグマンのおこる対象を設定する
    execute as @a[gamemode=!spectator] at @s run function world_manager:dimension/nether/angry

# オーラ(AEC)纏ってる敵のオーラを維持する？
    execute as @e[tag=MobCloud] at @s as @e[dx=0,tag=Enemy,sort=nearest,limit=1] at @s as @e[dy=10,tag=MobCloud] run data modify entity @s Age set value 5

# 煉獄ボスと戦闘中の処理
    execute as 0-0-1-0-4 at @s positioned ~ ~-19 ~74 if block -1860 20 -51 minecraft:slime_block if entity @p[distance=..65,gamemode=!spectator] run function world_manager:dimension/purgatory/boss/attack_check

# 死の宣告
    execute as @a[tag=Doom] run function player_manager:effect/invisible/doom/

# サバイバルスポナー処理
    execute as @e[tag=SpawnerCore] at @s if block ~ ~ ~ minecraft:air run kill @e[distance=..0.99,tag=Spawner,limit=2,sort=nearest]

# CooldownRequired 誤差許容長期用
    tag @e[tag=CooldownRequiredLong,nbt={PortalCooldown:0}] add Garbage

# カートスポナーポータルin対策
    tag @e[type=spawner_minecart,tag=CooldownRequired,nbt={PortalCooldown:300}] add Garbage

###### 島ギミック ########
# エンダーチェスト島のワープ
    execute positioned 58 94 -103 as @e[dx=17,dy=2,dz=17,nbt=!{Passengers:[]}] at @s if block ~ ~-1 ~ #lib:stained_glass_and_pane run spreadplayers ~ ~ 1 300 under 319 false @s
# ホッパー島のワープ
    execute positioned 177 39 -75 if entity @a[distance=..60,gamemode=!spectator] run function world_manager:dimension/skylands/hopper/

# 祈り(最後の手段/最初に教会に行くまで使えない)を表示
    execute if data storage tusb_remake: settings{prayable:true} as @a[tag=Pray,scores={Job=1..}] run function player_manager:kill/pray/show

# 炎出す奴
    execute as @e[tag=CanFire] at @s positioned ~-0.5 ~ ~-0.5 run fill ~ ~ ~ ~1 ~1 ~1 minecraft:fire keep

# エリア境界不正侵入(バリアめり込み)防止
    execute as @a[predicate=player_manager:player] at @s if block ~ ~ ~ #lib:unbreakable run function player_manager:kill/unbreakable_block

# gamemasterの音
    execute at @e[tag=GMSP,limit=1] run playsound minecraft:entity.warden.heartbeat master @a[distance=..60] ~ ~ ~ 0.6 1 0.0

# 煉獄マグマ
    execute as @a if dimension minecraft:the_nether unless score @s PurgatoryInvalid matches 1.. at @s if block ~ ~0.5 ~ minecraft:lava run function world_manager:dimension/nether/in_lava

# loop
    execute in minecraft:overworld run schedule function core:clock/sec 1s
