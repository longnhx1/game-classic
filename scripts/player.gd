extends CharacterBody2D


const SPEED = 150.0
const diemBatDau = Vector2.ZERO
var startPos = position
func _ready() -> void:
	add_to_group("player")
	startPos = position

func _physics_process(delta: float) -> void:
	var chuyenHoa = Vector2.ZERO

	if Input.is_action_pressed("ui_up"):
		chuyenHoa.y -= 1

	if Input.is_action_pressed("ui_down"):
		chuyenHoa.y += 1

	if Input.is_action_pressed("ui_left"):
		chuyenHoa.x -= 1

	if Input.is_action_pressed("ui_right"):
		chuyenHoa.x += 1

	if chuyenHoa != Vector2.ZERO:
		chuyenHoa = chuyenHoa.normalized()
		velocity = chuyenHoa * SPEED
	else:
		velocity = Vector2.ZERO

	move_and_slide()

	if is_on_wall() or is_on_floor() or is_on_ceiling():
		position = startPos




	# Add the gravity.
	# if not is_on_floor():
	# 	velocity += get_gravity() * delta

	# # Handle jump.
	# if Input.is_action_just_pressed("ui_accept") and is_on_floor():
	# 	velocity.y = JUMP_VELOCITY

	# # Get the input direction and handle the movement/deceleration.
	# # As good practice, you should replace UI actions with custom gameplay actions.
	# var direction := Input.get_axis("ui_left", "ui_right")
	# if direction:
	# 	velocity.x = direction * SPEED
	# else:
	# 	velocity.x = move_toward(velocity.x, 0, SPEED)

	# move_and_slide()
