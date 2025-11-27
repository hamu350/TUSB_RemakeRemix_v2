#> debug:delete_spawner/enter

kill @e[type=armor_stand,limit=1,sort=nearest,tag=Spawner,distance=..5,predicate=tusb_remake:is_vechicle_spawner]
kill @e[type=spawner_minecart,limit=1,tag=SpawnerCore,sort=nearest,distance=..5]