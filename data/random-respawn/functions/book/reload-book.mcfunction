# calc
function random-respawn:book/calc

# Give Book
execute as @a store success score @s F-Temp run clear @s written_book{RandomRespawn:[{tag:2b}]}
execute as @a[scores={F-Temp=1..}] run function random-respawn:book/book
scoreboard players reset @a F-Temp
scoreboard players set $Book-R F-Temp 0