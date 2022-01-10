execute as @e[type=arrow] at @s run summon minecraft:marker ~ ~ ~ {Tags:[sugoi]}
execute as @e[type=arrow] at @s run scoreboard players operation @e[tag=sugoi,limit=1,sort=nearest] member = @s member
execute as @e[type=arrow] at @s run scoreboard players operation @e[tag=sugoi,limit=1,sort=nearest] speed = @s speed
execute as @e[tag=sugoi] at @a if score @s member = @p member run tp @s @p
execute as @e[tag=sugoi] store result score @s x run data get entity @s Pos[0] 1000
execute as @e[tag=sugoi] store result score @s y run data get entity @s Pos[1] 1000
execute as @e[tag=sugoi] store result score @s z run data get entity @s Pos[2] 1000

execute as @e[tag=sugoi,scores={speed=..34}] at @s run tp ^ ^ ^0.3
execute as @e[tag=sugoi,scores={speed=35..44}] at @s run tp ^ ^ ^0.4
execute as @e[tag=sugoi,scores={speed=45..54}] at @s run tp ^ ^ ^0.5
execute as @e[tag=sugoi,scores={speed=55..64}] at @s run tp ^ ^ ^0.6
execute as @e[tag=sugoi,scores={speed=65..74}] at @s run tp ^ ^ ^0.7
execute as @e[tag=sugoi,scores={speed=75..84}] at @s run tp ^ ^ ^0.8
execute as @e[tag=sugoi,scores={speed=85..94}] at @s run tp ^ ^ ^0.9
execute as @e[tag=sugoi,scores={speed=95..104}] at @s run tp ^ ^ ^1.0
execute as @e[tag=sugoi,scores={speed=105..114}] at @s run tp ^ ^ ^1.1
execute as @e[tag=sugoi,scores={speed=115..124}] at @s run tp ^ ^ ^1.2
execute as @e[tag=sugoi,scores={speed=125..134}] at @s run tp ^ ^ ^1.3
execute as @e[tag=sugoi,scores={speed=135..144}] at @s run tp ^ ^ ^1.4
execute as @e[tag=sugoi,scores={speed=145..154}] at @s run tp ^ ^ ^1.5
execute as @e[tag=sugoi,scores={speed=155..164}] at @s run tp ^ ^ ^1.6
execute as @e[tag=sugoi,scores={speed=165..174}] at @s run tp ^ ^ ^1.7
execute as @e[tag=sugoi,scores={speed=175..184}] at @s run tp ^ ^ ^1.8
execute as @e[tag=sugoi,scores={speed=185..194}] at @s run tp ^ ^ ^1.9
execute as @e[tag=sugoi,scores={speed=195..204}] at @s run tp ^ ^ ^2.0
execute as @e[tag=sugoi,scores={speed=205..214}] at @s run tp ^ ^ ^2.1
execute as @e[tag=sugoi,scores={speed=215..224}] at @s run tp ^ ^ ^2.2
execute as @e[tag=sugoi,scores={speed=225..234}] at @s run tp ^ ^ ^2.3
execute as @e[tag=sugoi,scores={speed=235..244}] at @s run tp ^ ^ ^2.4
execute as @e[tag=sugoi,scores={speed=245..254}] at @s run tp ^ ^ ^2.5
execute as @e[tag=sugoi,scores={speed=255..264}] at @s run tp ^ ^ ^2.6
execute as @e[tag=sugoi,scores={speed=265..274}] at @s run tp ^ ^ ^2.7
execute as @e[tag=sugoi,scores={speed=275..284}] at @s run tp ^ ^ ^2.8
execute as @e[tag=sugoi,scores={speed=285..294}] at @s run tp ^ ^ ^2.9
execute as @e[tag=sugoi,scores={speed=295..}] at @s run tp ^ ^ ^3.0

execute as @e[tag=sugoi] store result score @s x1 run data get entity @s Pos[0] 1000
execute as @e[tag=sugoi] store result score @s y1 run data get entity @s Pos[1] 1000
execute as @e[tag=sugoi] store result score @s z1 run data get entity @s Pos[2] 1000
execute as @e[tag=sugoi] run scoreboard players operation @s x1 -= @s x
execute as @e[tag=sugoi] run scoreboard players operation @s y1 -= @s y
execute as @e[tag=sugoi] run scoreboard players operation @s z1 -= @s z
execute as @e[tag=sugoi] at @e[type=arrow] if score @s member = @e[type=arrow,sort=nearest,limit=1] member if score @s speed = @e[type=arrow,sort=nearest,limit=1,distance=..0.000001] speed store result entity @e[type=arrow,sort=nearest,limit=1] Motion[0] double 0.001 run scoreboard players get @s x1 
execute as @e[tag=sugoi] at @e[type=arrow] if score @s member = @e[type=arrow,sort=nearest,limit=1] member if score @s speed = @e[type=arrow,sort=nearest,limit=1,distance=..0.000001] speed store result entity @e[type=arrow,sort=nearest,limit=1] Motion[1] double 0.001 run scoreboard players get @s y1 
execute as @e[tag=sugoi] at @e[type=arrow] if score @s member = @e[type=arrow,sort=nearest,limit=1] member if score @s speed = @e[type=arrow,sort=nearest,limit=1,distance=..0.000001] speed store result entity @e[type=arrow,sort=nearest,limit=1] Motion[2] double 0.001 run scoreboard players get @s z1 
kill @e[tag=sugoi]
kill @e[type=arrow,nbt={inGround:1b}]