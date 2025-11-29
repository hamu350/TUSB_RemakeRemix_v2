#> tusb_remake:load/update/1.1.3/schedule
#
# v1.0.2(1.0.1)からv1.0.3へのアップデート

bossbar add minecraft:game_master "§0§kk§r§4GameMaster§0§kk§r"
bossbar set minecraft:game_master color red
bossbar set minecraft:game_master style notched_10
bossbar set minecraft:game_master visible false
function tusb_remake:game_master/chest/dataset

### gamemasterメイクアップ
scoreboard objectives add MakeupTickC dummy

### gamemaster報酬の数
scoreboard objectives add game_master.reward dummy

### gamemaster緩衝体力
scoreboard objectives add GMA dummy

### gamemaster_end
scoreboard objectives add CountDown dummy


### UNO
scoreboard objectives add UNO trigger

### 爆発回数
scoreboard objectives add blast dummy

setblock -2712 78 -382 minecraft:crimson_sign{GlowingText: 0b, Color: "black", Text4: '{"text":""}', Text3: '{"text":""}', Text2: '{"bold":true,"color":"red","text":"？？？戦の準備部屋へ行く"}', Text1: '{"clickEvent":{"action":"run_command","value":"/function tusb_remake:area/conquer/game_master/prep_room"},"text":""}', id: "minecraft:sign"} replace
execute unless entity @e[tag=Boss_MarkerC] run summon minecraft:armor_stand -2986 69 -41 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["Boss_MarkerC","CantUseEnderChestAreaLarge"]}

# アイテム修正村人の交易を更新
    function tusb_remake:load/itemmurabito

# forceloadを消す
    forceload remove -2986 -41
    forceload remove -2712 -382
# 通知
    schedule function tusb_remake:load/update/1.1.3/schedule.5s 5s