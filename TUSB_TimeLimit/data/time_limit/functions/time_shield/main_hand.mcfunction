#> time_limit:time_shield/main_hand

# 手に持ってるデータの時間情報を代入する
# storage同士ではデータの比較ができないので、スコアに入れます
# えーこれ、mainhandとoffhand別に分けて@sで入れないと死にます。
execute store result score @s Before_Version_Mainhand run data get entity @s SelectedItem.tag.version
# afterには完成後の盾のversionが入ってる
# versionなくても実行しないとだよね(デフォのデータ)
execute unless score @s Before_Version_Mainhand matches 0.. run function time_limit:time_shield/change_data_mainhand
# beforeのほうが古いデータで且つbefore afterが一致してないならfunction実行
execute if score @s Before_Version_Mainhand < Ver After_Version run function time_limit:time_shield/change_data_mainhand