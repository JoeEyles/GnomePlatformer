//temp
//show_debug_message("phy speed y " + string(phy_speed_y) + " >= 0 = " + string(phy_speed_y >= 0));
if(phy_speed_y >= 0)
{
    if(isJumping == true)
    {
        repeat(60)
        {
            var xx = x + random(sprite_width)*0.75 - sprite_width/2.0
            var yy = y + sprite_height*0.5;
            part_particles_create(global.P_System, xx, yy, global.Particle1, 1);
            //show_debug_message("Drawing particle for " + string(x) + ", " + string(y) + " at " + string(xx) + ", " + string(yy));
        }
    }
    isJumping = false;
}

if (place_meeting(x,y, argument0) && key_jump)// && phy_speed_y <= 0)
{
    isJumping = true;  
    physics_apply_local_impulse(0,0,0, key_jump * -jumpspeed*5);
    //phy_speed_y -= 20;
    repeat(60)
    {
        var xx = x + random(sprite_width)*0.75 - sprite_width/2.0
        var yy = y + sprite_height*0.5;
        part_particles_create(global.P_System, xx, yy, global.Particle1, 1);
        //show_debug_message("Drawing particle for " + string(x) + ", " + string(y) + " at " + string(xx) + ", " + string(yy));
    }
}


//show_debug_message("isJumping = " + string(isJumping));
