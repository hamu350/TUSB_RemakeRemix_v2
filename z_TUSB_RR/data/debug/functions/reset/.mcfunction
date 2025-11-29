#> debug:reset/
# 設定のリセット
### Copyright © 2022 赤石愛
### This software is released under the MIT License, see LICENSE.

scoreboard objectives remove Settings 
# ### 観光モード
# scoreboard players set SightseeingDeath Settings 0
# ### デバッグモード
# scoreboard players set Debug Settings 0
# ### 祈り有効モード
# scoreboard players set Prayable Settings 0
# ### 地形破壊
# scoreboard players set MobGriefing Settings 0
# ### 難易度
# scoreboard players set Difficulty Settings 0
# ### 攻略対象最大数
# scoreboard players set MaxPortalCount Settings 50



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
# scoreboard players reset * LeaveGame
scoreboard players reset * HP
# scoreboard players reset * HPChanging
# scoreboard players reset * Food
# scoreboard players reset * FoodChanging
# scoreboard players reset * Hunger 
# scoreboard players reset * Armor
scoreboard players reset * HPMax 
# scoreboard players reset * FoodMax 

# scoreboard players reset * RefreshHPMax
# scoreboard players reset * HealCount 
## なくせるかも？
# scoreboard players reset * EventRank 

# scoreboard players reset * TutorialRead 
# scoreboard players reset * TutorialReading 
# scoreboard players reset * Drop

### MP
scoreboard players reset * MP 
scoreboard players reset * MPMax 
# scoreboard players reset * MPMaxFlag 
### MP回復タイミング
# scoreboard players reset * CoolTickSpan 
# scoreboard players reset * CoolTickCounter
# scoreboard players reset * MPIncrement 
# scoreboard players reset * MPConsumption 

### 乱数
# scoreboard players reset * Random 
# scoreboard players reset * RndMWC 
# scoreboard players reset * RndMWCCarry 

### ディメンション
scoreboard players reset * USBDimension
scoreboard players reset * AreaChangeFlag
scoreboard players reset * EnderChestOpened

### ジョブ
scoreboard players reset * Job 
# scoreboard players reset * TradedVillager
# scoreboard players reset * PickupPaper

### 経験値
scoreboard players reset * NextExp 
scoreboard players reset * ExpToLevel 

### 各ジョブのレベルと残り経験値
scoreboard players reset * Level 

### 即時スキル(すぐ効果がでるスキル)
# scoreboard players reset * InstantSkillA 
# scoreboard players reset * InstantCostA 
# scoreboard players reset * InstantChangeA 
# scoreboard players reset * InstantSkillB 
# scoreboard players reset * InstantCostB 
# scoreboard players reset * InstantChangeB 

### モードスキル(何かをすると効果がでるモードに変えるスキル)
# scoreboard players reset * ModeSkillA 
# scoreboard players reset * ModeCostA 
# scoreboard players reset * ModeChangeA 
# scoreboard players reset * ModeSkillB 
# scoreboard players reset * ModeCostB 
# scoreboard players reset * ModeChangeB 
# scoreboard players reset * CurrentMode 
# scoreboard players reset * CurrentModeCost 
# scoreboard players reset * ModeState 

### スキル全般
# scoreboard players reset * ActivatedSkill 
# scoreboard players reset * ChangeSkill 
# scoreboard players reset * ShowSkill 
# scoreboard players reset * MPCost 

### リスポーン地点変更検知用
# scoreboard players reset * SpawnX
# scoreboard players reset * SpawnY
# scoreboard players reset * SpawnZ

### スキルテーブルを初期化
function tusb_remake:skill/init_table/

### 村人会話 => advancements
# scoreboard players reset * PastorFlag 
# scoreboard players reset * AgentFlag 
# scoreboard players reset * AugurFlag 
# scoreboard players reset * AgentWarpCost 

### 一般
# scoreboard players reset * kill 

### 達成率
scoreboard players reset * UseEnderEye

### 眠ると回復するやつに使ってる？
# scoreboard players reset * SleepInBed

### ネザーの火山大爆発
# scoreboard players reset * MineNetherrack

# scoreboard players reset * ItemCount 

### 花火の消費
# scoreboard players reset * UseFireworkRocket

# scoreboard players reset * UseSpawnEgg

## 印板(いんばん) = 特殊な効果のある設置物 => advancements
# scoreboard players reset * UseArmorStand

##
# scoreboard players reset * Freshness 

## モンスターがスキルを使うタイミングとか種類のやつ
# scoreboard players reset * MobCastTime 
# scoreboard players reset * AbyssSeduce 

## トカルト
scoreboard players reset * ISFEncount 
scoreboard players reset * UseChorus

## しんだときの処理をするためのトリガー
# scoreboard players reset * Deaths

### 個人ロッカー(めっちゃリメイクしたい(余裕があったら))
# scoreboard players reset * PersonalLocker 
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
# scoreboard players reset * UseBow
# scoreboard players reset * UseSnowball
# scoreboard players reset * UseCarrotStick
# scoreboard players reset * UseFungusStick
# scoreboard players reset * DropGunpowder
# scoreboard players reset * DropBone
# scoreboard players reset * DropRottenFlesh
# scoreboard players reset * DamageDealt
# scoreboard players reset * DamageDealtAbsorbed
# scoreboard players reset * DamageDealtResisted

### 実際のダメージ
# scoreboard players reset * DamageTaken
### 軽減したダメージ
# scoreboard players reset * DamageResisted
### 吸収したダメージ
# scoreboard players reset * DamageAbsorbed

### 真空斬り用のスニーク時間検知
# scoreboard players reset * ShinkuGiri
### 跳躍用スニーク時間検知
# scoreboard players reset * SneakTime
# scoreboard players reset * Jump

# scoreboard players reset * Sneaking
# scoreboard players reset * WalkOneCm
# scoreboard players reset * CrouchOneCm
# scoreboard players reset * SprintOneCm
# scoreboard players reset * FlyOneCm
# scoreboard players reset * PigOneCm

### スキル状態管理
scoreboard players reset * IronWill 
scoreboard players reset * NinjaTime 
scoreboard players reset * Tsuremai 
scoreboard players reset * Choyaku 
scoreboard players reset * seiyou 
scoreboard players reset * KasapLevel 
scoreboard players reset * KasapTimer 
scoreboard players reset * Kazakiri 
scoreboard players reset * petto 
scoreboard players reset * mazikaru 
# scoreboard players reset * CookingState 
# scoreboard players reset * WildHealing 
# scoreboard players reset * EnChase 

scoreboard players reset * CandleTimer 
scoreboard players reset * EnAspir 
scoreboard players reset * ManaRefresh 
scoreboard players reset * ReturnTimer 
scoreboard players reset * WindWall 
# scoreboard players reset * OrderType 

scoreboard players reset * Doom 
scoreboard players reset * DoomSecond 

scoreboard players reset * RemainTimer 

### スキル同期管理
# scoreboard players reset * TacticalHealBase 
# scoreboard players reset * AspirBase 
# scoreboard players reset * ThunderBolt 

scoreboard players reset * RadarVision 

# scoreboard players reset * RaiseSyncCount 
# scoreboard players reset * RaisedArea 

### スキル判定
# scoreboard players reset * TargetCheck 
scoreboard players reset * ProjectileSkill 
scoreboard players reset * PotentialSkill 

### ハードコアモード
scoreboard players reset * hcmode
data remove storage tusb_remake: settings.hardcore

### トカルトモード
scoreboard players reset * isfmode
data remove storage tusb_remake: settings.toculting

### タイムリミットモード
scoreboard players reset * tlmode
data remove storage tusb_remake: settings.time_limit

### インフィニティボスメイクアップ
scoreboard players reset * MakeupTickB

### インフィニティボス報酬の数
scoreboard players reset * infinity_boss.reward

### トータルEXP
scoreboard players reset * TotalXp

### OhMyDatぶちけし
scoreboard players reset * OhMyDat
scoreboard players reset * OhMyDatID
