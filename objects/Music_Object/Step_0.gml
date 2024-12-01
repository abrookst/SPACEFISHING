if(!(IsPlaying))
{
	//unsure on wheather choose is actually random
	Chosen_Song = choose(Track1, Track2, Track3, Track4, Track5, Track6, Track8, Track9, Track10);

	audio_play_sound(Chosen_Song, 0, 0, 1.0, undefined, 1.0);

	IsPlaying = true;

}



if(IsPlaying)
{
	if (!audio_is_playing(Chosen_Song))
	{
		IsPlaying = false;

	}



}

