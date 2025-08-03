extends ColorRect




func _unpause():
	visible = false
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


func _pause():
	visible = true
	get_tree().paused = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
	
func _on_resume_button_down() -> void:
	_unpause()


func _on_restart_button_down() -> void:
	_unpause()
	get_tree().reload_current_scene()

func _on_quit_button_down() -> void:
	get_tree().quit()
