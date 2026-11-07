#!/bin/bash


# ------------------------------------------------------------------- CREATION ----------------------------------------------------------------------------

# Groups 
g1=Employee
g2=IT
g3=Finance
#---------------------------------- Group Commands ---------------------------------------------
groupadd "$g1"
groupadd "$g2"
groupadd "$g3"
#-----------------------------------------------------------------------------------------------
# List of New employees whos accounds will be created 

# ------------------------------------------------------- Mr.Krabs ---------------------------------------------------------------------------------
name=mrkrabs
uid=1011
gid=wheel
comment=CEO

useradd -u "$uid" -g "$gid" -c "$comment" "$name"
#----------------------------------------------------- Squidward ------------------------------------------------------------------------------------
name=squidward
uid=1012
gid=Employee
groups=Finance,IT
comment=Manager

useradd -u "$uid" -g "$gid" -G "$groups" -c "$comment" "$name"
#------------------------------------------------------- Sandy -------------------------------------------------------------------------------------
name=sandy
uid=1013
gid=Employee
groups=Finance
comment=Accountant

useradd -u "$uid" -g "$gid" -c "$comment" -G "$groups" "$name"
#------------------------------------------------------- Plankton ----------------------------------------------------------------------------------
name=plankton
uid=1014
gid=Employee
groups=IT
comment=Senior Engineer

useradd -u "$uid" -g "$gid" -c "$comment" "$name"
#------------------------------------------------------- Karen ------------------------------------------------------------------------------------
name=karen
uid=1015
gid=Employee
groups=IT,Finance
comment=Project Manager

useradd -u "$uid" -g "$gid" -c "$comment" -G "$groups" "$name"
#------------------------------------------------------- Spongebob ---------------------------------------------------------------------------------
name=spongebob
uid=1016
gid=Employee
comment=Team Leader

useradd -u "$uid" -g "$gid" -c "$comment" "$name"
#------------------------------------------------------- Gary --------------------------------------------------------------------------------------
name=gary
uid=1017
gid=Employee
comment=Mascot
homedir=-
shell=/sbin/nologin

useradd -u "$uid" -g "$gid" -c "$comment" -M "$homedir" -s "$shell" "$name"
#------------------------------------------------------- Patrick ------------------------------------------------------------------------------------
name=patrick
uid=1018
gid=Employee
comment=Employee

useradd -u "$uid" -g "$gid" -c "$comment" "$name"
#------------------------------------------------------- DNF PACKAGES -------------------------------------------------------------------------------
pkg1=httpd
pkg2=flatpak
pkg3=syncthing
pkg4=podman

sudo dnf install -y "$pkg1"
sudo dnf install -y "$pkg2"
sudo dnf install -y "$pkg3"
sudo dnf install -y "$pkg4"
#------------------------------------------------------------------------------------------------------------------------------------------------------

