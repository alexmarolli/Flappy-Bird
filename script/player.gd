extends RigidBody2D

export (float) var s 
export (float) var j
export (float) var ss

var vivo = true


func _ready():
	pass


func _physics_process(_delta):
	linear_velocity.x = s

	if (vivo):
		if Input.is_action_just_pressed("ui_up"):
			set_linear_velocity(Vector2(0,0))
			linear_velocity.y -= j
			$anim.play("motion")
			get_tree().get_nodes_in_group("sfx")[0].get_node("1").play()
		get_tree().get_nodes_in_group("limite")[0].global_position.x = global_position.x


func _integrate_forces(state):
	if (vivo):
		for i in range(state.get_contact_count()):
			if (state.get_contact_collider_object(i).is_in_group("kill")):
				vivo = false
				linear_velocity.x = 0
				get_tree().get_nodes_in_group("sfx")[0].get_node("3").play()
