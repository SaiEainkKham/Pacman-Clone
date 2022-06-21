with (other)
{
	// Destroy powerup
	instance_destroy();
}

with (obj_ghost)
{
	// Change all ghost state to frightening
	direction += 180;
	if (state != ghostState.come_out) state = ghostState.frightening;
}

// Reset Duration
ResetFrightening();


