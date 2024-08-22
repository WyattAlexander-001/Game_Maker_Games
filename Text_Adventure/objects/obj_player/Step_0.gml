/// @description Player movement, runs every frame of game

//Calculate movement
vx = ((moveRight - moveLeft) * walkSpeed);

// If idle
if(vx == 0){
	//STUB
}

// If moving

if(vx != 0){
	x += vx; //x is a built in variable!
}