module Move1

	def move_1
		move
	end

	def move_2
		move
		move
	end

	def move_3
		move
		move
		move
		
	end

	def move_4
		move
		move
		move
		move
	end

	def move_5
		move
		move
		move
		move
		move
	end

	def move_6
		move
		move
		move
		move
		move
	end

	def move_8
		move
		move
		move
		move
		move
		move
		move
	end

	def turn_right
		turn_left
		turn_left
		turn_left
	end

	def turn_around
		turn_left
		turn_left
	end

	def pick_beeper_move
		if next_to_a_beeper
			pick_beeper
			move
		end
	end
	def put_5_beeper
		put_beeper
		put_beeper
		put_beeper
		put_beeper
		put_beeper
	end
	def put_2_beeper
		put_beeper
		put_beeper
	end
	def put_3_beeper
		put_beeper
		put_beeper
		put_beeper
	end
	def put_4_beeper
		put_beeper
		put_beeper
		put_beeper
		put_beeper
	end
	def pick_3_beeper
		pick_beeper
		pick_beeper
		pick_beeper
	end




end