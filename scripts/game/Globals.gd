extends Node

@export var loseScreen : PackedScene
@export var main : PackedScene
@export var titleScreen : PackedScene
var playerHealth : float = 100.0
 
var score : int = 0
var hasGameEnded : bool = false
var isPlayerSafe : bool = false
var didStart = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if !didStart:
		showTitle()

	if playerHealth <= 0.0 and !hasGameEnded:
		hasGameEnded = true
		endGame()
		return;
	

func endGame() -> void:
	get_tree().change_scene_to_packed(loseScreen);
	
func start() -> void:
	get_tree().change_scene_to_packed(main)
	playerHealth = 100
	isPlayerSafe = false
	hasGameEnded = false
	score = 0
	
func showTitle() -> void:
	get_tree().change_scene_to_packed(titleScreen)
	didStart = true
	
	
