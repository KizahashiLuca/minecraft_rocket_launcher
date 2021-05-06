#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 06 May 2021                           ##
##   Version   : β-1.0                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Add tags
tag @s add MRL_MisileCloud
execute as @e[type=minecraft:firework_rocket,tag=MRL_IgnitedMisile] if score @s MRL_MisileUUID0 = @e[tag=MRL_MisileCloud,limit=1] MRL_MisileUUID0 if score @s MRL_MisileUUID1 = @e[tag=MRL_MisileCloud,limit=1] MRL_MisileUUID1 if score @s MRL_MisileUUID2 = @e[tag=MRL_MisileCloud,limit=1] MRL_MisileUUID2 if score @s MRL_MisileUUID3 = @e[tag=MRL_MisileCloud,limit=1] MRL_MisileUUID3 run tag @s add MRL_Misile
execute as @e[type=!#mrl:not_mob] if score @s MRL_PlayerUUID0 = @e[tag=MRL_Misile,limit=1] MRL_TargetUUID0 if score @s MRL_PlayerUUID1 = @e[tag=MRL_Misile,limit=1] MRL_TargetUUID1 if score @s MRL_PlayerUUID2 = @e[tag=MRL_Misile,limit=1] MRL_TargetUUID2 if score @s MRL_PlayerUUID3 = @e[tag=MRL_Misile,limit=1] MRL_TargetUUID3 run tag @s add MRL_MisileTarget

## Tracking Target
execute as @e[tag=MRL_Misile,limit=1] run function mrl:system/launcher/misile_launcher/track_target

## Detect ignited firework_rocket
scoreboard players set @e[tag=MRL_MisileCloud,limit=1] MRL_NotExplosive 0

## If firework rocket is alive, it will not explode
execute if entity @e[type=minecraft:firework_rocket,tag=MRL_Misile] run scoreboard players set @e[tag=MRL_MisileCloud,limit=1] MRL_NotExplosive 1

## If there are blocks at the end of firework rocket, it will explode
execute as @e[type=minecraft:firework_rocket,tag=MRL_Misile] at @s unless block ^ ^ ^-1 #mrl:air run scoreboard players set @e[tag=MRL_MisileCloud,limit=1] MRL_NotExplosive 0
execute as @e[type=minecraft:firework_rocket,tag=MRL_Misile] at @s unless block ^ ^ ^1 #mrl:air run scoreboard players set @e[tag=MRL_MisileCloud,limit=1] MRL_NotExplosive 0

## If target player is near by, it will explode
execute as @e[type=minecraft:firework_rocket,tag=MRL_Misile] at @s if entity @e[tag=MRL_MisileTarget,sort=nearest,distance=..1.5] run scoreboard players set @e[tag=MRL_MisileCloud,limit=1] MRL_NotExplosive 0

## If shot player is near by, it will not explode
execute if entity @p[tag=!MRL_DetectedPlayer,distance=..2] run function mrl:system/launcher/misile_launcher/detect_player
execute if entity @p[tag=MRL_ShotMisileLauncher] run scoreboard players set @e[tag=MRL_MisileCloud,limit=1] MRL_NotExplosive 1

## Explode
execute as @e[tag=MRL_MisileCloud,scores={MRL_NotExplosive=0},limit=1] at @s run summon minecraft:tnt ~ ~ ~

## Kill firework rocket
execute as @e[tag=MRL_MisileCloud,scores={MRL_NotExplosive=0},limit=1] run kill @e[tag=MRL_Misile]

## Teleport cloud
execute as @e[tag=MRL_MisileCloud,scores={MRL_NotExplosive=1},limit=1] at @e[tag=MRL_Misile,limit=1] run function mrl:system/launcher/misile_launcher/teleport_cloud

## Kill cloud
kill @e[type=minecraft:area_effect_cloud,tag=MRL_MisileCloud]

## Remove a tag
tag @e[tag=MRL_Misile] remove MRL_Misile
tag @e[tag=MRL_MisileTarget] remove MRL_MisileTarget
tag @e[tag=MRL_ShotMisileLauncher] remove MRL_ShotMisileLauncher