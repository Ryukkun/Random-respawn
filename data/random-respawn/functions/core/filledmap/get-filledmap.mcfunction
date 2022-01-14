# load by random-respawn:core/countdown/timer-start
# @s = None?
#-----------------------------

# reset storage
data remove storage minecraft:random-respawn FilledMap

# Get filled_map
execute if score $gm F-Temp matches 1..4 run data modify storage random-respawn FilledMap append from entity @s Inventory.[{Slot:9b}]
execute if score $gm F-Temp matches 4 run data modify storage random-respawn FilledMap append from entity @s Inventory.[{Slot:10b}]
execute if score $gm F-Temp matches 4 run data modify storage random-respawn FilledMap append from entity @s Inventory.[{Slot:11b}]
execute if score $gm F-Temp matches 4 run data modify storage random-respawn FilledMap append from entity @s Inventory.[{Slot:12b}]

# Edit data
execute if score $gm F-Temp matches 1..4 run data modify storage minecraft:random-respawn FilledMap[0] merge value {Count:1b,tag:{display:{MapColor:3308077},HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:4s},{id:"minecraft:vanishing_curse",lvl:1s}]}}
execute if score $gm F-Temp matches 4 run data modify storage minecraft:random-respawn FilledMap[1] merge value {Count:1b,tag:{display:{MapColor:3308077},HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:5s},{id:"minecraft:vanishing_curse",lvl:1s}]}}
execute if score $gm F-Temp matches 4 run data modify storage minecraft:random-respawn FilledMap[2] merge value {Count:1b,tag:{display:{MapColor:3308077},HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:6s},{id:"minecraft:vanishing_curse",lvl:1s}]}}
execute if score $gm F-Temp matches 4 run data modify storage minecraft:random-respawn FilledMap[3] merge value {Count:1b,tag:{display:{MapColor:3308077},HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:7s},{id:"minecraft:vanishing_curse",lvl:1s}]}}

# Clear
#clear @a

# みんなに配ろう!!
execute as @a[team=Player] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["ILoveFilledMap"]}
execute if score $gm F-Temp matches 1..4 as @e[tag=ILoveFilledMap] run data modify entity @s ArmorItems[3] set from storage minecraft:random-respawn FilledMap[0]
execute if score $gm F-Temp matches 4 as @e[tag=ILoveFilledMap] run data modify entity @s ArmorItems[2] set from storage minecraft:random-respawn FilledMap[1]
execute if score $gm F-Temp matches 4 as @e[tag=ILoveFilledMap] run data modify entity @s ArmorItems[1] set from storage minecraft:random-respawn FilledMap[2]
execute if score $gm F-Temp matches 4 as @e[tag=ILoveFilledMap] run data modify entity @s ArmorItems[0] set from storage minecraft:random-respawn FilledMap[3]


# デコレーションケーキ食べたい-----------------------------------------------------

### みんな乱数ほしい顔してた
execute at @e[tag=ILoveFilledMap] at @s run function random-respawn:core/random-number

### デコレーション実演
execute if score $gm F-Temp matches 1..4 as @e[tag=ILoveFilledMap] run data modify entity @s ArmorItems[3].tag merge value {Decorations:[{x:0b,z:0b,type:4b,rot:180.0d,id:""}]}