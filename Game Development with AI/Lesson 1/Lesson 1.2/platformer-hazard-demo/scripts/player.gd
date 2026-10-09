extends CharacterBody2D

const SPEED = 200.0
const JUMP_VELOCITY = -400.0
const GRAVITY = 980.0

@export var health: int = 100

@onready var health_bar = get_node("/root/Main/UI/HealthBar")

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction = Input.get_axis("move_left", "move_right")
	velocity.x = direction * SPEED

	move_and_slide()

func take_damage(amount: int) -> void:
	health -= amount
	health = max(health, 0)
	health_bar.value = health

	if health <= 0:
		print("Player Died")
