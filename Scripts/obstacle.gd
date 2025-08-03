extends Area3D


func _ready() -> void:

	monitoring = visible


func _on_area_entered(area: Area3D) -> void:
	if area.is_in_group("Player"):
		area._damage_player(20)

func _changed():
	monitoring = visible
