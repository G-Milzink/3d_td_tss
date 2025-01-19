extends Control


@onready var background: TextureRect = $BackGround
@onready var main : Node3D = get_tree().get_root().get_node("Main")


func _on_start_pressed() -> void:
	visible = false
	Engine.time_scale = 1
	Input.mouse_mode = Input.MOUSE_MODE_CONFINED
	main.menu_is_open = false


func _on_exit_pressed() -> void:
	get_tree().quit()
