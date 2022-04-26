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