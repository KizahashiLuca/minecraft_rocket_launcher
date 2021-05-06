#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 06 May 2021                           ##
##   Version   : β-1.0                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Summon cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MRL_IgnitingMisile"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_PlayerUUID0 = @e[tag=MRL_Misile,limit=1] MRL_PlayerUUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_PlayerUUID1 = @e[tag=MRL_Misile,limit=1] MRL_PlayerUUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_PlayerUUID2 = @e[tag=MRL_Misile,limit=1] MRL_PlayerUUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_PlayerUUID3 = @e[tag=MRL_Misile,limit=1] MRL_PlayerUUID3
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_MisileUUID0 = @e[tag=MRL_Misile,limit=1] MRL_MisileUUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_MisileUUID1 = @e[tag=MRL_Misile,limit=1] MRL_MisileUUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_MisileUUID2 = @e[tag=MRL_Misile,limit=1] MRL_MisileUUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_MisileUUID3 = @e[tag=MRL_Misile,limit=1] MRL_MisileUUID3
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_TargetUUID0 = @e[tag=MRL_Misile,limit=1] MRL_TargetUUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_TargetUUID1 = @e[tag=MRL_Misile,limit=1] MRL_TargetUUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_TargetUUID2 = @e[tag=MRL_Misile,limit=1] MRL_TargetUUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MRL_TargetUUID3 = @e[tag=MRL_Misile,limit=1] MRL_TargetUUID3

## Add a tag
tag @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] add MRL_IgnitedMisile

## Remove tags
tag @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] remove MRL_IgnitingMisile