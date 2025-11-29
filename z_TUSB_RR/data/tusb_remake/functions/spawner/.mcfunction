#> tusb_remake:spawner/
# スポナーのアマスタの毎tick処理

# 更新済みかを確かめる(mobを更新したらこの値を変更する)
scoreboard players set _ SpawnerUpdate 1
# 更新済みでなければfunctionを実行
execute if score @s SpawnerUpdate < _ SpawnerUpdate run function tusb_remake:spawner/update/


# オーラスポナー
execute if entity @s[tag=AuraSpawner] run function tusb_remake:spawner/aura