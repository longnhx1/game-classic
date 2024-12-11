extends Area2D

var chuyenScene = "res://scenes/playGame3.tscn"

func _on_body_entered(body:Node2D) -> void:
	if body.is_in_group("player"):
		get_tree().change_scene_to_file(chuyenScene)
	pass # Replace with function body.
