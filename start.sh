#!/bin/sh
SPIGOT_JAR=${MC}/spigot*.jar
screen -d -m -S "minecraft" java -Xms1024M -Xmx1524M -XX:+UseG1GC  -Dcom.mojang.eula.agree=true  -jar ${SPIGOT_JAR} nogui
