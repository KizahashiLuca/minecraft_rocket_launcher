#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Add tags
tag @s add MRL_DetectRocket
execute as @e[type=minecraft:firework_rocket,tag=MRL_IgnitedRocket] if score @s MRL_RocketUUID0 = @e[tag=MRL_DetectRocket,limit=1] MRL_RocketUUID0 if score @s MRL_RocketUUID1 = @e[tag=MRL_DetectRocket,limit=1] MRL_RocketUUID1 if score @s MRL_RocketUUID2 = @e[tag=MRL_DetectRocket,limit=1] MRL_RocketUUID2 if score @s MRL_RocketUUID3 = @e[tag=MRL_DetectRocket,limit=1] MRL_RocketUUID3 at @s run tag @s add MRL_DetectRocketExplode

## Detect ignited firework_rocket
scoreboard players set @e[tag=MRL_DetectRocket,limit=1] MRL_NotExplosive 0

## If firework rocket is alive, it will not explode
execute if entity @e[type=minecraft:firework_rocket,tag=MRL_DetectRocketExplode] run scoreboard players set @e[tag=MRL_DetectRocket,limit=1] MRL_NotExplosive 1

## If there are blocks at the end of firework rocket, it will explode
execute as @e[type=minecraft:firework_rocket,tag=MRL_DetectRocketExplode] at @s unless block ^ ^ ^-1 #mrl:air run scoreboard players set @e[tag=MRL_DetectRocket,limit=1] MRL_NotExplosive 0
execute as @e[type=minecraft:firework_rocket,tag=MRL_DetectRocketExplode] at @s unless block ^ ^ ^1 #mrl:air run scoreboard players set @e[tag=MRL_DetectRocket,limit=1] MRL_NotExplosive 0

## If shot player is near by, it will not explode
execute as @a[distance=..2] if score @e[tag=MRL_DetectRocketExplode,limit=1] MRL_PlayerUUID0 = @s MRL_PlayerUUID0 if score @e[tag=MRL_DetectRocketExplode,limit=1] MRL_PlayerUUID1 = @s MRL_PlayerUUID1 if score @e[tag=MRL_DetectRocketExplode,limit=1] MRL_PlayerUUID2 = @s MRL_PlayerUUID2 if score @e[tag=MRL_DetectRocketExplode,limit=1] MRL_PlayerUUID3 = @s MRL_PlayerUUID3 run scoreboard players set @e[tag=MRL_DetectRocket,limit=1] MRL_NotExplosive 1

## Kill firework rocket
execute as @e[tag=MRL_DetectRocket,scores={MRL_NotExplosive=0},limit=1] run kill @e[tag=MRL_DetectRocketExplode]

## Explode
execute as @e[tag=MRL_DetectRocket,scores={MRL_NotExplosive=0},limit=1] at @s run summon minecraft:tnt ~ ~ ~
execute as @e[tag=MRL_DetectRocket,scores={MRL_NotExplosive=0},limit=1] at @s run summon minecraft:tnt ~ ~ ~
execute as @e[tag=MRL_DetectRocket,scores={MRL_NotExplosive=0},limit=1] at @s run summon minecraft:tnt ~ ~ ~
execute as @e[tag=MRL_DetectRocket,scores={MRL_NotExplosive=0},limit=1] at @s run summon minecraft:tnt ~ ~ ~

## Teleport cloud
execute as @e[tag=MRL_DetectRocket,scores={MRL_NotExplosive=1},limit=1] at @e[tag=MRL_DetectRocketExplode,limit=1] run function mrl:system/launcher/rocket_launcher/teleport_cloud

## Kill cloud
kill @e[type=minecraft:area_effect_cloud,tag=MRL_DetectRocket]

## Remove a tag
tag @e[tag=MRL_DetectRocketExplode] remove MRL_DetectRocketExplode