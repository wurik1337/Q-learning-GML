/// @description disgusting code, serves to demonstrate
//room
draw_set_color(c_white)
//0
draw_rectangle(x+(0*10),y+(1*10),x+(0*10+3),y+(1*10+3),false)
//1
draw_rectangle(x+(-1*10),y+(1*10),x+(-1*10+3),y+(1*10+3),false)
//2
draw_rectangle(x+(-2*10),y+(1*10),x+(-2*10+3),y+(1*10+3),false)
//3
draw_rectangle(x+(-1*10),y+(2*10),x+(-1*10+3),y+(2*10+3),false)
//4
draw_rectangle(x+(-2*10),y+(2*10),x+(-2*10+3),y+(2*10+3),false)
//5
draw_rectangle(x+(-2*10),y+(3*10),x+(-2*10+3),y+(3*10+3),false)
//6
draw_rectangle(x+(-3*10),y+(1*10),x+(-3*10+3),y+(1*10+3),false)

//in the rightmost room is the start, and in the leftmost room is the reward
draw_text(x+14,y-5,"Start")
draw_text(x-90,y-5,"Reward")



draw_set_color(c_red)
// how to run around the rooms
var time=min(current_time/room_speed/2,array_length(state_view)-1)
var numb=state_view[@ floor(time)] 
switch (numb)
{
	case 0:
	draw_rectangle(x+(0*10),y+(1*10),x+(0*10+3),y+(1*10+3),false) break;
	case 1:
	draw_rectangle(x+(-1*10),y+(1*10),x+(-1*10+3),y+(1*10+3),false) break;
	case 2:
	draw_rectangle(x+(-2*10),y+(1*10),x+(-2*10+3),y+(1*10+3),false) break;
	case 3:
	draw_rectangle(x+(-1*10),y+(2*10),x+(-1*10+3),y+(2*10+3),false) break;
	case 4:
	draw_rectangle(x+(-2*10),y+(2*10),x+(-2*10+3),y+(2*10+3),false) break;
	case 5:
	draw_rectangle(x+(-2*10),y+(3*10),x+(-2*10+3),y+(3*10+3),false) break;
	case 6:
	draw_rectangle(x+(-3*10),y+(1*10),x+(-3*10+3),y+(1*10+3),false) break; 
}


draw_text(x,y+200,"look Output")
