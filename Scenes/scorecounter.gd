extends RichTextLabel

var score = Globals.score
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	score = Globals.score
	clear()
	append_text("score: "+ str(score))
	pass
