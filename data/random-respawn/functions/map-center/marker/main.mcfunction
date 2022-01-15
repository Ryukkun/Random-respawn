execute at @s run summon minecraft:marker ~ ~ ~ {NoGravity:1b,Silent:1b,Tags:["map-return"]}
tp @e[tag=map-return,limit=1] @s
execute at @s run forceload add ~ ~

execute store result score $PlayerX F-MapCenter run data get entity @s Pos[0]
execute store result score $PlayerZ F-MapCenter run data get entity @s Pos[2]
scoreboard players operation $DistanceX F-MapCenter = $MapCenterX F-MapCenter
scoreboard players operation $DistanceZ F-MapCenter = $MapCenterZ F-MapCenter
scoreboard players operation $DistanceX F-MapCenter -= $PlayerX F-MapCenter
scoreboard players operation $DistanceZ F-MapCenter -= $PlayerZ F-MapCenter



execute unless score $DistanceX F-MapCenter matches 0 run scoreboard players operation $Distance F-MapCenter = $DistanceX F-MapCenter
execute unless score $DistanceX F-MapCenter matches 0 run tp @s ~ ~ ~ -90 0
execute unless score $DistanceX F-MapCenter matches 0 run function random-respawn:map-center/marker/calc

execute unless score $DistanceZ F-MapCenter matches 0 run scoreboard players operation $Distance F-MapCenter = $DistanceZ F-MapCenter
execute unless score $DistanceZ F-MapCenter matches 0 at @s run tp @s ~ ~ ~ 0 0
execute unless score $DistanceZ F-MapCenter matches 0 run function random-respawn:map-center/marker/calc

execute at @s align xz run summon minecraft:armor_stand ~ -70 ~ {NoGravity:1b,Silent:1b,Tags:["map-center"]}
execute at @s run forceload add ~ ~

tp @s @e[tag=map-return,limit=1]
execute at @s run forceload remove ~ ~
kill @e[tag=map-return,type=marker]