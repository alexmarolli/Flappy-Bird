extends Node2D


func __detect_body_entered(body):
	if (body.is_in_group("player")):
		get_tree().get_nodes_in_group("main")[0]._add_points()
		get_tree().get_nodes_in_group("sfx")[0].get_node("2").play()


func _vis_screen_exited():
	get_tree().get_nodes_in_group("tub")[0]._reposition()
