moveSpeed = 1;
timeChange = 2;
currentState = enemyState.wander;
followDis = 180;
shootDis = 80;
firingDelay = 0;

canFire = true;

pd = 0;
dd = 0;

wanderTimer = 0;

hp = 50;
flash = 0;

path = path_add();

//x = irandom_range(16, room_width - 16);
//y = irandom_range(room_height - 32, room_height - 16);
