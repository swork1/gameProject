extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()

var look_direction = 'right'


func get_input():
    print($AnimatedSprite.get_animation())
    velocity = Vector2()
    if Input.is_action_pressed('right'):
        velocity.x += 1
        if $AnimatedSprite.get_animation() != 'attack':
            $AnimatedSprite.play('run')
        else:
            if $AnimatedSprite.animation_finished('attack'):
	            $AnimatedSprite.play('run')
        if look_direction == 'left':
            $AnimatedSprite.flip_h = false
            look_direction = 'right'
    if Input.is_action_pressed('left'):
        velocity.x -= 1
        $AnimatedSprite.play('run')
        if look_direction == 'right':
            $AnimatedSprite.flip_h = true
            look_direction = 'left'
    if Input.is_action_pressed('down'):
        velocity.y += 1
    if Input.is_action_pressed('up'):
        velocity.y -= 1
    if Input.is_action_pressed('click'):
        $AnimatedSprite.play('attack')
    velocity = velocity.normalized() * speed
    if velocity.x == 0 and velocity.y == 0:
        $AnimatedSprite.play('idle')

func _physics_process(delta):
    get_input()
    velocity = move_and_slide(velocity)
