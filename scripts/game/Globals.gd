extends Node

@export var loseScreen : PackedScene

var playerHealth : float = 100.0

var score : int = 0
var hasGameEnded : bool = false
var isPlayerSafe : bool = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if playerHealth <= 0.0 and !hasGameEnded:
		hasGameEnded = true
		endGame()
		return;
	

func endGame() -> void:
	get_tree().change_scene_to_packed(loseScreen);
