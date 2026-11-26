extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label4.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label3.text = "Lives: " + str(Global.lives)
	if Global.lives == 0:
		get_tree().change_scene_to_file("res://gameover.tscn")

func _on_button_pressed() -> void:
	Global.lives -= 1
	$Label4.visible = true

func _on_button_2_pressed() -> void:
	Global.lives -= 1
	$Label4.visible = true

func _on_button_3_pressed() -> void:
	Global.lives -= 1
	$Label4.visible = true

func _on_button_4_pressed() -> void:
	Global.lives -= 1
	$Label4.visible = true


func _on_label_2_mouse_entered() -> void:
	$Label2.add_theme_color_override("font_color", Color.RED)


func _on_label_2_mouse_exited() -> void:
	$Label2.add_theme_color_override("font_color", Color.WHITE)


func _on_label_2_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			get_tree().change_scene_to_file("res://fivequestion.tscn")
