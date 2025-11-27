#> tusb_remake:load/
# リロード時リセット
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

### システムマーカーが何で動かされたか分からないので、ロード時に初期位置にずらす
execute in minecraft:overworld run tp 0-0-1-0-1 -1919.5 6.5 -191.5

### 濃い紫でスコアボードの有無を判定する
# scoreboard objectives setdisplay sidebar.team.dark_purple

### Const 今回は使いたくない！！
data modify storage tusb_remake: Const.ExpMul set value 7

### Settingsが存在していなかったら初期化する
scoreboard objectives setdisplay sidebar.team.dark_purple
execute store success storage tusb_remake: _ byte 1 run scoreboard objectives setdisplay sidebar.team.dark_purple Settings
execute if data storage tusb_remake: {_:false} run function tusb_remake:load/once

### Global
scoreboard objectives add Global dummy
scoreboard objectives add TUSB dummy

# scoreboard players set #ConqCntSkylands Global 0
# scoreboard players set #ConqCntNether Global 0
# scoreboard players set #ConqCntEnd Global 0
# scoreboard players set #ConqCntUnderworld Global 0
# scoreboard players set #ConqCntCloudia Global 0
# scoreboard players set #ConqCntMtTable Global 0
# scoreboard players set #ConqCntGLand Global 0
# scoreboard players set #ConqCntIce Global 0

# scoreboard players set #GameTime Global 0
# scoreboard players set #Random Global 0
# scoreboard players set #ProjectileUpdate Global 0
# scoreboard players set #PastorMax Global 8
# execute store result score #StartTime Global run time query gametime
# scoreboard players set #ConqTimeSec Global 0
# scoreboard players set #EntityCount Global 0
# scoreboard players set #BlockCount Global 0
# scoreboard players set #SkillTargetCount Global 0
# scoreboard players set #NetherBossWaitCount Global 36

### プレイヤー基礎
scoreboard objectives add LeaveGame minecraft.custom:minecraft.leave_game
scoreboard objectives add HP dummy
scoreboard objectives add HPChanging health "HP変化フラグ"
scoreboard objectives add Food dummy
scoreboard objectives add FoodChanging food "満腹度変化フラグ"
scoreboard objectives add Hunger dummy "空腹減少量"
scoreboard objectives add Armor armor "アーマーポイント"
scoreboard objectives add HPMax dummy "最大HP"
scoreboard objectives add FoodMax dummy "最大満腹量"

# scoreboard objectives add RefreshHPMax minecraft.used:minecraft.milk_bucket "最大HP更新フラグ"
scoreboard objectives add HealCount dummy "HP回復量"
## なくせるかも？
scoreboard objectives add EventRank dummy "イベントランク"

scoreboard objectives add TutorialRead dummy "チュートリアル読んだフラグ"
scoreboard objectives add TutorialReading dummy "チュートリアル読んでるフラグ"
scoreboard objectives add Drop minecraft.custom:minecraft.drop

### MP
scoreboard objectives add MP dummy "MP"
scoreboard objectives add MPMax dummy "最大MP"
scoreboard objectives add MPMaxFlag dummy "MP回復済フラグ"
### MP回復タイミング
scoreboard objectives add CoolTickSpan dummy "クールティックスパン"
scoreboard objectives add CoolTickCounter minecraft.custom:time_since_death
scoreboard objectives add MPIncrement dummy "MP定期回復量"
scoreboard objectives add MPConsumption dummy "MP消費量"

### 乱数
scoreboard objectives add Random dummy "乱数"
scoreboard objectives add RndMWC dummy "lag1MWC乱数X"
scoreboard objectives add RndMWCCarry dummy "lag1MWC乱数キャリー"

### ディメンション
scoreboard objectives add USBDimension dummy
scoreboard objectives add AreaChangeFlag dummy
scoreboard objectives add EnderChestOpened minecraft.custom:minecraft.open_enderchest

### ジョブ
scoreboard objectives add Job dummy "職業"
scoreboard objectives add TradedVillager minecraft.custom:minecraft.traded_with_villager
scoreboard objectives add PickupPaper minecraft.picked_up:minecraft.paper

### 経験値
scoreboard objectives add NextExp dummy "必要経験値"
scoreboard objectives add ExpToLevel dummy "次のレベルアップまでの経験値"

### 各ジョブのレベルと残り経験値
scoreboard objectives add Level dummy "レベル"

### 即時スキル(すぐ効果がでるスキル)
scoreboard objectives add InstantSkillA dummy "即時スキルA"
scoreboard objectives add InstantCostA dummy "即時スキルAコスト"
scoreboard objectives add InstantChangeA trigger "即時スキルA変更フラグ"
scoreboard objectives add InstantSkillB dummy "即時スキルB"
scoreboard objectives add InstantCostB dummy "即時スキルBコスト"
scoreboard objectives add InstantChangeB trigger "即時スキルB変更フラグ"

### モードスキル(何かをすると効果がでるモードに変えるスキル)
scoreboard objectives add ModeSkillA dummy "モードスキルA"
scoreboard objectives add ModeCostA dummy "モードスキルAコスト"
scoreboard objectives add ModeChangeA trigger "モードスキルA変更フラグ"
scoreboard objectives add ModeSkillB dummy "モードスキルB"
scoreboard objectives add ModeCostB dummy "モードスキルBコスト"
scoreboard objectives add ModeChangeB trigger "モードスキルB変更フラグ"
scoreboard objectives add CurrentMode dummy "選択中のモードスキル"
scoreboard objectives add CurrentModeCost dummy "選択中モードスキルコスト"
scoreboard objectives add ModeState dummy "モード状態"

### スキル全般
scoreboard objectives add ActivatedSkill dummy "発動スキル"
scoreboard objectives add ChangeSkill dummy "変更先スキル"
scoreboard objectives add ShowSkill dummy "表示スキル"
scoreboard objectives add MPCost dummy "スキル消費MP"

### リスポーン地点変更検知用
scoreboard objectives add SpawnX dummy
scoreboard objectives add SpawnY dummy
scoreboard objectives add SpawnZ dummy

### スキルテーブルを初期化
function tusb_remake:skill/init_table/

### 村人会話 => advancements
scoreboard objectives add PastorFlag trigger "牧師会話フラグ"
scoreboard objectives add AgentFlag trigger "エージェント会話フラグ"
scoreboard objectives add AugurFlag trigger "占い師会話フラグ"
scoreboard objectives add AgentWarpCost dummy "エージェント利用価格"

### 一般
scoreboard objectives add kill trigger "個人killフラグ"

### 達成率
scoreboard objectives add UseEnderEye minecraft.used:minecraft.ender_eye

### 眠ると回復するやつに使ってる？
scoreboard objectives add SleepInBed minecraft.custom:minecraft.sleep_in_bed

### ネザーの火山大爆発
scoreboard objectives add MineNetherrack minecraft.mined:minecraft.netherrack

scoreboard objectives add ItemCount dummy "特定アイテム数"

### 花火の消費
scoreboard objectives add UseFireworkRocket minecraft.used:minecraft.firework_rocket

# scoreboard objectives add UseSpawnEgg minecraft.used:minecraft.spawn_egg

## 印板(いんばん) = 特殊な効果のある設置物 => advancements
# scoreboard objectives add UseArmorStand minecraft.used:minecraft.armor_stand

##
scoreboard objectives add Freshness dummy "誘導羊鮮度"

## モンスターがスキルを使うタイミングとか種類のやつ
scoreboard objectives add MobCastTime dummy "敵キャストタイム"
scoreboard objectives add AbyssSeduce dummy "アビスセデュース"

## トカルト
scoreboard objectives add ISFEncount dummy "トカルトエンカウント"
scoreboard objectives add UseChorus minecraft.used:minecraft.chorus_fruit

## しんだときの処理をするためのトリガー
scoreboard objectives add Deaths minecraft.custom:minecraft.deaths

### 個人ロッカー(めっちゃリメイクしたい(余裕があったら))
# scoreboard objectives add PersonalLocker dummy "個人ロッカー番号"
# scoreboard players set #NextLocker PersonalLocker 100
# ## No.100の部屋
# scoreboard players set 29269ff6-872d-4327-9ab5-9a1807e69292 PersonalLocker 100
# ## No.99の部屋
# scoreboard players set b913fae5-35f1-468e-9f52-b9ad40938ea6 PersonalLocker 99
# ## No.98の部屋
# scoreboard players set 21c17454-ba43-4f07-822f-5fa9899b9ded PersonalLocker 98
# ## No.97の部屋
# scoreboard players set 5965dc9d-88b2-43f1-8998-7f5dab48c5e1 PersonalLocker 97

### スキル発動条件
scoreboard objectives add UseBow minecraft.used:minecraft.bow
scoreboard objectives add UseSnowball minecraft.used:minecraft.snowball
scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add UseFungusStick minecraft.used:minecraft.warped_fungus_on_a_stick
# scoreboard objectives add DropGunpowder minecraft.dropped:minecraft.gunpowder
# scoreboard objectives add DropBone minecraft.dropped:minecraft.bone
# scoreboard objectives add DropRottenFlesh minecraft.dropped:minecraft.rotten_flesh
scoreboard objectives add DamageDealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add DamageDealtAbsorbed minecraft.custom:minecraft.damage_dealt_absorbed
scoreboard objectives add DamageDealtResisted minecraft.custom:minecraft.damage_dealt_resisted

### 実際のダメージ
scoreboard objectives add DamageTaken minecraft.custom:minecraft.damage_taken
### 軽減したダメージ
scoreboard objectives add DamageResisted minecraft.custom:minecraft.damage_resisted
### 吸収したダメージ
scoreboard objectives add DamageAbsorbed minecraft.custom:minecraft.damage_absorbed

### 真空斬り用のスニーク時間検知
scoreboard objectives add ShinkuGiri minecraft.custom:minecraft.sneak_time
### 跳躍用スニーク時間検知
scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time
scoreboard objectives add Jump minecraft.custom:minecraft.jump

# scoreboard objectives add Sneaking minecraft.custom:minecraft.sneak_time
scoreboard objectives add WalkOneCm minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add CrouchOneCm minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add SprintOneCm minecraft.custom:minecraft.sprint_one_cm
# scoreboard objectives add FlyOneCm minecraft.custom:minecraft.fly_one_cm
# scoreboard objectives add PigOneCm minecraft.custom:minecraft.pig_one_cm

### スキル状態管理
scoreboard objectives add IronWill dummy "ノックバック軽減機会ポイント"
scoreboard objectives add NinjaTime dummy "連舞・跳躍効果時間"
scoreboard objectives add Tsuremai dummy "連舞レベル"
scoreboard objectives add Choyaku dummy "跳躍レベル"
scoreboard objectives add KasapLevel dummy "ルカナンレベル"
scoreboard objectives add KasapTimer dummy "ルカナンタイマー"
scoreboard objectives add Kazakiri dummy "風切効果時間"
# scoreboard objectives add CookingState dummy "ワイルドクッキング成否状態"
# scoreboard objectives add WildHealing dummy "ワイルドヒーリング満腹度変化量"
# scoreboard objectives add EnChase dummy "エンチェイスレベル"

scoreboard objectives add CandleTimer dummy "キャンドル設置タイマー"
scoreboard objectives add EnAspir dummy "エンアスピルレベル"
scoreboard objectives add ManaRefresh dummy "MP回復量上昇時間"
scoreboard objectives add ReturnTimer dummy "ルーラ発動時刻"
scoreboard objectives add WindWall dummy "ウィンドウォール効果時間"
# scoreboard objectives add OrderType dummy "つんつん命令タイプ"

scoreboard objectives add Doom dummy "死の宣告カウント"
scoreboard objectives add DoomSecond dummy "死の宣告進行秒管理"

scoreboard objectives add RemainTimer dummy "持続時間"

### スキル同期管理
# scoreboard objectives add TacticalHealBase dummy "タクティカルヒール発動時BaseDamageTaken"
# scoreboard objectives add AspirBase dummy "アスピル時BaseDamageDealt"
# scoreboard objectives add ThunderBolt dummy "サンダーボルト"

scoreboard objectives add RadarVision dummy "レーダーヴィジョン効果時間"

# scoreboard objectives add RaiseSyncCount dummy "レイズ同期カウント"
# scoreboard objectives add RaisedArea dummy "レイズ付与時USBDimension"

### スキル判定
# scoreboard objectives add TargetCheck dummy "ターゲットチェッカー"
scoreboard objectives add ProjectileSkill dummy "投擲物に付与したスキルとレベル"
scoreboard objectives add PotentialSkill dummy "Mobに発動する可能性のあるスキル"

### チーム
team add FriendlyTeam
team modify FriendlyTeam friendlyFire false
team modify FriendlyTeam seeFriendlyInvisibles true
team modify FriendlyTeam collisionRule never
team modify FriendlyTeam deathMessageVisibility always
team modify FriendlyTeam deathMessageVisibility always
team modify FriendlyTeam nametagVisibility always
team add Yellow
team modify Yellow color yellow
team modify Yellow collisionRule never
team add NoCollision
team modify NoCollision collisionRule never

### ゲームルール / ワールド設定
gamerule logAdminCommands false
gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule reducedDebugInfo true
gamerule naturalRegeneration false
gamerule doEntityDrops true
gamerule doFireTick true
gamerule doMobLoot true
gamerule doMobSpawning true
gamerule doTileDrops true
gamerule doInsomnia false
gamerule randomTickSpeed 3
gamerule showDeathMessages true
gamerule spawnRadius 0
gamerule disableElytraMovementCheck true
difficulty hard
defaultgamemode adventure
worldborder center 0 0
worldborder set 7000

### setdisplay
scoreboard objectives setdisplay list Level
scoreboard objectives setdisplay sidebar MP
scoreboard objectives setdisplay belowName HP

### ブロックに対する設定を予約
execute in minecraft:overworld run schedule function tusb_remake:load/block_settings 3s

### １秒タイマーをスケジュール
execute in minecraft:overworld run schedule function tusb_remake:clock/sec 1s
