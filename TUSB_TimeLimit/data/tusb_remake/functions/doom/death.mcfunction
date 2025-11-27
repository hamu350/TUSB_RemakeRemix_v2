#> tusb_remake:doom/death
#
# 死の宣告死亡処理
#
#@within function doom:**

## 死の宣告
# 引数を設定 全て無視1024dmg
    data modify storage score_damage: Argument set value {Damage:1024,EPF:0,BypassArmor:true,BypassResistance:true,DeathCause:'[{"translate":"%1$sは%2$sを受け入れ生命活動を停止... 死んだのだ","with":[{"selector":"@s"},{"translate": "死の運命","color": "#FF2A2A"}]}]'}
# 対象を実行者にしてfunctionを実行
    execute as @s run function score_damage:api/attack
# 引数を明示的にリセット
    data remove storage score_damage: Argument