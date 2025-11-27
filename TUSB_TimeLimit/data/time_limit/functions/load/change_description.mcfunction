#> time_limit:load/change_description

# 狩人説明変更
# 利き手で弓を構え矢を放つから矢を放つへ

# ステークス
data modify storage tusb_remake: skill_table.archer.20.description set value [["矢を放つ"]]
# チェインアロー
data modify storage tusb_remake: skill_table.archer.21.description set value [["矢を放つ"]]
# ブラストアロー
data modify storage tusb_remake: skill_table.archer.23.description set value [["矢を放つ"]]
# バードストライク
data modify storage tusb_remake: skill_table.archer.24.description set value [["矢を放つ"]]
# ガストキャノン
data modify storage tusb_remake: skill_table.archer.25.description set value [["矢を放つ"]]
# フェイタルショット
data modify storage tusb_remake: skill_table.archer.26.description set value [["矢を放つ"]]

# トラップ効果時間短縮

# ルカナン
data modify storage tusb_remake: skill_table.archer.0.duration set value [15]
data modify storage tusb_remake: skill_table.archer.0.range set value [3]
# ボミオス
data modify storage tusb_remake: skill_table.archer.2.duration set value [15]
# ニフラム
data modify storage tusb_remake: skill_table.archer.2.duration set value [15]

# 白魔道士

# ホーリー
data modify storage tusb_remake: skill_table.white_mage.23.range set value [6]
# リジェネレーション
data modify storage tusb_remake: skill_table.white_mage.2.duration set value [45]

# 黒魔道士

# サンダーボルト
data modify storage tusb_remake: skill_table.black_mage.22.description set value [["付近の敵2体に雷を落とす。"]]

# 召喚士

# スノー
data modify storage tusb_remake: skill_table.summoner.0.duration set value [180]
# マーチャント
data modify storage tusb_remake: skill_table.summoner.1.duration set value [180]
# ウルフ
data modify storage tusb_remake: skill_table.summoner.4.duration set value [180]
# ゴーレム
data modify storage tusb_remake: skill_table.summoner.6.duration set value [180]