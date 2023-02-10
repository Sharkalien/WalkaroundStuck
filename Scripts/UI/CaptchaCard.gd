class_name CaptchaCard
extends Node2D

var current_item : String
var current_description = []
onready var item_sprite = $CardButton/ItemSprite
onready var anim_player : AnimationPlayer = $AnimationPlayer

var card_highlighted : bool = false
onready var sylladex = Global.sylladex

func _on_mouse_entered():
	anim_player.play("Hover")
	if current_item != "":
		sylladex.name_display.text = current_item

func _on_mouse_exited():
	sylladex.name_display.text = ""
	anim_player.play("RESET")

func _on_CardButton_pressed() -> void:
	if !current_item.empty():
		Global.dialogue.trigger_dialogue(current_description)
