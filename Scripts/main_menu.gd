extends ColorRect




#func _unpause():
	#visible = false
	#get_tree().paused = false
	#Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
#
#
#func _pause():
	#visible = true
	#get_tree().paused = true
	#Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	#
	#
#func _on_resume_button_down() -> void:
	#get_tree().change_scene_to_file("res://Scenes/level.tscn")

func _on_quit_button_down() -> void:
	get_tree().quit()


func _on_resume_pressed() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

	get_tree().change_scene_to_file("res://Scenes/level.tscn")
