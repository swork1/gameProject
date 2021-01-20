extends Area2D

signal coin_collected2

func _on_testCoin2_body_entered(body):
	if body.is_in_group('player'):
		emit_signal('coin_collected2')
		queue_free()
	
