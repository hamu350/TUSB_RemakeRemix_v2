#> time_limit:load/load_once_delay

# プレイヤーが読み込まれてから実行したいload_onceコマンド群

# structure placeにより出てきたアイテムをkill
function time_limit:load/replace_item_kill

# チュート9のアイを倒す
# 遅延キル必要あり
# data get entity @s UUIDだとint arrayでしか取れないので下記サイトで変換。
# convert from https://www.soltoder.com/mc-uuid-converter/ 
kill b76b1ebd-b810-4f17-ac78-803f0d69b0d8