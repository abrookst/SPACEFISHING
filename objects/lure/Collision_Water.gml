motion_set(0,0)

//trigger alarm for fishing

tempIndex = 0;
tempMax = 0;

tempMin = global.fishMin[global.fishRodIndex];
tempMax = global.fishMax[global.fishRodIndex];

global.fish = irandom_range(tempMin, tempMax);

fish.sprite_index = global.fishSprites[(global.fish % 10)];