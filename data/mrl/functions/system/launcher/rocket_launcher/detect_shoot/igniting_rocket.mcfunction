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
execute store result score @s MRL_RocketUUID0 run data get entity @s UUID[0]
execute store result score @s MRL_RocketUUID1 run data get entity @s UUID[1]
execute store result score @s MRL_RocketUUID2 run data get entity @s UUID[2]
execute store result score @s MRL_RocketUUID3 run data get entity @s UUID[3]

## Summon cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MRL_IgnitingRocket"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingRocket,limit=1] MRL_RocketUUID0 = @s MRL_RocketUUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingRocket,limit=1] MRL_RocketUUID1 = @s MRL_RocketUUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingRocket,limit=1] MRL_RocketUUID2 = @s MRL_RocketUUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingRocket,limit=1] MRL_RocketUUID3 = @s MRL_RocketUUID3

## Add a tag
tag @s add MRL_IgnitedRocket
tag @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingRocket,limit=1] add MRL_IgnitedRocket

## Remove tags
tag @s remove MRL_IgnitingRocket
tag @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingRocket,limit=1] remove MRL_IgnitingRocket