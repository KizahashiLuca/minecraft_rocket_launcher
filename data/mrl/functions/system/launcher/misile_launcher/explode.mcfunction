#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Explode
summon minecraft:tnt ~ ~ ~
scoreboard players set @p[tag=MRL_MisileShooter] MRL_PrvTgtUUID0 0
scoreboard players set @p[tag=MRL_MisileShooter] MRL_PrvTgtUUID1 0
scoreboard players set @p[tag=MRL_MisileShooter] MRL_PrvTgtUUID2 0
scoreboard players set @p[tag=MRL_MisileShooter] MRL_PrvTgtUUID3 0
scoreboard players set @p[tag=MRL_MisileShooter] MRL_TargetUUID0 1
scoreboard players set @p[tag=MRL_MisileShooter] MRL_TargetUUID1 1
scoreboard players set @p[tag=MRL_MisileShooter] MRL_TargetUUID2 1
scoreboard players set @p[tag=MRL_MisileShooter] MRL_TargetUUID3 1
scoreboard players set @p[tag=MRL_MisileShooter] MRL_TargetReset 1