#> time_limit:boss/newstar_king/enter

# ボス突入範囲に入ったとき処理
# ワープ
tp @s 500 101 500
# tag付与
# 観戦は対象外でいいかなーと
tag @s[gamemode=!spectator] add Boss_Fighting
# ダイヤ以上の防具耐久値を無限にします
# ダイヤhelm
data modify storage player_item_tuner: condition.if set value {id:"minecraft:diamond_helmet"}
data modify storage player_item_tuner: result.merge set value {tag:{Unbreakable:true}}
function #player_item_tuner:modify/inventory
# ダイヤcp
data modify storage player_item_tuner: condition.if set value {id:"minecraft:diamond_chestplate"}
data modify storage player_item_tuner: result.merge set value {tag:{Unbreakable:true}}
function #player_item_tuner:modify/inventory
# ダイヤlegs
data modify storage player_item_tuner: condition.if set value {id:"minecraft:diamond_leggings"}
data modify storage player_item_tuner: result.merge set value {tag:{Unbreakable:true}}
function #player_item_tuner:modify/inventory
# ダイヤboots
data modify storage player_item_tuner: condition.if set value {id:"minecraft:diamond_boots"}
data modify storage player_item_tuner: result.merge set value {tag:{Unbreakable:true}}
function #player_item_tuner:modify/inventory
# ネザライトhelm
data modify storage player_item_tuner: condition.if set value {id:"minecraft:netherite_helmet"}
data modify storage player_item_tuner: result.merge set value {tag:{Unbreakable:true}}
function #player_item_tuner:modify/inventory
# ネザライトcp
data modify storage player_item_tuner: condition.if set value {id:"minecraft:netherite_chestplate"}
data modify storage player_item_tuner: result.merge set value {tag:{Unbreakable:true}}
function #player_item_tuner:modify/inventory
# ネザライトlegs
data modify storage player_item_tuner: condition.if set value {id:"minecraft:netherite_leggings"}
data modify storage player_item_tuner: result.merge set value {tag:{Unbreakable:true}}
function #player_item_tuner:modify/inventory
# ネザライトboots
data modify storage player_item_tuner: condition.if set value {id:"minecraft:netherite_boots"}
data modify storage player_item_tuner: result.merge set value {tag:{Unbreakable:true}}
function #player_item_tuner:modify/inventory
# 初回突入なら初回限定処理
execute unless score First Enter_Boss matches 1 run function time_limit:boss/newstar_king/first_enter

# ダイヤ防具の耐久値を壊れないようにします

# data modify entity @e[limit=1,type=item] Item.tag.Unbreakable set value 1

# ロストpotの削除

# ロストオブデッド
execute if data entity @s Inventory[].tag{CustomPotionEffects:[{ShowParticles: 1b, Duration:20, Id:7b, Amplifier:29b}], display:{Name:'{"text":"ロスト・オブ・デッド"}'}} run clear @s splash_potion{CustomPotionEffects:[{ShowParticles: 1b, Duration:20, Id:7b, Amplifier:29b}], display:{Name:'{"text":"ロスト・オブ・デッド"}'}}
# ロストオブライブズ
execute if data entity @s Inventory[].tag{CustomPotionEffects: [{ShowParticles: 1b, Duration: 20, Id: 6b, Amplifier: 29b}], display:{Name: '{"text":"§8ロスト・オブ・ライブズ(絶対的即死)"}'}} run clear @s splash_potion{CustomPotionEffects: [{ShowParticles: 1b, Duration: 20, Id: 6b, Amplifier: 29b}], display:{Name: '{"text":"§8ロスト・オブ・ライブズ(絶対的即死)"}'}}

# 削除演出いるかなぁ