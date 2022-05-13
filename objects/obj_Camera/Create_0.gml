enum camMode 
{
    followObject,
    followMousePeek
}

mode = camMode.followMousePeek;
followingObj = obj_Player;
boundless = false;

view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);


shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;
buff = 32; // might not be useful
