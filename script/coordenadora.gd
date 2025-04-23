extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"../fala_coordenadora".visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	$"../fala_coordenadora".show()


func _on_body_exited(body: Node2D) -> void:
	$"../fala_coordenadora".hide()
