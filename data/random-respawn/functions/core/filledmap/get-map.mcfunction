# load by random-respawn:core/countdown/timer-start
# @s = None?
#-------------------------------------------------------------------------------------------------------------------------------------------------------------------------


# Edit data
execute if score $gm F-Temp matches 1..4 run data modify storage minecraft:random-respawn FilledMap[0] merge value {Count:1b,tag:{display:{MapColor:3308077},HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:4s},{id:"minecraft:vanishing_curse",lvl:1s}]}}
execute if score $gm F-Temp matches 4 run data modify storage minecraft:random-respawn FilledMap[1] merge value {Count:1b,tag:{display:{MapColor:3308077},HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:5s},{id:"minecraft:vanishing_curse",lvl:1s}]}}
execute if score $gm F-Temp matches 4 run data modify storage minecraft:random-respawn FilledMap[2] merge value {Count:1b,tag:{display:{MapColor:3308077},HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:6s},{id:"minecraft:vanishing_curse",lvl:1s}]}}
execute if score $gm F-Temp matches 4 run data modify storage minecraft:random-respawn FilledMap[3] merge value {Count:1b,tag:{display:{MapColor:3308077},HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:7s},{id:"minecraft:vanishing_curse",lvl:1s}]}}

# Clear
clear @a

# みんなに配ろう!!
execute as @a[team=Player] at @s run summon armor_stand ~ ~-10 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["ILoveFilledMap"]}
schedule function random-respawn:core/filledmap/decoration-map-schedule 1s