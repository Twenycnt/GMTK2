extends Area2D

@onready var areaPlayer = get_tree().root.find_child("AreaPlayer", true, false)
@onready var camera2 = get_tree().root.find_child("Camera2", true, false)
@onready var camera1 = get_tree().root.find_child("Camera1", true, false)


func _on_area_entered(areaPlayer):
	if camera1.is_current():
		camera2.make_current()
	else:
		camera1.make_current()
