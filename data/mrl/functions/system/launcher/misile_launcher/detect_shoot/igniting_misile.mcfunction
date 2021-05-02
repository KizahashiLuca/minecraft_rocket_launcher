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
execute store result score @s MRL_MisileUUID0 run data get entity @s UUID[0]
execute store result score @s MRL_MisileUUID1 run data get entity @s UUID[1]
execute store result score @s MRL_MisileUUID2 run data get entity @s UUID[2]
execute store result score @s MRL_MisileUUID3 run data get entity @s UUID[3]
data modify entity @s LifeTime set value 1000

## Summon cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MRL_IgnitingMisile"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_PlayerUUID0 = @s MRL_PlayerUUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_PlayerUUID1 = @s MRL_PlayerUUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_PlayerUUID2 = @s MRL_PlayerUUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_PlayerUUID3 = @s MRL_PlayerUUID3
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_MisileUUID0 = @s MRL_MisileUUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_MisileUUID1 = @s MRL_MisileUUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_MisileUUID2 = @s MRL_MisileUUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_MisileUUID3 = @s MRL_MisileUUID3
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_TargetUUID0 = @s MRL_TargetUUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_TargetUUID1 = @s MRL_TargetUUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_TargetUUID2 = @s MRL_TargetUUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_TargetUUID3 = @s MRL_TargetUUID3

## Add a tag
tag @s add MRL_IgnitedMisile
tag @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] add MRL_IgnitedMisile

## Remove tags
tag @s remove MRL_IgnitingMisile
tag @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] remove MRL_IgnitingMisile