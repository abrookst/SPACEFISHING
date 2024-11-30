if(global.cast)
{
	with(lure) instance_destroy();
	global.cast = false;
	global.caught = 0;
}