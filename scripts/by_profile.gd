extends Button

@export var nhapLink = "Nhap link website"

func _on_pressed() -> void:
	OS.shell_open(nhapLink)
	pass # Replace with function body.
