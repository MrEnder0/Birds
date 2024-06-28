scoreboard objectives add bird_time dummy
scoreboard players add @r bird_time 1
scoreboard players add @e[tag=bird_spawn_location] bird_time 1

effect @e[tag=bird_spawn_location] invisibility 1 1 true
effect @e[tag=bird_spawn_location] resistance 1 255 true

# For some reason we cant use @a[scores={bird_time=250},y=50,dy=200] even though running the command in chat works... I love mc :D
execute as @a[scores={bird_time=250}] at @s run particle birds:bird_particle ~ ~ ~
execute as @e[tag=bird_spawn_location, scores={bird_time=250}] at @s run particle birds:bird_particle ~ ~ ~
execute as @a[scores={bird_time=600}] at @s run particle birds:bird_particle ~ ~ ~
execute as @e[tag=bird_spawn_location, scores={bird_time=600}] at @s run particle birds:bird_particle ~ ~ ~

execute as @e[scores={bird_time=750..10000}] at @s run scoreboard players set @s bird_time 0
