
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
    cx = clamp(cx, 0 + buff, room_width - view_w - buff);
    cy = clamp(cy, 0 + buff, room_height - view_h - buff);
}

#region ScreenShake

cx += random_range(-shakeRemain, shakeRemain);
cy += random_range(-shakeRemain, shakeRemain);
shakeRemain = max(0, shakeRemain - ((1 / shakeLength) * shakeMagnitude));

#endregion


camera_set_view_pos(view_camera[0], cx, cy);


