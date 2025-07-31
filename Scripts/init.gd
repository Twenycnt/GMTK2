extends Node2D

@onready var camera1 = get_tree().root.find_child("Camera1", true, false)
@onready var camera2 = get_tree().root.find_child("Camera2", true, false)
@onready var loopText = get_tree().root.find_child("LoopText", true, false)
@onready var loopTimer = get_tree().root.find_child("LoopTimer", true, false)

func _ready():
	camera1.make_current()
	loopText.set_visible(false)
