#> time_limit:start
# 職業島から通常世界に誰か行ったらタイマースタート
execute if score Start Game matches 0 run scoreboard players set Start Game 1
# startが1ならタイマーが動くようになってる
# スタート時の音
playsound entity.wither.spawn hostile @a ~ ~ ~ 1 1

# 超作業台レシピ変更
function time_limit:load/change_supercraft_recipe
# わこからさんの取引内容を変更
function time_limit:load/change_record_trade

# あかさめさんのデータを変える
# すごい釣り竿の入れ食いを5に
# これ初期スポーンの下にいるから多分modifyできるよな、、、?
data modify entity 25af5ce7-151a-1e8e-82f2-4eee17b4592a Offers.Recipes[16].sell.tag.Enchantments[{id:"minecraft:lure"}].lvl set value 5

# ボス強化onならここでエンドの構造を変えておく
# どうするかだけ決めておかないと
execute if score Enhance_Boss Option matches 1 run execute in the_end at @e[type=armor_stand,tag=Boss_Marker] run function time_limit:settings/boss_enhance/field_generate/generate

# forceload削除
# タイミングずらさないと多分生成されん
execute in the_end run forceload remove 454 454 545 545
execute in overworld run forceload remove -52 17 -52 17
execute in overworld run forceload remove -2727 -374 -2721 -372
execute in overworld run forceload remove -2800 -360 -2800 -360
execute in overworld run forceload remove 2 2 2 2