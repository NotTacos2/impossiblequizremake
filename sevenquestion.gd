extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label11.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label10.text = "Lives: " + str(Global.lives)
	if Global.lives == 0:
		get_tree().change_scene_to_file("res://gameover.tscn")


func _on_label_7_mouse_entered() -> void:
	$Label7.visible = true
	$Label7.text = "NO."


func _on_label_7_mouse_exited() -> void:
	$Label7.text = " "


func _on_label_7_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			Global.lives -= 1
			$Label11.visible = true


func _on_label_9_mouse_entered() -> void:
	$Label9.text = "NO NO NO"

func _on_label_9_mouse_exited() -> void:
	$Label9.text = " "

func _on_label_9_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			Global.lives -= 1
			$Label11.visible = true


func _on_label_6_mouse_entered() -> void:
	$Label6.text = "lwk I'm dead"


func _on_label_6_mouse_exited() -> void:
	$Label6.text = " "


func _on_label_6_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			Global.lives -= 1
			$Label11.visible = true


func _on_label_8_mouse_entered() -> void:
	$Label8.text = "here!"


func _on_label_8_mouse_exited() -> void:
	$Label8.text = " "


func _on_label_8_gui_input(event: InputEvent) -> void: # correct one
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			get_tree().change_scene_to_file("res://eightquestion.tscn")


func _on_label_5_mouse_entered() -> void:
	$Label5.text = "you doing great? I am"


func _on_label_5_mouse_exited() -> void:
	$Label5.text = " "


func _on_label_5_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			Global.lives -= 1
			$Label11.visible = true


func _on_label_4_mouse_entered() -> void:
	$Label4.text = "hey wsg"


func _on_label_4_mouse_exited() -> void:
	$Label4.text = " "


func _on_label_4_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			Global.lives -= 1
			$Label11.visible = true


func _on_label_3_mouse_entered() -> void:
	$Label3.text = "NOT HERE!"


func _on_label_3_mouse_exited() -> void:
	$Label3.text = " "


func _on_label_3_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			Global.lives -= 1
			$Label11.visible = false
