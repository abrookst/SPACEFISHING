global.throwVelocity = 55
global.cast = false

global.fish = 0;

//fishing rods
	// parallel lists of name, min value, and max value in that order
		//names
global.fishingRods = [ "rod1", "rod2", "rod3" ];
		//min values
global.fishMin = [ 1, 12, 20 ];
		//max values
global.fishMax = [ 29, 42, 50 ];
	
	//index for parallel lists give info for players current fishing rod
global.fishRodIndex = 0;