#> tusb_aw:enemy/skill/genesis_sama/
# 開闢様のスキル

#me は 試しにスキルを使用した！
#聖天飛翔：テレポート（奈落か一定間隔で使用）
execute if score @s MobCastTime matches 0..4 run function tusb_remake:enemy/skill/genesis_sama/teleport
#極光の祝福：開闢様自身にバフ
execute if score @s MobCastTime matches 5..7 run function tusb_remake:enemy/skill/genesis_sama/syukuhuku
#昇天の誘い：プレイヤーを浮遊させる
execute if score @s MobCastTime matches 8..10 run function tusb_remake:enemy/skill/genesis_sama/izanai
#天閃光：周囲のプレイヤーを盲目にする
execute if score @s MobCastTime matches 11..14 run function tusb_remake:enemy/skill/genesis_sama/sennkou
#聖合ノ秩序：周囲32mのプレイヤーのバフを全消去する
execute if score @s MobCastTime matches 15..19 run function tusb_remake:enemy/skill/genesis_sama/tituzyo