#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Summon cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MRL_IgnitingRocket"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingRocket,limit=1] MRL_RocketUUID0 = @e[tag=MRL_DetectRocketExplode,limit=1] MRL_RocketUUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingRocket,limit=1] MRL_RocketUUID1 = @e[tag=MRL_DetectRocketExplode,limit=1] MRL_RocketUUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingRocket,limit=1] MRL_RocketUUID2 = @e[tag=MRL_DetectRocketExplode,limit=1] MRL_RocketUUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingRocket,limit=1] MRL_RocketUUID3 = @e[tag=MRL_DetectRocketExplode,limit=1] MRL_RocketUUID3

## Add a tag
tag @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingRocket,limit=1] add MRL_IgnitedRocket

## Remove tags
tag @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingRocket,limit=1] remove MRL_IgnitingRocket