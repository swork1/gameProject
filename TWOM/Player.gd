extends KinematicBody2D

export (int) var speed = 100

var velocity = Vector2()
var playerBody = ''
var playerHands = ''
var playerWeapon = ''
var playerRunSpeed = 1

var move_direction = ['right', 'left', 'up', 'down']

func get_input():
	velocity = Vector2()
	if (Input.is_action_just_pressed('right')):
		move_direction = ['right', 'left', 'up', 'down']
	if (Input.is_action_just_pressed('left')):
		move_direction = ['left', 'down', 'up', 'right']
	if (Input.is_action_just_pressed('up')):
		move_direction = ['up', 'down', 'right', 'left']
	if (Input.is_action_just_pressed('down')):
		move_direction = ['down', 'right', 'left', 'up']
		
	if Input.is_action_pressed(move_direction[0]):
		if move_direction[0] == 'right':
			velocity.x += playerRunSpeed
		if move_direction[0] == 'left':
			velocity.x -= playerRunSpeed
		if move_direction[0] == 'up':
			velocity.y -= playerRunSpeed
		if move_direction[0] == 'down':
			velocity.y += playerRunSpeed
	elif Input.is_action_pressed(move_direction[1]):
		if move_direction[1] == 'right':
			velocity.x += playerRunSpeed
		if move_direction[1] == 'left':
			velocity.x -= playerRunSpeed
		if move_direction[1] == 'up':
			velocity.y -= playerRunSpeed
		if move_direction[1] == 'down':
			velocity.y += playerRunSpeed
	elif Input.is_action_pressed(move_direction[2]):
		if move_direction[2] == 'right':
			velocity.x += playerRunSpeed
		if move_direction[2] == 'left':
			velocity.x -= playerRunSpeed
		if move_direction[2] == 'up':
			velocity.y -= playerRunSpeed
		if move_direction[2] == 'down':
			velocity.y += playerRunSpeed
	elif Input.is_action_pressed(move_direction[3]):
		if move_direction[3] == 'right':
			velocity.x += playerRunSpeed
		if move_direction[3] == 'left':
			velocity.x -= playerRunSpeed
		if move_direction[3] == 'up':
			velocity.y -= playerRunSpeed
		if move_direction[3] == 'down':
			velocity.y += playerRunSpeed
	

	velocity = velocity.normalized() * speed
	
	# Draw animation based on velocity direction
	# May cause errors later 
	if velocity.x > 0:
		$PlayerMainSprite.play('runright')
		
		# Body Sprite
		if playerBody == '':
			$PlayerBodySprite.hide()
		else:
			$PlayerBodySprite.show()
			$PlayerBodySprite.play('runright' + playerBody)
			$PlayerBodySprite.set_frame($PlayerMainSprite.get_frame())
		
		# Hands Sprite
		if playerHands == '':
			$PlayerHandsSprite.hide()
		else:
			$PlayerHandsSprite.show()
			$PlayerHandsSprite.play('runright' + playerHands)
			$PlayerHandsSprite.set_frame($PlayerMainSprite.get_frame())
		
		# Weapon Sprite
		if playerWeapon == '':
			$PlayerWeaponSprite.hide()
		else:
			$PlayerWeaponSprite.show()
			$PlayerWeaponSprite.play('runright' + playerWeapon)
			$PlayerWeaponSprite.set_frame($PlayerMainSprite.get_frame())
	elif velocity.x < 0:
		$PlayerMainSprite.play('runleft')
		
		# Body Sprite
		if playerBody == '':
			$PlayerBodySprite.hide()
		else:
			$PlayerBodySprite.show()
			$PlayerBodySprite.play('runleft' + playerBody)
			$PlayerBodySprite.set_frame($PlayerMainSprite.get_frame())
			
		# Hands Sprite
		if playerHands == '':
			$PlayerHandsSprite.hide()
		else:
			$PlayerHandsSprite.show()
			$PlayerHandsSprite.play('runleft' + playerHands)
			$PlayerHandsSprite.set_frame($PlayerMainSprite.get_frame())
		
		# Weapon Sprite
		if playerWeapon == '':
			$PlayerWeaponSprite.hide()
		else:
			$PlayerWeaponSprite.show()
			$PlayerWeaponSprite.play('runleft' + playerWeapon)
			$PlayerWeaponSprite.set_frame($PlayerMainSprite.get_frame())
	elif velocity.y > 0:
		$PlayerMainSprite.play('rundown')
		
		# Body Sprite
		if playerBody == '':
			$PlayerBodySprite.hide()
		else:
			$PlayerBodySprite.show()
			$PlayerBodySprite.play('rundown' + playerBody)
			$PlayerBodySprite.set_frame($PlayerMainSprite.get_frame())
			
		# Hands Sprite
		if playerHands == '':
			$PlayerHandsSprite.hide()
		else:
			$PlayerHandsSprite.show()
			$PlayerHandsSprite.play('rundown' + playerHands)
			$PlayerHandsSprite.set_frame($PlayerMainSprite.get_frame())
		
		# Weapon Sprite
		if playerWeapon == '':
			$PlayerWeaponSprite.hide()
		else:
			$PlayerWeaponSprite.show()
			$PlayerWeaponSprite.play('rundown' + playerWeapon)
			$PlayerWeaponSprite.set_frame($PlayerMainSprite.get_frame())
	elif velocity. y < 0:
		$PlayerMainSprite.play('runup')
		
		# Body Sprite
		if playerBody == '':
			$PlayerBodySprite.hide()
		else:
			$PlayerBodySprite.show()
			$PlayerBodySprite.play('runup' + playerBody)
			$PlayerBodySprite.set_frame($PlayerMainSprite.get_frame())
			
		# Hands Sprite
		if playerHands == '':
			$PlayerHandsSprite.hide()
		else:
			$PlayerHandsSprite.show()
			$PlayerHandsSprite.play('runup' + playerHands)
			$PlayerHandsSprite.set_frame($PlayerMainSprite.get_frame())
		
		# Weapon Sprite
		if playerWeapon == '':
			$PlayerWeaponSprite.hide()
		else:
			$PlayerWeaponSprite.show()
			$PlayerWeaponSprite.play('runup' + playerWeapon)
			$PlayerWeaponSprite.set_frame($PlayerMainSprite.get_frame())
	if velocity.x == 0 and velocity.y == 0:
		$PlayerMainSprite.play('idle')
		
		# Body Sprite
		if playerBody == '':
			$PlayerBodySprite.hide()
		else:
			$PlayerBodySprite.show()
			$PlayerBodySprite.play('idle' + playerBody)
			$PlayerBodySprite.set_frame($PlayerMainSprite.get_frame())
		
		# Hands Sprite
		if playerHands == '':
			$PlayerHandsSprite.hide()
		else:
			$PlayerHandsSprite.show()
			$PlayerHandsSprite.play('idle' + playerHands)
			$PlayerHandsSprite.set_frame($PlayerMainSprite.get_frame())
		
		# Weapon Sprite
		if playerWeapon == '':
			$PlayerWeaponSprite.hide()
		else:
			$PlayerWeaponSprite.show()
			$PlayerWeaponSprite.play('idle' + playerWeapon)
			$PlayerWeaponSprite.set_frame($PlayerMainSprite.get_frame())

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
	

func _on_testCoin_coin_collected():
	print('collected')
	playerBody = 'Leather2'
	playerHands = 'Gloves1'
	playerWeapon = 'Hammer'


func _on_testCoin2_coin_collected2():
	print('collected')
	playerBody = 'Metal'
	playerHands = 'Gloves1'
	playerWeapon = 'Flail'
