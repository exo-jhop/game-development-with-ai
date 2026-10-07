extends Area2D

@export var damage_amount: int = 10

func _physics_process(_delta: float) -> void:
	for body in get_overlapping_bodies():
		if body.has_method("take_damage"):
			body.take_damage(damage_amount)
