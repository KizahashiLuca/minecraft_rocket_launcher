#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Remove scoreboards
scoreboard objectives remove OnLoad
## Remove scoreboards for position
scoreboard objectives remove PosX
scoreboard objectives remove PosY
scoreboard objectives remove PosZ
## Remove scoreboards for calculation
scoreboard objectives remove 1000
## Remove scoreboards for launcher common
scoreboard objectives remove PlayerUUID0
scoreboard objectives remove PlayerUUID1
scoreboard objectives remove PlayerUUID2
scoreboard objectives remove PlayerUUID3
scoreboard objectives remove NotExplosive
## Remove scoreboards for rocket launcher
scoreboard objectives remove RocketUUID0
scoreboard objectives remove RocketUUID1
scoreboard objectives remove RocketUUID2
scoreboard objectives remove RocketUUID3
## Remove scoreboards for misile launcher
scoreboard objectives remove MisileUUID0
scoreboard objectives remove MisileUUID1
scoreboard objectives remove MisileUUID2
scoreboard objectives remove MisileUUID3
scoreboard objectives remove TargetUUID0
scoreboard objectives remove TargetUUID1
scoreboard objectives remove TargetUUID2
scoreboard objectives remove TargetUUID3
scoreboard objectives remove PrvTargetUUID0
scoreboard objectives remove PrvTargetUUID1
scoreboard objectives remove PrvTargetUUID2
scoreboard objectives remove PrvTargetUUID3
scoreboard objectives remove TargetReset
scoreboard objectives remove TargetChanged
scoreboard objectives remove DiffX
scoreboard objectives remove DiffY
scoreboard objectives remove DiffZ
scoreboard objectives remove PowDiffX
scoreboard objectives remove PowDiffY
scoreboard objectives remove PowDiffZ
scoreboard objectives remove NormXYZ
scoreboard objectives remove SqrtXYZ
scoreboard objectives remove SqrtVarI
scoreboard objectives remove SqrtVarX

## Remove objectives
scoreboard players reset #mrl
scoreboard players reset @e
scoreboard players reset @a