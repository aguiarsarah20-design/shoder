extends Area2D

var velocidade = Vector2(0,0)

func _ready():

	velocidade.x = randf_range(-400, -120)
	velocidade.y = randf_range(-60, 60)

func _process(delta):
	position += velocidade * delta

	if position.x < 0:
		queue_free()
