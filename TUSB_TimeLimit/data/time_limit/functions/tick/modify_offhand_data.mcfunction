#> time_limit:tick/modify_offhand_data

# オフハンドにアイテム持っているモブに対して時送りの盾の効果を適応します

# 一旦モブのデータを代入する

# 代入した後時送りの盾と同じattributeと足し算する
# →これスコアに入れてoperationするしかないか？


# Temp score代入用のあれが _ TUSBと、後なんだ? 独自のもの作ってもいいかもなこれ

# 0.00001倍で取ってくる 0.001%まで取れる
# これあれだ、固定値増加とか%とかの値まで取ってこないとうまいこと代入できないぞ、、

# これattributeだけでいいかなーエンチャントまで追加すると地獄になってしまう

# 0.00001倍で取ってくる 0.001%まで取れる
# operationが2なら合体できる、それ以外なら合体できないので無視する

# max health
# execute store result score @s MobAttribute run data get storage time_limit:storage mob_data.tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:2,Slot:"offhand"}] 100000
# execute store result score _ TUSB run data get storage time_limit:storage time_shield.tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Slot:"mainhand"}] 100000

# データ取ったので足し算します
# scoreboard players operation _ TUSB += @s MobAttribute
# 足し算したデータを入れます
# data modify entity @s HandItems[1].tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health"}] set from

# これだけで完結する話ではあったけどこの場合はuuidが被る可能性が大

# これmergeだとなんか入らないしsetだと全て上書きしてしまう
# mergeの場合はすでにリストがあるので合成できなくてだめ
# appendも一緒
# setの場合はすでにあるリストを上書きできるため可能
# そのためリストの要素番号を指定してそれぞれ入れてあげればなんとかなる

# オフハンド分のデータを持ってくる
data modify entity @s HandItems[1].tag.AttributeModifiers append from storage time_limit:storage shield_data.tag.AttributeModifiers[0]
data modify entity @s HandItems[1].tag.AttributeModifiers append from storage time_limit:storage shield_data.tag.AttributeModifiers[1]
data modify entity @s HandItems[1].tag.AttributeModifiers append from storage time_limit:storage shield_data.tag.AttributeModifiers[2]
data modify entity @s HandItems[1].tag.AttributeModifiers append from storage time_limit:storage shield_data.tag.AttributeModifiers[3]
data modify entity @s HandItems[1].tag.AttributeModifiers append from storage time_limit:storage shield_data.tag.AttributeModifiers[4]
data modify entity @s HandItems[1].tag.AttributeModifiers append from storage time_limit:storage shield_data.tag.AttributeModifiers[5]

# data modify entity @e[type=zombie,limit=1,sort=nearest] HandItems[1].tag merge from storage time_limit:storage shield_data.tag
# これはちゃんと入るが元のデータはmergeなのに消える(それよりしたの階層があっても指定されていない場合は無視して消される?)


# これ一旦storageに移して最後に一気にmergeするか?


# speed
# execute store result score @s MobAttribute run data get storage time_limit:storage mob_data.tag.AttributeModifiers[{AttributeName:"minecraft:generic.speed",Operation:2,Slot:"offhand"}] 100000

# antikb
# execute store result score @s MobAttribute run data get storage time_limit:storage mob_data.tag.AttributeModifiers[{AttributeName:"minecraft:generic.knockback_resistance",Operation:2,Slot:"offhand"}] 100000

# dmg
# execute store result score @s MobAttribute run data get storage time_limit:storage mob_data.tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage",Operation:2,Slot:"offhand"}] 100000

# armor
# execute store result score @s MobAttribute run data get storage time_limit:storage mob_data.tag.AttributeModifiers[{AttributeName:"minecraft:generic.armor",Operation:2,Slot:"offhand"}] 100000

# atk speed
# execute store result score @s MobAttribute run data get storage time_limit:storage mob_data.tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_speed",Operation:2,Slot:"offhand"}] 100000