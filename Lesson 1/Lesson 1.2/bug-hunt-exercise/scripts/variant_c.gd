extends Node

# Coin collection counter
# Something's off: the printed coin count goes up, but the total
# never seems to actually save or persist correctly.

var coins_collected: int = 0

func _on_coin_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		var coins_collected = coins_collected + 1
		print("Coins: ", coins_collected)
		collect_coin()

func collect_coin() -> void:
	print("Total coins saved: ", coins_collected)

func _ready() -> void:
	_on_coin_body_entered.call(Node2D.new())
