if(!(keyboard_check(vk_left) || keyboard_check(vk_right))){
	if(global.throwVelocity <= 150 && global.throwVelocity > 55)
	{
		global.throwVelocity--;
	}

}