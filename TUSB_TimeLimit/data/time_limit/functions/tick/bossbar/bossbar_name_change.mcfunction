#> time_limit:tick/bossbar/bossbar_name_change
# ボスバーの数字が一桁だったときに1時間05分09秒みたいな感じで有効数字を揃えたいためにあるfunction

# 本当はこの中身をstorageに入れて中身をいじって出したりするほうがスマートではあるんだろうね。うん

# ノーマルver
execute if score Min Min matches 10.. if score Sec Sec matches 10.. run bossbar set time_limit:timer name [{"text":"残り時間: ","color":"dark_red","bold":true},{"score":{"name":"Hour","objective":"Hour"},"color":"white","bold":false},{"text":"時間","color":"gray","bold":true},{"score":{"name":"Min","objective":"Min"},"color":"white","bold":false},{"text":"分","color":"gray","bold":true},{"score":{"name":"Sec","objective":"Sec"},"color":"white","bold":false},{"text":"秒","color":"gray","bold":true}]
# minだけ1桁
execute if score Min Min matches ..9 if score Sec Sec matches 10.. run bossbar set time_limit:timer name [{"text":"残り時間: ","color":"dark_red","bold":true},{"score":{"name":"Hour","objective":"Hour"},"color":"white","bold":false},{"text":"時間","color":"gray","bold":true},{"text":"0","color":"white","bold":false},{"score":{"name":"Min","objective":"Min"},"color":"white","bold":false},{"text":"分","color":"gray","bold":true},{"score":{"name":"Sec","objective":"Sec"},"color":"white","bold":false},{"text":"秒","color":"gray","bold":true}]
# secだけ1桁
execute if score Min Min matches 10.. if score Sec Sec matches ..9 run bossbar set time_limit:timer name [{"text":"残り時間: ","color":"dark_red","bold":true},{"score":{"name":"Hour","objective":"Hour"},"color":"white","bold":false},{"text":"時間","color":"gray","bold":true},{"score":{"name":"Min","objective":"Min"},"color":"white","bold":false},{"text":"分","color":"gray","bold":true},{"text":"0","color":"white","bold":false},{"score":{"name":"Sec","objective":"Sec"},"color":"white","bold":false},{"text":"秒","color":"gray","bold":true}]
# どっちも1桁
execute if score Min Min matches ..9 if score Sec Sec matches ..9 run bossbar set time_limit:timer name [{"text":"残り時間: ","color":"dark_red","bold":true},{"score":{"name":"Hour","objective":"Hour"},"color":"white","bold":false},{"text":"時間","color":"gray","bold":true},{"text":"0","color":"white","bold":false},{"score":{"name":"Min","objective":"Min"},"color":"white","bold":false},{"text":"分","color":"gray","bold":true},{"text":"0","color":"white","bold":false},{"score":{"name":"Sec","objective":"Sec"},"color":"white","bold":false},{"text":"秒","color":"gray","bold":true}]
