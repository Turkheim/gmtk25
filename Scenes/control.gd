extends Control

var clock = 0

@onready var timer: Timer = $Timer
@onready var label: Label = $Label


func _on_timer_timeout() -> void:
	clock = clock + 1
	print(clock)
	label.text = str(clock)
	%LoseMenu.score_number = clock
