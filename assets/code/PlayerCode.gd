extends CharacterBody2D

var target_pos : Vector2 = position

func _ready() -> void:
	pass

func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var tarx = get_global_mouse_position().x - (int(get_global_mouse_position().x) % 16)
		var tary = get_global_mouse_position().y - (int(get_global_mouse_position().y) % 16)
		target_pos = Vector2(tarx, tary)

func _physics_process(_delta: float) -> void:
	if position.distance_to(target_pos) > 0.0:
		velocity = position.direction_to(target_pos) * 64.0
		move_and_slide()
	else:
		velocity = Vector2.ZERO
