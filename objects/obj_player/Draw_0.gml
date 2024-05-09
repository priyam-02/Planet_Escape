/// @description Insert description here
// You can write your code in this editor

if (shader) {
    shader_set(shd_healing);
    draw_self();
    shader_reset();
} else {
    draw_self();
}








