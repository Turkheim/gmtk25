extends ColorRect

@onready var score: Label = $CenterContainer/PanelContainer/MarginContainer/VBoxContainer/Score
@export var score_number = 0


func _unpause():
	visible = false
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	$AudioStreamPlayer.stop()

func _pause():
	score.text = "Your score is:" + str(score_number)
	visible = true
	get_tree().paused = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	$AudioStreamPlayer.play()

func _on_quit_button_down() -> void:
	get_tree().quit()


func _on_restart_pressed() -> void:
	_unpause()
	get_tree().reload_current_scene()
