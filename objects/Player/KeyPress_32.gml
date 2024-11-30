/// @description Insert description here
// You can write your code in this editor


tempIndex = 0;
tempMax = 0;

tempMin = global.fishMin[global.fishRodIndex];
tempMax = global.fishMax[global.fishRodIndex];

global.fish = irandom_range(tempMin, tempMax);