extends Area2D


# Called when the node enters the scene tree for the first time.
var scene_to_load = "res://scenes/playGame2.tscn"  # Thay đổi đường dẫn đến scene bạn muốn

func _on_body_entered(body:Node2D) -> void:
	if body.name == "player":
		print("Player entered!") # Thay đổi thông báo nếu cần
		get_tree().change_scene_to_file(scene_to_load)
	pass # Replace with function body.
