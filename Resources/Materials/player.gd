extends Area3D
@export var player_life = 100
var movement_speed = 3

var rotation_speed = 5

func _unhandled_input(event: InputEvent) -> void:
		if Input.is_action_pressed("ui_cancel"):
			get_tree().quit()

func _physics_process(delta: float) -> void:


	if transform.origin.y < -2:
		transform.origin.y = -2
	if transform.origin.y > 1:
		transform.origin.y = 1
	if transform.origin.x < -2:
		transform.origin.x = -2
	if transform.origin.x > 2:
		transform.origin.x = 2
		
		
	if Input.is_action_pressed("ui_up"):
		translate_object_local(Vector3.UP * delta * movement_speed) 
		

	if Input.is_action_pressed("ui_down"):
		translate_object_local(Vector3.DOWN * delta * movement_speed) 
		
	if Input.is_action_pressed("ui_left"):
		rotate_object_local(Vector3.FORWARD, deg_to_rad(45) * delta * rotation_speed) 
		#translate_object_local(Vector3.LEFT * delta * movement_speed) 
	if Input.is_action_pressed("ui_right"):
		#translate_object_local(Vector3.RIGHT * delta * movement_speed) 
		rotate_object_local(Vector3.FORWARD, deg_to_rad(-45) * delta * rotation_speed) 
		
func _damage_player(enemy_damage):
	player_life = player_life - enemy_damage
	print(player_life)


func _on_activate_turret_area_entered(area: Area3D) -> void:
	area.can_fire = true


func _on_activate_turret_area_exited(area: Area3D) -> void:
	area.can_fire = false
