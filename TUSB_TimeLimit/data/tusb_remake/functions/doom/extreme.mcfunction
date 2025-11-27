#> tusb_remake:doom/extreme

# extreme

# 時計島形態を取得
execute store result score _ TUSB run data get storage tusb_remake: clock_stage
# 形態に応じて宣告の時間をセット
execute if score _ TUSB matches 0 run function tusb_remake:doom/extreme_doom/0
execute if score _ TUSB matches 1..2 run function tusb_remake:doom/extreme_doom/1_2
execute if score _ TUSB matches 3 run function tusb_remake:doom/extreme_doom/3
# 30 20 20 10