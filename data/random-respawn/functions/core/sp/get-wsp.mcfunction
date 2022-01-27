#
# @s = Player
#---------------------

# reset
kill @e[tag=WSP]

# summon rturn
execute at @s run summon minecraft:marker ~ ~ ~ {NoGravity:1b,Silent:1b,Tags:["wsp-return"]}
tp @e[tag=wsp-return,limit=1] @s
execute at @s run forceload add ~ ~

# get WSP
tag @s add WSP-Man
gamerule spawnRadius 0
gamerule doImmediateRespawn true
kill @s
schedule function random-respawn:core/sp/get-wsp2 2t