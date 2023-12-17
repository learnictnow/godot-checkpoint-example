extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


# Handle objects entering the checkpoint area
func _on_area_3d_body_entered(body):
	if body.is_in_group("Player"):
		# Make the flag visible if it has been activated
		$CheckPointFlag.visible = true
		if body.has_method("update_spawn_point"):
			body.update_spawn_point($RespawnPoint)
	pass # Replace with function body.
