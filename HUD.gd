extends CanvasLayer

var coinscollected = 0 
@onready var win_label=$winlabel

# Called when the node enters the scene tree for the first time.
func _ready():
	$coincount.text ="Coins : " + str(coinscollected)
	win_label.visible = false
	
	  


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_coin_body_entered(body):
	coinscollected = coinscollected+1
	$coincount.text ="Coins : " + str(coinscollected)
	if coinscollected == 11:
		win_label.text = "YOU WIN !"
		win_label.visible = true
