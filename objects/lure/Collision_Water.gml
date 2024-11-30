motion_set(0,0)

//trigger alarm for fishing

tempIndex = 0;
tempMax = 0;

tempMin = global.fishMin[global.fishRodIndex];
tempMax = global.fishMax[global.fishRodIndex];

if(global.caught < 1){
	
	global.fish = irandom_range(tempMin, tempMax);

	fish.sprite_index = global.fishSprites[(global.fish % 10)];
}

//keeps fish from changing after cast 
global.caught =+ 1;