
extends Node2D

var cena_inimigo
func _ready() -> void:
	cena_inimigo = preload("res://inimigo.tscn")

func _on_timer_timeout() -> void:
	var inimigo = cena_inimigo.instantiate()
	inimigo.position = Vector2(
	   1200,
		randf_range(50, 600)
	)
	add_child(inimigo)
	$Timer.wait_time -= 0.1
	if $Timer.wait_time < 0.2:
		$Timer.wait_time = 0.2
