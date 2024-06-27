extends Node


var point = 0


func _physics_process(_delta):
	if Input.is_action_just_pressed("ui_right"):
		get_tree().reload_current_scene()

func _add_points():
	point += 1
	get_tree().get_nodes_in_group("player")[0].s += get_tree().get_nodes_in_group("player")[0].ss
	print(point)
