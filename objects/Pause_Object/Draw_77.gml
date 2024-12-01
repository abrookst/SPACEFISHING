/// @description pause logic
//Disable alpha blending
//due to the quirky way surfaces work
gpu_set_blendenable(false)

if (pause) // draw a frozen image while paused
{
	surface_set_target(application_surface);
		if (surface_exists(pauseSurf)) draw_surface(pauseSurf,0,0);
		else //restore from buffer if the surface is lost
		{
			pauseSurf = surface_create(resW,resH);
			buffer_set_surface(pauseSurfBuffer,pauseSurf,0);
		}
	surface_reset_target();
}

if (keyboard_check_pressed(ord("V"))) //Toggle pause
{
	if (!pause) // pause as soon as pressed
	{
		pause = true
		
		//deactivate everything other than this instance
		instance_deactivate_all(true);
		
		//if any animating sprites and or backgrounds are active
		//please deactive them seprately
		
		//save a still image of the game moment
		pauseSurf = surface_create(resW,resH);
		surface_set_target(pauseSurf)
			draw_surface(application_surface,0,0);
		surface_reset_target();
		
		//backup surface in case of error
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
		buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
	}
	else //game will unpause
	{
		pause = false;
		instance_activate_all();
		if (surface_exists(pauseSurf)) surface_free(pauseSurf);
		if (buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	}
}

// renable alpha blending
gpu_set_blendenable(true)