#> tusb_remake:skill/summoner/tsuntsun/fungus/spell
# つんつん(キノコ棒)を詠唱(624X)
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

###
scoreboard players operation @s ActivatedSkill = @s CurrentMode
scoreboard players operation @s MPConsumption = @s CurrentModeCost
### MPチェック
function tusb_remake:skill/check_mp/

scoreboard players operation _ ActivatedSkill = @s ActivatedSkill
execute if score _ ActivatedSkill matches 6240..6249 run function tusb_remake:skill/summoner/tsuntsun/fungus/cast


### 火薬　OrderType 0
# scoreboard players set @a[score_CurrentMode_min=6240,score_CurrentMode=6249,score_DropGunpowder_min=1] OrderType 0	 	アイテムドロップ

### キノコ棒   => 攻撃技
### 技を使う


# execute @a[score_ActivatedSkill_min=6240,score_ActivatedSkill=6240] ~ ~ ~ /execute @e[distance=..15,type=SnowMan,team=FriendlyTeam] ~ ~ ~ /effect @a[distance=..10] minecraft:haste 20 1 true
# execute @a[score_ActivatedSkill_min=6241,score_ActivatedSkill=6241] ~ ~ ~ /execute @e[distance=..15,type=SnowMan,team=FriendlyTeam] ~ ~ ~ /effect @a[distance=..10] minecraft:haste 20 3 true

### 骨(敵に向かって飛んでいく)
# execute @a[score_ActivatedSkill_min=6242,score_ActivatedSkill=6243] ~ ~ ~ /execute @e[distance=..15,type=!Player,team=FriendlyTeam] ~ ~ ~ /playsound entity.endermen.teleport master @a[distance=..16] ~ ~ ~ 1 2 0
# execute @a[score_ActivatedSkill_min=6242,score_ActivatedSkill=6243] ~ ~ ~ /execute @e[distance=..15,type=!Player,team=FriendlyTeam] ~ ~ ~ /particle portal ~ ~1 ~ 0.2 0.5 0.2 0 90 force	条件付き
# execute @a[score_ActivatedSkill_min=6242,score_ActivatedSkill=6243] ~ ~ ~ /entitydata @e[distance=..15,type=!Player,team=FriendlyTeam] {HandItems:[{id:minecraft:wool,Damage:0s,Count:0b,tag:{AttributeModifiers:[{Name:”ResetTarget”,AttributeName:”generic.followRange”,Operation:2,Amount:-1d,UUIDMost:101l,UUIDLeast:2l,Slot:”mainhand”}]}}]}	 
# clone -1920 ~2 ~ -1920 ~-1 ~ -1920 ~-1 ~ filtered force minecraft:command_block 5 ###ターゲットリセット解除	条件付き
# execute @a[score_ActivatedSkill_min=6242,score_ActivatedSkill=6242] ~ ~ ~ /execute @e[distance=..15,type=!Player,team=FriendlyTeam] ~ ~ ~ /tp @e[dx=0,c=1] @e[distance=..10,type=!Player,team=!FriendlyTeam,tag=Enemy,c=1]	 
# execute @a[score_ActivatedSkill_min=6243,score_ActivatedSkill=6243] ~ ~ ~ /execute @e[distance=..15,type=!Player,team=FriendlyTeam] ~ ~ ~ /tp @e[dx=0,c=1] @e[distance=..20,type=!Player,team=!FriendlyTeam,tag=Enemy,c=1]	


# execute @a[score_ActivatedSkill_min=6244,score_ActivatedSkill=6249] ~ ~ ~ /execute @e[distance=..15,type=!Player,team=FriendlyTeam,tag=!CooldownRequiredLong] ~ ~ ~ /playsound entity.guardian.attack master @a[distance=..16] ~ ~ ~ 1 1.682 0	 
# execute @a[score_ActivatedSkill_min=6244,score_ActivatedSkill=6249] ~ ~ ~ /execute @e[distance=..15,type=!Player,team=FriendlyTeam,tag=!CooldownRequiredLong] ~ ~ ~ /particle endRod ~ ~1 ~ 0.2 0.5 0.2 0.1 30 force	条件付き
# execute @a[score_ActivatedSkill_min=6244,score_ActivatedSkill=6249] ~ ~ ~ /entitydata @e[distance=..15,type=!Player,team=FriendlyTeam,tag=!CooldownRequiredLong] {HandItems:[{id:minecraft:wool,Damage:0s,Count:0b,tag:{AttributeModifiers:[{Name:”PetFollow+”,AttributeName:”generic.followRange”,Operation:1,Amount:0.5d,UUIDMost:101l,UUIDLeast:3l,Slot:”mainhand”},{Name:”PetAttack+”,AttributeName:”generic.attackDamage”,Operation:1,Amount:0.5d,UUIDMost:101l,UUIDLeast:4l,Slot:”mainhand”},{Name:”PetHealth+”,AttributeName:”generic.maxHealth”,Operation:1,Amount:0.5d,UUIDMost:101l,UUIDLeast:5l,Slot:”mainhand”},{Name:”PetSpeed+”,AttributeName:”generic.movementSpeed”,Operation:1,Amount:0.5d,UUIDMost:101l,UUIDLeast:6l,Slot:”mainhand”},{Name:”PetDef+”,AttributeName:”generic.armor”,Operation:1,Amount:0.5d,UUIDMost:101l,UUIDLeast:7l,Slot:”mainhand”}]}}],ActiveEffects:[{Id:10,Duration:1200,Amplifier:4b,ShowParticles:true},{Id:11,Duration:1200,Amplifier:2b,ShowParticles:true},{Id:12,Duration:1200,Amplifier:1b,ShowParticles:true},{Id:13,Duration:1200,Amplifier:1b,ShowParticles:true}]}	 
# execute @a[score_ActivatedSkill_min=6244,score_ActivatedSkill=6249] ~ ~ ~ /effect @e[distance=..15,type=!Player,team=FriendlyTeam,tag=!CooldownRequiredLong] minecraft:instant_health 1 3 false	 
# execute @a[score_ActivatedSkill_min=6244,score_ActivatedSkill=6244] ~ ~ ~ /entitydata @e[distance=..15,type=!Player,team=FriendlyTeam,tag=!CooldownRequiredLong] {PortalCooldown:900}	 
# execute @a[score_ActivatedSkill_min=6245,score_ActivatedSkill=6249] ~ ~ ~ /entitydata @e[distance=..15,type=!Player,team=FriendlyTeam,tag=!CooldownRequiredLong] {PortalCooldown:1800}	 
# execute @a[score_ActivatedSkill_min=6244,score_ActivatedSkill=6249] ~ ~ ~ /scoreboard players tag @e[distance=..15,type=!Player,team=FriendlyTeam,tag=!CooldownRequiredLong] add CooldownRequiredLong
