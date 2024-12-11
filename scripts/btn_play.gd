extends Button

@export var chuyenScene = "Nhập res://"

func _on_pressed() -> void:
	get_tree().change_scene_to_file(chuyenScene)
	pass # Replace with function body.
