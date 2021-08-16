/// @description Insert description here
// You can write your code in this editor
switch(size){
case "big":
asteroid_create("children_big");
global.asteroids++;
break;
case "med":
asteroid_create("children_med");
global.asteroids++;
break;
case "small":
global.asteroids--;
global.s_score++;
break;

}