extends CharacterBody2D

const BASIC_SPEED = 100 # Базовая скорость игрока

var run_mult = 1 # Коэффициент умножения скорости при беге
var speed = BASIC_SPEED # Итоговая скорость игрока

func _process(delta: float) -> void:
	look_at(get_global_mouse_position())
	if true: # Корректировка значений переменных
		speed = BASIC_SPEED * run_mult 
	if true: # Обработка нажатий
		if Input.is_action_pressed("shift"):
			run_mult = 2
		else:
			run_mult = 1

func _physics_process(delta: float) -> void:
	var input_direction = Input.get_vector("a", "d", "w", "s") # Получаем направление движения в формате Vector2
	velocity = input_direction * speed # Задаем вектор движения, умножаю скорость на направление
	move_and_slide() # Задаем тип движения и обработки коллизий


func _on_interaction_range_body_entered(body: Node2D) -> void:
	if body.is_in_group("Interaction"):
		body.get_node("InteractionSign").visible = true

func _on_interaction_range_body_exited(body: Node2D) -> void:
	if body.is_in_group("Interaction"):
		body.get_node("InteractionSign").visible = false
