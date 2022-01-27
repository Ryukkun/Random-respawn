# load by random-respawn:core/sp/get-wsp
# @s = none
#---------------------

# summon WSP
execute as @a[tag=WSP-Man,limit=1] at @s run summon minecraft:marker ~ ~ ~ {NoGravity:1b,Silent:1b,Tags:["WSP"]}
gamerule doImmediateRespawn false

# return
execute as @a[tag=WSP-Man,limit=1] at @s run tp @s @e[tag=wsp-return,limit=1]
execute as @a[tag=WSP-Man,limit=1] at @s run forceload remove ~ ~
kill @e[tag=wsp-return,type=marker]

# remove tags
tag @a remove WSP-Man