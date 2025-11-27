#> tusb_remake:player/death/kyoumei/messege/custom_name

# メッセージを表示するだけ！簡単！
    tellraw @a {"translate": "* %1$s の§b§l魂§rと %2$s が§c共鳴§rした！","with": [{"selector":"@s"},{"storage": "_:","nbt": "_.KyoumeiItems[-1].tag.display.Name","interpret": true}],"hoverEvent":{"action":"show_text","contents":"魂の共鳴が付与されたアイテムが所有者の魂と共鳴し、その手に戻った"}}