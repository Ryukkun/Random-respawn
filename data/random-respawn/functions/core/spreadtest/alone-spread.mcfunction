#   load by tellraw
#   孤高の拡散
#--------------------------------------------

#Success Detect reset
data modify storage random-respawn: SpreadSuccess set value 0b


#Test Marker
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Pose:{Body:[0f,4f,2f],LeftLeg:[0f,0f,342f],LeftArm:[0f,0f,219f],RightArm:[0f,0f,24f]},Tags:["First-SP","First-SP-M"]}
execute as @e[tag=First-SP-M] at @s run scoreboard players operation @s F-Member = @p F-Member
tp @e[tag=First-SP-M] @e[tag=map-center,limit=1]

#4096
execute if score $gm F-Temp matches 4 run function random-respawn:core/spreadtest/4096

#2048
execute if score $gm F-Temp matches 3 run function random-respawn:core/spreadtest/2048

#1024
execute if score $gm F-Temp matches 2 run function random-respawn:core/spreadtest/1024

#512
execute if score $gm F-Temp matches 1 run function random-respawn:core/spreadtest/512



# 成功
execute unless data storage random-respawn: {SpreadSuccess:0b} at @e[tag=First-SP-M] run forceload add ~ ~
execute unless data storage random-respawn: {SpreadSuccess:0b} run tag @e[tag=First-SP-M] remove First-SP-M

#失敗
execute if data storage random-respawn: {SpreadSuccess:0b} run kill @e[tag=First-SP-M]