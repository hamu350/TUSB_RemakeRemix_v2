#> remake_remix:villager/
# 付近の村人の毎tick処理

# 更新済みかを確かめる(スポナーを更新したらこの値を変更する)
scoreboard players set _ VillagerUpdate 1
# 更新済みでなければfunctionを実行
execute unless score @s VillagerUpdate = _ VillagerUpdate run function remake_remix:villager/update/