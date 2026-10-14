extends CharacterBody2D

var target_pos : Vector2 = position

func _ready() -> void:
	pass

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		target_pos = get_global_mouse_position()

func _process(_delta: float) -> void:
	if position.distance_to(target_pos) > 0.0:
		velocity = position.direction_to(target_pos) * 200.0
		move_and_slide()
	else:
		velocity = Vector2.ZERO
