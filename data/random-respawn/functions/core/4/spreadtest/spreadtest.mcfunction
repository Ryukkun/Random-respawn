#
#
#--------------------

#reset
function random-respawn:core/reset-tags

#Success Detect reset
data modify storage random-respawn: SpreadSuccess set value 0b


#Test Marker
execute as @a[team=Player] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,Pose:{Body:[0f,4f,2f],LeftLeg:[0f,0f,342f],LeftArm:[0f,0f,219f],RightArm:[0f,0f,24f]},Tags:["First-SP"]}
execute as @e[tag=First-SP] at @s run scoreboard players operation @s F-Member = @p F-Member

#4086
execute if score $gm F-Temp matches 4 run function random-respawn:core/4/spreadtest/4086



# 成功
execute unless data storage random-respawn: {SpreadSuccess:0b} run scoreboard players set $SpreadTestChunk F-Timer 0
execute unless data storage random-respawn: {SpreadSuccess:0b} run function random-respawn:core/sp/forceload

#失敗
execute if data storage random-respawn: {SpreadSuccess:0b} run kill @e[tag=First-SP]