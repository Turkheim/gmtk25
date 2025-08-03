extends Node3D



func _unhandled_input(event: InputEvent) -> void:
		if Input.is_action_pressed("ui_cancel"):
			$PauseMenu._pause()


func _ready() -> void:
	var health = %Player.player_life

	%PlayerLife.init_health(health)
