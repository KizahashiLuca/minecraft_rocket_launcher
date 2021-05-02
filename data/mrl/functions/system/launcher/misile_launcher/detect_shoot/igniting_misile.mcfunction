#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Set scoreboard
execute store result score @s MisileUUID0 run data get entity @s UUID[0]
execute store result score @s MisileUUID1 run data get entity @s UUID[1]
execute store result score @s MisileUUID2 run data get entity @s UUID[2]
execute store result score @s MisileUUID3 run data get entity @s UUID[3]
data modify entity @s LifeTime set value 1000

## Summon cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MRL_IgnitingMisile"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] PlayerUUID0 = @s PlayerUUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] PlayerUUID1 = @s PlayerUUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] PlayerUUID2 = @s PlayerUUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] PlayerUUID3 = @s PlayerUUID3
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MisileUUID0 = @s MisileUUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MisileUUID1 = @s MisileUUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MisileUUID2 = @s MisileUUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MisileUUID3 = @s MisileUUID3
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] TargetUUID0 = @s TargetUUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] TargetUUID1 = @s TargetUUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] TargetUUID2 = @s TargetUUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] TargetUUID3 = @s TargetUUID3

## Add a tag
tag @s add MRL_IgnitedMisile
tag @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] add MRL_IgnitedMisile

## Remove tags
tag @s remove MRL_IgnitingMisile
tag @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] remove MRL_IgnitingMisile