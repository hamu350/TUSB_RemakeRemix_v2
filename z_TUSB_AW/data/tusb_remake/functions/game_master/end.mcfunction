#> tusb_remake:game_master/end
#
# 
#
# @within function tusb_remake:game_master/schedule
me §4あれは...？まさか！？
me §4来るなぁぁぁぁ！！！
function tusb_remake:enemy/skill/game_master/su
tag @s add GMend
tag @s remove GM
effect give @s instant_damage infinite 10 false
tellraw @a[distance=..60] {"translate": "全能ノ一を使い、終わらせる。"}
item replace entity @a[distance=..60] hotbar.4 with diamond_pickaxe{display:{Name:'{"text":"§e§l全能ノ一","italic":false}',Lore:['{"text":"ノックバック enchantment.level.10000","color":"gray","italic":false}','{"text":"アンデット特攻 enchantment.level.10000","color":"gray","italic":false}','{"text":"フレイム enchantment.level.10000","color":"gray","italic":false}','{"text":"ドロップ増加 Ⅹ","color":"gray","italic":false}','{"text":"火属性 enchantment.level.10000","color":"gray","italic":false}','{"text":"ダメージ増加 enchantment.level.10000","color":"gray","italic":false}','{"text":"効率強化 enchantment.level.10000","color":"gray","italic":false}','{"text":"幸運 Ⅹ","color":"gray","italic":false}','{"text":"§4§l幻の耐久全能","italic":false}','{"text":"§4§l奴にぶちかましてやれ","italic":false}','{"text":" "}','{"text":"利き手に持った時：","color":"gray","italic":false}','{"text":" 5005.5 攻撃力","color":"dark_green","italic":false}','{"text":" 1.2 攻撃速度","color":"dark_green","italic":false}']},HideFlags:3,RepairCost:1000000000,Damage:0,Unbreakable:1b,Enchantments:[{}]} 1
scoreboard players set _ CountDown 20
function tusb_remake:game_master/bosswin/end