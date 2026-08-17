extends CharacterBody2D

const SPEED = 600.0
var vidas = 3
func _physics_process(delta: float) -> void:
	velocity.x = 0
	velocity.y = 0

	if Input.is_action_just_pressed("ui_left"):
		velocity.x = -1*SPEED
	if Input.is_action_just_pressed("ui_right"):
		velocity.y = 1*SPEED
	if Input.is_action_just_pressed("ui_up"):
		velocity.y = -1*SPEED
	if Input.is_action_just_pressed("ui_down"):
		velocity.x = 1*SPEED
		
	move_and_slide()


func _on_timer_timeout() -> void:
	pass # Replace with function body.
