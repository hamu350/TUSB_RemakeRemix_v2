#> time_limit:load/load_once
# 初回ロード時にやりたい処理

# scoreboard作成


# スキル説明変更
# TLEは一部スキルに調節がはいっているため


# forceload
# same tickだとforceload無視されてそうなのでonoff関わらず先に
# 王スポナー
# ここは消すと不都合が起こるのであとで

# ボス特設

# 超作業台

# 職業島

# 初期スポーン(通常世界)

# わこからさんの場所をforceload

# エンドボス色々用アマスタ
# ここだけは設定の有無に関わらず設置する

# ロゴをplace

# チュートリアル建築書き換え
# これすでにあるもの書き換えてるから看板とか花/種などのアイテムもkillしないといけないだろうねぇー今までと違って

# 通常世界スポーン位置の真下にアイテムを置く

# ゲームスタート検知値を初期値に
scoreboard players set Start Game 0

# 初期設定では追加設定がすべてonになってるのでonにしたときの設定を反映させる
# 時計島仕様変更による月島night固定無効化
data modify storage tusb_remake: settings.force_night set value false
time set day
gamerule doDaylightCycle true
# 時送りの盾give村人spawn
# debug時とかバグったりするんでkill
kill @e[type=villager,tag=Shield]
summon villager -52 40.5 16 {Tags:["Shield"],Silent:1b,Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Rotation:[-180F,0F],CustomName:'{"text":"時をかける村人","color":"aqua","bold":true}',VillagerData:{level:99,profession:"minecraft:none"},Offers:{}}

# タイマー用ボスバーどーん
bossbar add time_limit:timer ""
bossbar set time_limit:timer visible true
bossbar set time_limit:timer style notched_10

# 発光用team(デフォルトで使ってるチームの色を変える)


# 時送りの盾初期データset
# player_item_tunner使うんで必要な量だけでいいです
data modify storage time_limit:storage shield_data set value {tag:{version:1,Enchantments: [{lvl: 0s, id: "minecraft:unbreaking"}, {lvl: 0s, id: "minecraft:knockback"}, {lvl: 0s, id: "minecraft:sharpness"}],AttributeModifiers: [{Amount: 0.00d, Slot: "offhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 2, 0, 1], Name: "HP"}, {Amount: 0.0d, Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 2, 0, 2], Name: "SPD"}, {Amount: 0.00d, Slot: "offhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 2, 0, 3], Name: "KB"}, {Amount: 0.00d, Slot: "offhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 2, 0, 4], Name: "ATK"}, {Amount: 0.00d, Slot: "offhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 2, 0, 5], Name: "AMR"}, {Amount: 0.00d, Slot: "offhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 2, 0, 6], Name: "ATS"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 1, 0, 7], Name: "HP"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 1, 0, 8], Name: "SPD"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 1, 0, 9], Name: "KB"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 1, 0, 10], Name: "ATK"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 1, 0, 11], Name: "AMR"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 1, 0, 12], Name: "ATS"}]}}
# data modify storage time_limit:storage shield_data set value {tag:{version:1,Enchantments: [{lvl: 0s, id: "minecraft:unbreaking"}, {lvl: 0s, id: "minecraft:knockback"}, {lvl: 0s, id: "minecraft:sharpness"}],AttributeModifiers: [{Amount: 0.00d, Slot: "offhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 12, 0, 1], Name: "HP"}, {Amount: 0.0d, Slot: "offhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 12, 0, 2], Name: "SPD"}, {Amount: 0.00d, Slot: "offhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 12, 0, 3], Name: "KB"}, {Amount: 0.00d, Slot: "offhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 12, 0, 4], Name: "ATK"}, {Amount: 0.00d, Slot: "offhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 12, 0, 5], Name: "AMR"}, {Amount: 0.00d, Slot: "offhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 12, 0, 6], Name: "ATS"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.max_health", Operation: 2, UUID: [I; 0, 11, 0, 7], Name: "HP"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.movement_speed", Operation: 2, UUID: [I; 0, 11, 0, 8], Name: "SPD"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.knockback_resistance", Operation: 2, UUID: [I; 0, 11, 0, 9], Name: "KB"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.attack_damage", Operation: 2, UUID: [I; 0, 11, 0, 10], Name: "ATK"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.armor", Operation: 2, UUID: [I; 0, 11, 0, 11], Name: "AMR"}, {Amount: 0.00d, Slot: "mainhand", AttributeName: "generic.attack_speed", Operation: 2, UUID: [I; 0, 11, 0, 12], Name: "ATS"}]}}

# tagが多分必要、、、? 
# msg
# function time_limit:load/msg
# ここでdisableするとmsgでひっかかってわろた
