vector rothidden_d = <0, 270, 0>;
vector rotshown_d = <270, 0, 270>;

rotation rotshown;
rotation rothidden;

integer hudshown = TRUE;

rotation calcrot(vector rot)
{
    rot *= DEG_TO_RAD;
    return llEuler2Rot(rot);
}

position(integer show)
{
    integer attachPoint = llGetAttached();
    
    if(attachPoint != 0)
    {
        float y;
        float z;
        vector size = llGetScale(); 
        
        //llOwnerSay((string)size);          
                
        y = size.z / 2.0;
        
        // Nasty if else block
        
        if(show)
        {
            llSetRot(rotshown);
            z = size.x - 0.035;
        }
        else
        {
            llSetRot(rothidden);
            z = size.y - -0.10;
            y = size.y - 0.15;
        }
        
        if (attachPoint == 32) // HUD Top Right
        {
            llSetPos(<0, y, -z>);
        }
        else if (attachPoint == 33) // HUD Top
        {
            llSetPos(<0,0,-z>);
        }
        else if (attachPoint == 34) // HUD Top Left
        {
            llSetPos(<0,-y, -z>);
        }
        else if (attachPoint == 36) // HUD Bottom Left
        {
            llSetPos(<0, -y, z>);
        }
        else if (attachPoint == 37) // HUD Bottom
        {
            llSetPos(<0, 0, z>);
        }
        else if (attachPoint == 38) // HUD Bottom Right
        {
            llSetPos(<0, y, z>);
        }    
    }
}

default
{
    state_entry()
    {
        rotshown = calcrot(rotshown_d);
        rothidden = calcrot(rothidden_d);
        
        position(hudshown);
    }
    
    attach(key id)
    {
        if (id != NULL_KEY)
        {
            position(hudshown);
        }
    }
    
    link_message(integer sender, integer num, string msg, key id)
    {
        if("ZHAO_TOGGLE_SHOW" == msg)
        {
            hudshown = !hudshown;
            position(hudshown);
        }
        if("ZHAO_SHOW" == msg)
        {
            hudshown = TRUE;
            position(hudshown);
        }
    }
}
