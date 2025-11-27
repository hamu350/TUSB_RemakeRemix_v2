#> debug:delete_spawner/
# 最寄りのスポナーを消去するメッセージを出します

tellraw @s [{"text": "[System]最寄りのスポナーを消去しますか？ "},{"text": "[削除]", "color": "red", "clickEvent": {"action": "run_command","value": "/function debug:delete_spawner/enter"},"hoverEvent": {"action": "show_text", "contents": "/kill"}}]