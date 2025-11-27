#> time_limit:boss/newstar_king/first_enter

# 初回突入時限定処理
execute in the_end run summon sheep 500.0 101 500.0 {NoGravity:1b,Silent:1b,CustomNameVisible:1b,DeathLootTable:"time_limit:noloot/no_loot",NoAI:1b,Health:0.1f,Tags:["Boss_Spawn","TypeChecked"],CustomName:'[{"text":"Time","color":"aqua","obfuscated":true},{"text":"迷える羊毛","color":"dark_aqua","obfuscated":false},{"text":"Time","color":"aqua","obfuscated":true}]',ArmorItems:[{},{},{},{id:"minecraft:structure_void",Count:1b,tag:{Boss:true}}],ArmorDropChances:[0.085F,0.085F,0.085F,1.000F],Attributes:[{Name:"generic.max_health",Base:0.1}]}
# スコア増やす
scoreboard players set First Enter_Boss 1