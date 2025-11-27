#> time_limit:boss/newstar_king/skill/time_realization/version/1.15/condition_check

# 条件をチェックします


# Ageが0~20ならここだけをscheduleします

# Ageが21~100ならハチを動かします

# Ageが101以降なら消します

# 21~100の間にプレイヤーが当たったらダメージ判定をし、該当のハチは処分されます


# scheduleするのでasをつけろーw

# これAgeを何処かに代入しないといけないのくっそだるいな


# スポーン時にPortalcdを設定して、減ってく値を参照する形式にする
# ageは成長するえんちちにしかはんえいされないっぽい


# PortalCDを取得
execute as @e[type=bee,tag=1_15_bee] store result score @s TUSB run data get entity @s PortalCooldown

# Portalcdを比較して動かす
execute as @e[type=bee,tag=1_15_bee] at @s if score @s TUSB matches ..50 run tp @s ^ ^ ^0.4

# 一定時間経過してるならkill
# タグを付けてるので勝手にやってくれる

# scoreboard reset
execute as @e[type=bee,tag=1_15_bee] run scoreboard players reset @s TUSB

# もしハチの近くにプレイヤーが居るならプレイヤーにダメージ

# execute as @e[type=bee,tag=1_15_bee] at @s if entity @a[dx=1,dy=1,dz=1] run function time_limit:boss/newstar_king/skill/time_realization/version/1.15/damage

# execute as @e[type=bee,tag=1_15_bee] at @s positioned ~-0.25 ~ ~-0.25 if entity @e[type=player,dx=1,dz=1] run execute positioned ~0.25 ~ ~0.25 as @e[type=player,dx=-1,dz=-1] run function time_limit:boss/newstar_king/skill/time_realization/version/1.15/damage
# これで検知できてるわ

execute as @e[type=bee,tag=1_15_bee] at @s as @a[distance=..1] run function time_limit:boss/newstar_king/skill/time_realization/version/1.15/damage

execute as @e[type=bee,tag=1_15_bee] at @s if entity @a[distance=..1] run kill @s

# 後は当たったらハチのキル

# ダメージ与えたならハチをkill

# 予約
execute if entity @e[type=bee,tag=1_15_bee] run schedule function time_limit:boss/newstar_king/skill/time_realization/version/1.15/condition_check 1t

# これが正しい検知のやり方
# これyとzついてないのはつけないと勝手に0が保管されるからかなー？
# execute as @e[type=bee,dx=0] positioned ~-0.5875 ~-0.5875 ~-0.375 if entity @e[type=bee,dx=0]

# ハチのZ10X7Y7
# →0.0625
# 0.625, 0.4375 0.4375

# item replace entity @s armor.head with clock{display:{Name:'{"text":""}'},Enchantments:[{id:"minecraft:sharpness",lvl:255}]}