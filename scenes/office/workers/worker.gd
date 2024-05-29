class_name Worker
extends Control
## A worker who earns money

@export var label : Label

var money : float = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	update_label_text()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	earn_passive_money(delta)
	update_label_text()


func earn_money():
	money += 1
	update_label_text()

func earn_passive_money(delta):
	money += delta

func update_label_text():
	label.text = "Money : %d" %money


func _on_button_pressed():
	earn_money()
