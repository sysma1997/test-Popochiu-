extends "res://addons/Popochiu/Engine/Interfaces/IRoom.gd"

# classes ----
const PR101 := preload('res://popochiu/Rooms/101/Room101.gd')
const PROutside := preload('res://popochiu/Rooms/Outside/RoomOutside.gd')
const PRBackground := preload('res://popochiu/Rooms/Background/RoomBackground.gd')
const PRCamara := preload('res://popochiu/Rooms/Camara/RoomCamara.gd')
# ---- classes

# nodes ----
var R101: PR101 setget , get_101
var Outside: PROutside setget , get_Outside
var Background: PRBackground setget , get_Background
var Camara: PRCamara setget , get_Camara
# ---- nodes

# functions ----
func get_101(): return .get_runtime_room('101')
func get_Outside(): return .get_runtime_room('Outside')
func get_Background(): return .get_runtime_room('Background')
func get_Camara(): return .get_runtime_room('Camara')
# ---- functions
