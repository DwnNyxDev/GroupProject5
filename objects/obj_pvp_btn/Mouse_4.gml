/// @description Insert description here
// You can write your code in this editor
if(btn_type="create"){
	server = instance_create_layer(0,0,"Instances",obj_server);
	instance_destroy(obj_pvp_btn);
}
else if(btn_type="join"){
	client = instance_create_layer(0,0,"Instances",obj_client);
	instance_destroy(obj_pvp_btn);
}