#> core:load/once
# 設定のリセット
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard objectives add Settings dummy "設定"
### 観光モード
scoreboard players set DeathCount Settings 0
### デバッグモード
scoreboard players set Debug Settings 0
### 祈り有効モード
scoreboard players set Prayable Settings 0
### 地形破壊
scoreboard players set MobGriefing Settings 0
### 難易度
scoreboard players set Difficulty Settings 0
### 攻略対象最大数
scoreboard players set MaxPortalCount Settings 80

### ライブラリ用
scoreboard objectives add Temporary dummy
scoreboard objectives add Const dummy

### スポナー用score
scoreboard objectives add SpawnerId dummy "スポナーId"
scoreboard objectives add SpawnerUpdate dummy "スポナーのアップデート"

### mob用score
scoreboard objectives add MobId dummy "Mobの識別子"

### 村人用score
scoreboard objectives add VillagerId dummy "村人の識別子"
scoreboard objectives add VillagerUpdate dummy "村人のアップデート"

### Global
scoreboard objectives add Global dummy
scoreboard objectives add TUSB dummy

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
### RR追加 合計経験値量
scoreboard objectives add TotalXp dummy "合計経験値量"
scoreboard players set $Global TotalXp 0

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

# 500スキルフラグ
data modify storage tusb_remake: skill_liberation set value 0b

### スキルテーブルを初期化
function skill:init_table/

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

### 予感
scoreboard objectives add ChooseEvent dummy "予感分岐"
scoreboard objectives add Freshness dummy "誘導羊鮮度"

## モンスターがスキルを使うタイミングとか種類のやつ
scoreboard objectives add MobCastTime dummy "敵キャストタイム"
scoreboard objectives add AbyssSeduce dummy "アビスセデュース"

## トカルト
scoreboard objectives add UseChorus minecraft.used:minecraft.chorus_fruit

## しんだときの処理をするためのトリガー
scoreboard objectives add Deaths minecraft.custom:minecraft.deaths

### スキル発動条件
scoreboard objectives add UseBow minecraft.used:minecraft.bow
scoreboard objectives add UseSnowball minecraft.used:minecraft.snowball
scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add UseFungusStick minecraft.used:minecraft.warped_fungus_on_a_stick
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

scoreboard objectives add WalkOneCm minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add CrouchOneCm minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add SprintOneCm minecraft.custom:minecraft.sprint_one_cm

### スキル状態管理
scoreboard objectives add IronWill dummy "ノックバック軽減機会ポイント"
scoreboard objectives add NinjaTime dummy "連舞・跳躍効果時間"
scoreboard objectives add Tsuremai dummy "連舞レベル"
scoreboard objectives add Choyaku dummy "跳躍レベル"
scoreboard objectives add seiyou dummy "靖妖レベル"
scoreboard objectives add Syungoku dummy "瞬獄殺レベル"
scoreboard objectives add KasapLevel dummy "ルカナンレベル"
scoreboard objectives add KasapTimer dummy "ルカナンタイマー"
scoreboard objectives add Kazakiri dummy "風切効果時間"
scoreboard objectives add petto dummy "ペットの数"
scoreboard objectives add mazikaru dummy "敵の数"

scoreboard objectives add CandleTimer dummy "キャンドル設置タイマー"
scoreboard objectives add EnAspir dummy "エンアスピルレベル"
scoreboard objectives add ManaRefresh dummy "MP回復量上昇時間"
scoreboard objectives add ReturnTimer dummy "ルーラ発動時刻"
scoreboard objectives add WindWall dummy "ウィンドウォール効果時間"

scoreboard objectives add Doom dummy "死の宣告カウント"
scoreboard objectives add DoomSecond dummy "死の宣告進行秒管理"

scoreboard objectives add RemainTimer dummy "持続時間"

### スキル同期管理
scoreboard objectives add RadarVision dummy "レーダーヴィジョン効果時間"

### スキル判定
scoreboard objectives add ProjectileSkill dummy "投擲物に付与したスキルとレベル"
scoreboard objectives add PotentialSkill dummy "Mobに発動する可能性のあるスキル"

### チーム
team add FriendlyTeam
team modify FriendlyTeam color gold
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
team add Boss
team modify Boss color red

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
gamerule doWardenSpawning true
gamerule doTraderSpawning true
gamerule randomTickSpeed 3
gamerule showDeathMessages true
gamerule spawnRadius 0
gamerule disableElytraMovementCheck true
gamerule mobGriefing false
difficulty hard
defaultgamemode adventure
worldborder center 0 0
worldborder set 7000

### setdisplay
scoreboard objectives setdisplay list Level
scoreboard objectives setdisplay sidebar MP
scoreboard objectives setdisplay belowName HP
scoreboard players reset * MP

### ワールド初期設定
time set 14000
weather rain 15
data modify storage tusb_remake: area_name set value {underworld:"???",cloudia:"???",table_mountain:"???",gullivers_land:"???",tocult_colde:"???"}
data modify storage tusb_remake: conquer.count set value {skyland:0,nether:0,end:0,underworld:0,cloudia:0,table_mountain:0,gullivers_land:0,tocult_colde:0}
data modify storage tusb_remake: nether_boss_count set value 1
data modify storage tusb_remake: nether_boss_clear set value false

### 最初は夜固定
gamerule doDaylightCycle false
data modify storage tusb_remake: settings set value {force_night:true}

### キープインベントリあり
gamerule keepInventory true
data modify storage tusb_remake: settings.is_sightseeing set value false

### 苗木を既に入手しているかどうか
data modify storage tusb_remake: settings.saplings set value {oak:false,birch:false,spruce:false,jungle:false,acacia:false,dark_oak:false}

### ワープポータル初期化しておく
data remove storage tusb_remake: portal

### ゲームが始まった時刻を記録しておく
execute store result storage tusb_remake: start_time int 1 run time query gametime

### スキルスロットのタイトルを設定
data modify storage tusb_remake: skill_slot_titles set value {instant:{a:'[{"text":"サポートアクション","color":"yellow"},{"text":"-ルビー-","color":"red"}]',b:'[{"text":"サポートアクション","color":"yellow"},{"text":"-サファイア-","color":"dark_aqua"}]'},mode:{a:'[{"text":"モードスキル","color":"yellow"},{"text":"-ルビー-","color":"red"}]',b:'[{"text":"モードスキル","color":"yellow"},{"text":"-サファイア-","color":"dark_aqua"}]'}}


### TLEスコア

# 印判用代入スコア
scoreboard objectives add TUSB_sub dummy

# クロスボウ検知
scoreboard objectives add UseCrossBow minecraft.used:minecraft.crossbow

# 実績用スコア
scoreboard objectives add ConquerIsland dummy

# メニュートリガースコア
scoreboard objectives add _ dummy {"text":"一時変数"}
scoreboard objectives add ShowMenu trigger {"text": "メニュー表示"}
scoreboard objectives add ChangeSkillSet trigger {"text": "スキル変更表示"}
scoreboard objectives add SkillSetting trigger {"text": "スキル設定表示"}
scoreboard objectives add SneakingTime minecraft.custom:sneak_time {"text":"スニーク時間"}
scoreboard objectives add SneakFrequency dummy {"text":"スニーク頻度"}

# 死亡検知用スコア
scoreboard objectives add DeathCount deathCount

### RR追加

# トカルトモード
scoreboard objectives add isfmode trigger

# ハードコアモード
scoreboard objectives add hcmode trigger

# gamemaster_end
scoreboard objectives add CountDown dummy

# 生存tick
scoreboard objectives add LiveTime dummy

# トカルト無効score
scoreboard objectives add TocultInvalid dummy

# 煉獄マグマ無効score
scoreboard objectives add PurgatoryInvalid dummy

# 必要経験値減少係数
scoreboard objectives add ExpReduce dummy

# シュルカーボックス
execute in overworld run forceload add 3500 3500 3500 3500
execute in the_nether run forceload add 3500 3500 3500 3500
execute in the_end run forceload add 3500 3500 3500 3500
schedule function core:load/set_shulker_box 1t

# 定数設定
function core:load/define_const

# debug関連
function debug:load/

# ver設定
data modify storage tusb_remake: settings.version set value "2.0.0"
