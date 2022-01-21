# load by schedule
# @s = None?
#----------------------

function random-respawn:core/4/spreadplayers/4086

execute as @a at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1 2
title @a times 10 70 20

# 成功した場合
execute unless data storage random-respawn {SpreadSuccess:0b} run scoreboard players operation $Timer F-Timer = $SetTimer F-Timer
execute unless data storage random-respawn {SpreadSuccess:0b} run clear @a

execute unless data storage random-respawn {SpreadSuccess:0b} at @a[team=Player] run summon marker ~ ~ ~ {Tags:["First-SP"],NoGravity:1b}
execute unless data storage random-respawn {SpreadSuccess:0b} at @a[team=Player] run forceload add ~ ~
execute unless data storage random-respawn {SpreadSuccess:0b} as @a[team=Player] at @s run scoreboard players operation @e[tag=First-SP,sort=nearest,limit=1] F-Member = @s F-Member
execute unless data storage random-respawn {SpreadSuccess:0b} run function random-respawn:core/countdown/sp/schedule-sp


# 失敗したのか..
execute if data storage random-respawn {SpreadSuccess:0b} run tellraw @a [{"text":"Error 拡散に失敗しました"}]