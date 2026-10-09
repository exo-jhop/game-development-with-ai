extends Node

# Player invincibility-frame system
# Something's off: the player seems to take damage every frame anyway,
# like the invincibility window isn't doing anything.

var health: int = 100
var is_invincible: bool = false

func take_damage(amount: int) -> void:
	if is_invincible:
		return
	health -= amount
	print("Health: ", health)
	start_invincibility()

func start_invincibility() -> void:
	is_invincible = true
	get_tree().create_timer(1.0).timeout
	is_invincible = false

func _ready() -> void:
	take_damage(10)
	take_damage(10)
	take_damage(10)
