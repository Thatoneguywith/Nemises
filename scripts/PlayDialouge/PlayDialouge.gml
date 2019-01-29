/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 48000A40
/// @DnDArgument : "code" "if(instance_exists(obj_dialouge_system)){$(13_10)	show_debug_message("sorry can't have more than one.");$(13_10)}else{$(13_10)	with(instance_create_depth(0,0,0, obj_dialouge_system)){$(13_10)		dialouge = argument0;$(13_10)		event_user(0);$(13_10)	}$(13_10)	$(13_10)	$(13_10)}	$(13_10)	$(13_10)"
if(instance_exists(obj_dialouge_system)){
	show_debug_message("sorry can't have more than one.");
}else{
	with(instance_create_depth(0,0,0, obj_dialouge_system)){
		dialouge = argument0;
		event_user(0);
	}
	
	
}