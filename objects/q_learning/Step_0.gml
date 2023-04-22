/// @description  coment
randomise()
if alarm[0]=-1
if (k < 10) {
    //initial state (If you want to change the initial room, change this value to the initial room.)
    state = 0;


    while (state != 6) { //loop until it reaches the end of the room
      if (state == 0) {
        action = 1;
      }
      else if (state == 1) {
        r = irandom(100) % 3;
        action = M[1][r];
      }
      else if (state == 2) {
        r = irandom(100) % 3;
        action = M[2][r];
      }
      else if (state == 3) {
        r = irandom(100) % 2;
        action = M[3][r];
      }
      else if (state == 4) {
        r = irandom(100) % 3;
        action = M[4][r];
      }
      else if (state == 5) {
        action = 4 ;
      }
      else if (state == 6) {
        action = 2 ;
      }
      a = -10;
      for (i = 0; i < array_length(Q); i++) { 
        if (a < Q[action][i]) {
          a = Q[action][i];  
        }
      }

      Qmax = a * gammma;
      Q[state][action] = R[state][action] + Qmax;
      state = action;

	  #region отладка
	  alarm[0]=40
	  show_debug_message(state)
	  array_push(state_view,state)//To see
	  count++
	  //var r=get_string(array_length(Q),"awd")
	  if count div 3
	  {
	  show_debug_message("---")
	  count = 0
	  }
	  #endregion
    }
    k++;
	
}
else
{ 

   
    state = 0;
    
    b = -10;
    while (state != 6) {
      for (i = 0; i < array_length(Q); i++) {
        if (b <= Q[state][i]) {
          b = Q[state][i];
          l = i;

		  //alarm[0]=40//для медлености
        }
      }
      state = l;

	  #region отладка
	  show_debug_message(state)
	  array_push(state_view,state)//To see
	  count++
	  if count div 3
	  {
	  show_debug_message("---")
	  count = 0
	  }
	  #endregion
    }
}



