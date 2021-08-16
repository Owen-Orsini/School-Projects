/// @description Insert description here
// You can write your code in this editor
#macro input_right keyboard_check(ord("D"))
#macro input_left keyboard_check(ord("A"))
#macro input_thrust keyboard_check(ord("W"))
#macro input_fire keyboard_check(vk_space)

init_angle = 90;
real_angle = init_angle;

x_velocity = 0;
y_velocity = 0;

god_frames = 120;

god_timer_curr = god_frames;

laser_cooldown = 20;
cooldown_cur = 0;

thrust_force = 0.07;

real_x = x;
real_y = y;

rotational_speed = 6; // degrees per frame





