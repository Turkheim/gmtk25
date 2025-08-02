extends Area3D
@export var laser_color = Color.GREEN
@export var speed = 3

@export var enemy_damage = 5

func _ready() -> void:
	$LaserBolt.mesh.material.albedo_color = laser_color * 5
	$OmniLight3D.light_color = laser_color
func _physics_process(delta: float) -> void:

	translate_object_local(Vector3.FORWARD * delta * speed) 
	
func _on_kill_timer_timeout() -> void:
	queue_free()


func _on_area_entered(area: Area3D) -> void:
	if area.is_in_group("Player"):
		area._damage_player(enemy_damage)
	queue_free()
