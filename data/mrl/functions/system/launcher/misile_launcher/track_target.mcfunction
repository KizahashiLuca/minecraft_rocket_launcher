#########################################################
## Minecraft Rocket Launcher                           ##
##   MC-Version: JE 1.16.5                             ##
##   Author    : @KizahashiLuca                        ##
##   Date      : 02 May 2021                           ##
##   Version   : α-0.1                                 ##
## (C) 2021 KizahashiLuca.                             ##
## This work is licensed under a CC BY-SA 4.0 license. ##
#########################################################

## Calculate Diff
execute store result score @s DiffX run data get entity @e[tag=MRL_MisileTarget,limit=1] Pos[0]
execute store result score @s DiffY run data get entity @e[tag=MRL_MisileTarget,limit=1] Pos[1]
execute store result score @s DiffZ run data get entity @e[tag=MRL_MisileTarget,limit=1] Pos[2]
execute store result score @s PosX run data get entity @s Pos[0]
execute store result score @s PosY run data get entity @s Pos[1]
execute store result score @s PosZ run data get entity @s Pos[2]
scoreboard players operation @s DiffX -= @s PosX
scoreboard players operation @s DiffY -= @s PosY
scoreboard players operation @s DiffZ -= @s PosZ

## Calculate square root
scoreboard players operation @s PowDiffX = @s DiffX
scoreboard players operation @s PowDiffY = @s DiffY
scoreboard players operation @s PowDiffZ = @s DiffZ
scoreboard players operation @s PowDiffX *= @s DiffX
scoreboard players operation @s PowDiffY *= @s DiffY
scoreboard players operation @s PowDiffZ *= @s DiffZ
scoreboard players operation @s NormXYZ = @s PowDiffX
scoreboard players operation @s NormXYZ += @s PowDiffY
scoreboard players operation @s NormXYZ += @s PowDiffZ

scoreboard players set @s SqrtVarI 1
scoreboard players set @s SqrtVarX 0
scoreboard players set @s SqrtXYZ 0
execute if score @s NormXYZ > @s SqrtVarX run function mrl:system/launcher/misile_launcher/square_root

## Calculate vector
scoreboard players operation @s DiffX *= #mrl 1000
scoreboard players operation @s DiffY *= #mrl 1000
scoreboard players operation @s DiffZ *= #mrl 1000
scoreboard players operation @s DiffX /= @s SqrtXYZ
scoreboard players operation @s DiffY /= @s SqrtXYZ
scoreboard players operation @s DiffZ /= @s SqrtXYZ

execute store result entity @s Motion[0] double 0.0016 run scoreboard players get @s DiffX
execute store result entity @s Motion[1] double 0.0016 run scoreboard players get @s DiffY
execute store result entity @s Motion[2] double 0.0016 run scoreboard players get @s DiffZ

## Particle
particle minecraft:dust 0.141 0.125 0.125 1 ~ ~ ~ ~ ~ ~ 1 0 normal @a