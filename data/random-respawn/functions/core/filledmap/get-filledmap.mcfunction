
#reset storage
data remove storage minecraft:random-respawn FilledMap

#Get filled_map
execute if score $gm F-Temp matches 1..4 run data modify storage random-respawn FilledMap append from entity @s Inventory.[{Slot:9b}]
execute if score $gm F-Temp matches 4 run data modify storage random-respawn FilledMap append from entity @s Inventory.[{Slot:10b}]
execute if score $gm F-Temp matches 4 run data modify storage random-respawn FilledMap append from entity @s Inventory.[{Slot:11b}]
execute if score $gm F-Temp matches 4 run data modify storage random-respawn FilledMap append from entity @s Inventory.[{Slot:12b}]

#Edit data
execute if score $gm F-Temp matches 1..4 run data modify storage minecraft:random-respawn FilledMap[0].tag set value {display:{MapColor:6684927},HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:4s},{id:"minecraft:vanishing_curse",lvl:1s}]}
execute if score $gm F-Temp matches 1..4 run data modify storage minecraft:random-respawn FilledMap[0].Count set value 1b

execute if score $gm F-Temp matches 4 run data modify storage minecraft:random-respawn FilledMap[1].tag set value {display:{MapColor:6684927},HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:5s},{id:"minecraft:vanishing_curse",lvl:1s}]}
execute if score $gm F-Temp matches 4 run data modify storage minecraft:random-respawn FilledMap[1].Count set value 1b
execute if score $gm F-Temp matches 4 run data modify storage minecraft:random-respawn FilledMap[2].tag set value {display:{MapColor:6684927},HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:6s},{id:"minecraft:vanishing_curse",lvl:1s}]}
execute if score $gm F-Temp matches 4 run data modify storage minecraft:random-respawn FilledMap[2].Count set value 1b
execute if score $gm F-Temp matches 4 run data modify storage minecraft:random-respawn FilledMap[3].tag set value {display:{MapColor:6684927},HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:7s},{id:"minecraft:vanishing_curse",lvl:1s}]}
execute if score $gm F-Temp matches 4 run data modify storage minecraft:random-respawn FilledMap[3].Count set value 1b