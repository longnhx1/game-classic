extends Area2D

@export var image_path: Texture  # Đường dẫn hình ảnh
@export var sound_path: AudioStream  # Đường dẫn âm thanh

var image_node: Sprite2D
var audio_node: AudioStreamPlayer2D

func _ready():
	# Tìm các node hiển thị hình ảnh và phát âm thanh
	image_node = $Sprite2D
	audio_node = $amThanhScary
	audio_node.seek(5)

	image_node.visible = false

func _on_body_entered(body:Node2D) -> void:
	if body.is_in_group("player"):
		image_node.texture = image_path
		audio_node.stream = sound_path
		# Hiển thị hình ảnh
		image_node.visible = true

		# Phát âm thanh
		audio_node.play()
	pass # Replace with function body.
