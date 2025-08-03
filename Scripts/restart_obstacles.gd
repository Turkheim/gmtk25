extends Area3D



func _on_area_exited(area: Area3D) -> void:
	#area.queue_free()
	
	if area.visible:
		area.visible = false
	elif area.visible == false:
		area.visible = true
	
	
	area._changed()
