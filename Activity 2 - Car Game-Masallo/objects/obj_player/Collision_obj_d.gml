instance_destroy(obj_park);
switch(obj_game.level){
	case 1: 
		if(room == room_empty && room_number == 3){
			room_goto(room_hori);
			room_number = 4;
		} else if(room == room_hori && room_number == 4){
			room_goto(room_t_left);
			room_number = 2;
		} else if(room == room_t_left && room_number == 2){
			room_goto(room_empty);
			room_number = 3;
		} else if(room == room_hori && room_number == 5){
			room_goto(room_vert);
			room_number = 1;
		} else if(room == room_vert && room_number == 1){
			room_goto(room_hori);
			room_number = 5;
		}
	break;
	case 2: 
		if(room == room_empty && room_number == 3){
			room_goto(room_vert);
			room_number = 4;
		} else if(room == room_vert && room_number == 4){
			room_goto(room_hori);
			room_number = 2;
		} else if(room == room_hori && room_number == 2){
			room_goto(room_empty);
			room_number = 3;
		} else if(room == room_vert && room_number == 5){
			room_goto(room_t);
			room_number = 1;
		} else if(room == room_t && room_number == 1){
			room_goto(room_vert);
			room_number = 5;
		}
	break;
	case 3:
		if(room == room_empty && room_number == 3){
			room_goto(room_hori);
			room_number = 4;
		} else if(room == room_hori && room_number == 4){
			room_goto(room_vert);
			room_number = 2;
		} else if(room == room_vert && room_number == 2){
			room_goto(room_empty);
			room_number = 3;
		} else if(room == room_hori && room_number == 5){
			room_goto(room_t_left);
			room_number = 1;
		} else if(room == room_t_left && room_number == 1){
			room_goto(room_hori);
			room_number = 5;
		}
	
	break;
	case 4:
		if(room == room_empty && room_number == 3){
			room_goto(room_vert);
			room_number = 4;
		} else if(room == room_vert && room_number == 4){
			room_goto(room_hori);
			room_number = 2;
		} else if(room == room_hori && room_number == 2){
			room_goto(room_empty);
			room_number = 3;
		} else if(room == room_vert && room_number == 5){
			room_goto(room_t);
			room_number = 1;
		} else if(room == room_t && room_number == 1){
			room_goto(room_vert);
			room_number = 5;
		}
	
	break;
	case 5:
		if(room == room_vert && room_number == 3){
			room_goto(room_hori);
			room_number = 4;
		} else if(room == room_hori && room_number == 4){
			room_goto(room_vert);
			room_number = 2;
		} else if(room == room_vert && room_number == 2){
			room_goto(room_vert);
			room_number = 3;
		} else if(room == room_hori && room_number == 5){
			room_goto(room_vert);
			room_number = 1;
		} else if(room == room_vert && room_number == 1){
			room_goto(room_hori);
			room_number = 5;
		}
	break;
	default: 
	break;
}
x = room_width-150;
y = 150;