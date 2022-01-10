#load by random-respawn:tick
#-------------------------------------------------

scoreboard players remove $CountDown F-Timer 1

#60~20
execute if score $CountDown F-Timer matches 60 run title @a times 3 10 3
execute if score $CountDown F-Timer matches 60 run title @a title [{"text":"▷▶","color":"aqua"},{"text":" 3 ","color":"yellow"},{"text":"◀◁","color":"aqua"}]
execute if score $CountDown F-Timer matches 60 as @a at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1 1
execute if score $CountDown F-Timer matches 40 run title @a title [{"text":"▷▶","color":"aqua"},{"text":" 2 ","color":"yellow"},{"text":"◀◁","color":"aqua"}]
execute if score $CountDown F-Timer matches 40 as @a at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1 1
execute if score $CountDown F-Timer matches 20 run title @a title [{"text":"▷▶","color":"aqua"},{"text":" 1 ","color":"yellow"},{"text":"◀◁","color":"aqua"}]
execute if score $CountDown F-Timer matches 20 as @a at @s run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1 1

#0
execute if score $CountDown F-Timer matches 0 run function random-respawn/core/countdown/timer-start