scoreboard players set $Y.0 F-Temp 1
execute if entity @e[tag=F-TestY] run scoreboard players set $Y.0 F-Temp 0
execute if entity @e[tag=F-TestY] run kill @e[tag=F-TestY]
forceload remove 0 0