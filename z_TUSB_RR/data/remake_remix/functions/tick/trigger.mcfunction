#> remake_remix:tick/trigger

execute if score @s hcmode matches 1 run function remake_remix:hcmode/no

execute if score @s hcmode matches 1 run scoreboard players reset @s hcmode

execute if score @s tlmode matches 1 run function remake_remix:tlmode/no

execute if score @s tlmode matches 1 run scoreboard players reset @s tlmode

execute if score @s isfmode matches 1 run function remake_remix:tlmode/no

execute if score @s isfmode matches 1 run scoreboard players reset @s isfmode

execute if score @s UNO matches 1 run function tusb_remake:enemy/skill/game_master/1/uno

execute if score @s UNO matches 1 run scoreboard players reset @s UNO
