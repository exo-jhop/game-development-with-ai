extends Node

# Score / Leveling system
# Something's off: players report leveling up later than expected.

var score: int = 0
var level: int = 1
var next_level_threshold: int = 100

func add_score(points: int) -> void:
	score += points
	check_level_up()

func check_level_up() -> void:
	if score > next_level_threshold:
		level += 1
		next_level_threshold += 100
		print("Level up! Now level ", level)

func _ready() -> void:
	add_score(50)
	add_score(50)  # score is now exactly 100, should level up here
	add_score(10)
