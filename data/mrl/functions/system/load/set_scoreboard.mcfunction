#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Add scoreboards
scoreboard objectives add OnLoad dummy
## Add scoreboards for position
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
## Add scoreboards for calculation
scoreboard objectives add 1000 dummy
## Add scoreboards for launcher common
scoreboard objectives add PlayerUUID0 dummy
scoreboard objectives add PlayerUUID1 dummy
scoreboard objectives add PlayerUUID2 dummy
scoreboard objectives add PlayerUUID3 dummy
scoreboard objectives add NotExplosive dummy
## Add scoreboards for rocket launcher
scoreboard objectives add RocketUUID0 dummy
scoreboard objectives add RocketUUID1 dummy
scoreboard objectives add RocketUUID2 dummy
scoreboard objectives add RocketUUID3 dummy
## Add scoreboards for misile launcher
scoreboard objectives add MisileUUID0 dummy
scoreboard objectives add MisileUUID1 dummy
scoreboard objectives add MisileUUID2 dummy
scoreboard objectives add MisileUUID3 dummy
scoreboard objectives add TargetUUID0 dummy
scoreboard objectives add TargetUUID1 dummy
scoreboard objectives add TargetUUID2 dummy
scoreboard objectives add TargetUUID3 dummy
scoreboard objectives add PrvTargetUUID0 dummy
scoreboard objectives add PrvTargetUUID1 dummy
scoreboard objectives add PrvTargetUUID2 dummy
scoreboard objectives add PrvTargetUUID3 dummy
scoreboard objectives add TargetReset dummy
scoreboard objectives add TargetChanged dummy
scoreboard objectives add DiffX dummy
scoreboard objectives add DiffY dummy
scoreboard objectives add DiffZ dummy
scoreboard objectives add PowDiffX dummy
scoreboard objectives add PowDiffY dummy
scoreboard objectives add PowDiffZ dummy
scoreboard objectives add NormXYZ dummy
scoreboard objectives add SqrtXYZ dummy
scoreboard objectives add SqrtVarI dummy
scoreboard objectives add SqrtVarX dummy

## Set scoreboards
scoreboard players set #mrl OnLoad 1
## Set scoreboards for calculation
scoreboard players set #mrl 1000 1000