
var shootType = obj_GameController.shootState;
if (shootType == shootMode.move) { mode = camMode.followObject; }
else if (shootType == shootMode.shoot) { mode = camMode.followMousePeek; }

var cx = camera_get_view_x(view_camera[0]); 
var cy = camera_get_view_y(view_camera[0]);

switch (mode)
{
    case camMode.followObject:
    if (!instance_exists(followingObj)) { break; }
    
    cx = followingObj.x - (view_w / 2);
    cy = followingObj.y - (view_h / 2);
    
    break;
    
    case camMode.followMousePeek:
    
    cx = lerp(followingObj.x, mouse_x, 0.2) - (view_w / 2);
    cy = lerp(followingObj.y, mouse_y, 0.2) - (view_h / 2);
    
    break;
}

if (!boundless)
{
    cx = clamp(cx, 0, room_width - view_w);
    cy = clamp(cy, 0, room_height - view_h);
}

camera_set_view_pos(view_camera[0], cx, cy);

