extends Area2D

@onready var areaPlayer = get_tree().root.find_child("AreaPlayer", true, false)
@onready var camera2 = get_tree().root.find_child("Camera2", true, false)
@onready var camera3 = get_tree().root.find_child("Camera3", true, false)


func _on_area_entered(areaPlayer):
	if camera2.is_current():
		camera3.make_current()
	else:
		camera2.make_current()
