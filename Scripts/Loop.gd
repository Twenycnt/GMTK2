extends Node2D

@onready var loopText = get_tree().root.find_child("LoopText", true, false)
@onready var loopTimer = get_tree().root.find_child("LoopTimer", true, false)
@onready var timertext: Label = $"../Player/timertext"



func time_left() :
	var Time_left = loopTimer.time_left
	var minute = floor(Time_left/60)
	var second =  int(Time_left) % 60 
	return [minute, second]
	
func _process(delta) :
	timertext.text = "%02d : %02d" % time_left()
	
func _on_loop_timer_timeout():
	loopText.set_visible(true)
	await get_tree().create_timer(1.0).timeout
	get_tree().reload_current_scene()
