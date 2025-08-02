extends Node3D

var can_fire = false

var rotation_target = 0
const LASER = preload("res://Scenes/laser.tscn")

var laser_spawn_point : Transform3D
var player_location : Vector3

var cannon_count = 1


func _physics_process(delta: float) -> void:
	player_location = %PlayerTarget.global_position
	$Turret/TurretCannon.look_at(player_location,transform.basis.y,true)

func _fire_laser():
	
	_change_cannon()
	
	
	if LASER:
		#$Laser.pitch_scale = randf_range(0.5,1.5)
		#$Laser.play()
		var new_laser: Area3D = LASER.instantiate()
		if new_laser:
			new_laser.set_as_top_level(true)
			add_child(new_laser)
			new_laser.transform = laser_spawn_point


func _on_laser_timer_timeout() -> void:
	if can_fire:
		_fire_laser()
	
func _change_cannon():
	
	if cannon_count == 1 :
		laser_spawn_point = $Turret/TurretCannon/Cannon1.global_transform
		cannon_count = 2
	elif cannon_count == 2 :
		laser_spawn_point = $Turret/TurretCannon/Cannon2.global_transform
		cannon_count = 3
	elif cannon_count == 3 :
		laser_spawn_point = $Turret/TurretCannon/Cannon3.global_transform
		cannon_count = 4
	elif cannon_count == 4 :
		laser_spawn_point = $Turret/TurretCannon/Cannon4.global_transform
		cannon_count = 1
