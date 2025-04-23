extends CharacterBody2D


const SPEED = 100.0
const JUMP_VELOCITY = -100.0


func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("left","right","up","down").normalized()
	
	velocity = (direction * SPEED)
	move_and_slide()
	
	if direction == Vector2.ZERO:
		$AnimatedSprite2D.play("parado")
	else:
		if direction.x > 0:
			$AnimatedSprite2D.play("direita")
		elif direction.x < 0:
			$AnimatedSprite2D.play("esquerda")
		elif direction.y < 0:
			$AnimatedSprite2D.play("cima")
		elif direction.y > 0:
			$AnimatedSprite2D.play("baixo")
		
		


func _on_porta_biblioteca_body_entered(body: Node2D) -> void:
	if body.name == "player":
		get_tree().call_deferred("change_scene_to_file", "res://cenas/biblioteca.tscn")


func _on_porta_saida_body_entered(body: Node2D) -> void:
	if body.name == "player":
		get_tree().call_deferred("change_scene_to_file", "res://cenas/corredor.tscn")


func _on_porta_patio_body_entered(body: Node2D) -> void:
	if body.name == "player":
		get_tree().call_deferred("change_scene_to_file", "res://cenas/patio.tscn")


func _on_porta_saida_patio_body_entered(body: Node2D) -> void:
	if body.name == "player":
		get_tree().call_deferred("change_scene_to_file", "res://cenas/corredor.tscn")


func _on_porta_coordenacao_body_entered(body: Node2D) -> void:
	if body.name == "player":
		get_tree().call_deferred("change_scene_to_file", "res://cenas/coordenacao.tscn")


func _on_porta_saida_coordenacao_body_entered(body: Node2D) -> void:
	if body.name == "player":
		get_tree().call_deferred("change_scene_to_file", "res://cenas/corredor.tscn")


func _on_porta_sala_de_aula_body_entered(body: Node2D) -> void:
	if body.name == "player":
		get_tree().call_deferred("change_scene_to_file", "res://cenas/node_sala_de_aula.tscn")


func _on_porta_saida_node_sala_de_aula_body_entered(body: Node2D) -> void:
	if body.name == "player":
		get_tree().call_deferred("change_scene_to_file", "res://cenas/corredor.tscn")


func _on_porta_patio_grama_body_entered(body: Node2D) -> void:
	if body.name == "player":
		get_tree().call_deferred("change_scene_to_file", "res://cenas/patio_grama.tscn")


func _on_porta_saida_patio_grama_body_entered(body: Node2D) -> void:
	if body.name == "player":
		get_tree().call_deferred("change_scene_to_file", "res://cenas/patio.tscn")
