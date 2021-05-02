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
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["MRL_IgnitingMisile"],NoGravity:1b,Invulnerable:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:2147483647}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] PlayerUUID0 = @e[tag=MRL_Misile,limit=1] PlayerUUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] PlayerUUID1 = @e[tag=MRL_Misile,limit=1] PlayerUUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] PlayerUUID2 = @e[tag=MRL_Misile,limit=1] PlayerUUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] PlayerUUID3 = @e[tag=MRL_Misile,limit=1] PlayerUUID3
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MisileUUID0 = @e[tag=MRL_Misile,limit=1] MisileUUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MisileUUID1 = @e[tag=MRL_Misile,limit=1] MisileUUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MisileUUID2 = @e[tag=MRL_Misile,limit=1] MisileUUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] MisileUUID3 = @e[tag=MRL_Misile,limit=1] MisileUUID3
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] TargetUUID0 = @e[tag=MRL_Misile,limit=1] TargetUUID0
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] TargetUUID1 = @e[tag=MRL_Misile,limit=1] TargetUUID1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] TargetUUID2 = @e[tag=MRL_Misile,limit=1] TargetUUID2
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] TargetUUID3 = @e[tag=MRL_Misile,limit=1] TargetUUID3

## Add a tag
tag @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] add MRL_IgnitedMisile

## Remove tags
tag @e[type=minecraft:area_effect_cloud,tag=MRL_IgnitingMisile,limit=1] remove MRL_IgnitingMisile