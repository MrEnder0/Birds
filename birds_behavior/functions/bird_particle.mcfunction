scoreboard objectives add time dummy
scoreboard players add @a time 1

# For some reason we cant use @a[scores={time=115},y=50,dy=200] even though running the command in chat works... I love mc :D
execute as @a[scores={time=115}] at @s run particle birds:bird_particle ~ ~ ~
execute as @a[scores={time=415}] at @s run particle birds:bird_particle ~ ~ ~

execute as @a[scores={time=750..10000}] at @s run scoreboard players set @s time 0