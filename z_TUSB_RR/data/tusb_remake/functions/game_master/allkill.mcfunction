#> tusb_remake:game_master/akkkill
#
# 
#
# @within function tusb_remake:game_master/bossdefeat/

# 敵消し
execute as @e[type=armor_stand,tag=Boss_MarkerC] at @s run tag @e[distance=..60,tag=Enemy] add Garbage

tag @e[tag=GM7] add Garbage

tag @e[tag=GMD] add Garbage

tag @e[tag=GM] add Garbage

tag @e[tag=GMend] add Garbage

tag @a remove UNO

forceload remove -2950 -71 -3000 -11

bossbar set minecraft:game_master visible false

clear @a diamond_pickaxe{display:{Name:'{"text":"§e§l全能ノ一","italic":false}',Lore:['{"text":"ノックバック enchantment.level.10000","color":"gray","italic":false}','{"text":"アンデット特攻 enchantment.level.10000","color":"gray","italic":false}','{"text":"フレイム enchantment.level.10000","color":"gray","italic":false}','{"text":"ドロップ増加 Ⅹ","color":"gray","italic":false}','{"text":"火属性 enchantment.level.10000","color":"gray","italic":false}','{"text":"ダメージ増加 enchantment.level.10000","color":"gray","italic":false}','{"text":"効率強化 enchantment.level.10000","color":"gray","italic":false}','{"text":"幸運 Ⅹ","color":"gray","italic":false}','{"text":"§4§l幻の耐久全能","italic":false}','{"text":"§4§l奴にぶちかましてやれ","italic":false}','{"text":" "}','{"text":"利き手に持った時：","color":"gray","italic":false}','{"text":" 5005.5 攻撃力","color":"dark_green","italic":false}','{"text":" 1.2 攻撃速度","color":"dark_green","italic":false}']},HideFlags:3,RepairCost:1000000000,Damage:0,Unbreakable:1b,Enchantments:[{}]}