extends StaticBody2D

@onready var areaPlayer = get_tree().root.find_child("AreaPlayer", true, false)
@onready var blabla = get_tree().root.find_child("Blabla", true, false)

func _ready():
	blabla.set_visible(false)

func _on_area_2d_area_entered(area):
	blabla.set_visible(true)

func _on_speak_zone_area_exited(area):
	blabla.set_visible(false)
