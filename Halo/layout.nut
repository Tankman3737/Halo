/**
 * Halo Layout
 *
 * @summary A short description.
 * @version 0.0.1 2025-9-24
 * @author Tankman3737
 * @url https://github.com/Tankman3737
 *
 * @requires
 * @module animate 1.1 (Included with AM)
 * @module config 1.1 https://github.com/oomek/attract-extra
 * @module fade (Included with AM)
 * @module file (Included with AM)
 * @module file-format 1.0 (Included with AM)
 * @module inertia 2.46 https://github.com/oomek/attract-extra
 * @module mask 0.3.1 https://github.com/Chadnaut/Attract-Mode-Modules
 * @module math 1.21 https://github.com/oomek/attract-extra
 * @module perspective 0.5.4 https://github.com/Chadnaut/Attract-Mode-Modules
 * @module wheel 1.28 https://github.com/oomek/attract-extra
 */



fe.layout.width=1920;
fe.layout.height=1080;

local flx = fe.layout.width;
local fly = fe.layout.height;
local flw = fe.layout.width;
local flh = fe.layout.height;
	
# Modules

fe.load_module("wheel");
fe.load_module("animate");
fe.load_module("fade");
fe.load_module("file");
fe.load_module("file-format");
fe.load_module("inertia")
fe.load_module("mask");
fe.load_module("perspective");






local music=fe.add_image("assets/halo_music.mp4",0,0,100,100)



local back_master1 = fe.add_surface(2100,900);
back_master1.x=20
back_master1.y=0



///////this is the blue frame background for the far part of the loop ////////////
local retro =
{
    function init()
    {
    slots <- 15
    speed <- 0500
    artwork_label <- "Hframe8" 
    video_flags <- Vid.ImagesOnly
    x <- 250
    y <- -150
    layout.y <- [ 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250  ]
  
    layout.x <- [  -850,-600,-450,-200,50,300,550,800,1050,1300,1550,1800,2050,2300,2550 ] 


    layout.width <- [ 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250,250  ]
    layout.height <- [ 120, 120, 120, 120, 120, 120, 120, 120, 120 , 120, 120, 120, 120, 120,120  ]
    layout.alpha <- [ 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255]
    //zorder <- 1
    anchor <- Wheel.Anchor.Centre
    }
}	
local wheelleft = fe.add_wheel( retro,back_master1)
wheelleft.zorder=1
//wheelleft.alpha=0
///////this is the blue frame background for the far part of the loop ////////////




///////////////////left side of far loop////////////
local retro =
{
    function init()
    {
    slots <- 21
    speed <- 0500
    artwork_label <- "wheel" 
    video_flags <- Vid.ImagesOnly
    x <- 220
    y <- -150
    layout.y <- [ 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250    ]
  
    layout.x <- [  -90,420,670,920,1170,1420,   1670, 1920,   2160, 920, 700, 480, 260, 40, -160,40,40,40,40,40,40 ] 


    layout.width <- [ 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200,200, 200, 200, 200, 200, 200,200  ]
    layout.height <- [ 80, 100, 100, 100, 100, 100, 100, 80, 90 , 100, 100, 100, 100, 100,100, 100, 100, 100, 100, 100,100 ]
    layout.alpha <- [ 0, 0, 0, 0, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0]
    //zorder <- 2
    anchor <- Wheel.Anchor.Centre
    }
}	
local wheelleft = fe.add_wheel( retro,back_master1)
wheelleft.zorder=5
///////////////////left side of far loop////////////


///////////////////right side of far loop////////////
local retro2 =
{
    function init()
    {
    slots <- 21
    speed <- 0500
    artwork_label <- "wheel" 
    video_flags <- Vid.ImagesOnly
    x <- -20
    y <- -150
    layout.y <- [ 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250, 250    ]
  
    layout.x <- [  -90,120,340,560,770,640,   990, 1360,   1690, 920, 700, 480,     -200, 50, 300,550,800,1050,1350,1550,40 ] 


    layout.width <- [ 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200,200, 200, 200, 200, 200, 200,200  ]
    layout.height <- [ 80, 80, 80, 80, 80, 80, 80, 80, 90 , 100, 100, 100, 100, 100,100, 100, 100, 100, 100, 80,80 ]
    layout.alpha <- [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255,255,255,0,0,0,0]
    zorder <- 2
    anchor <- Wheel.Anchor.Centre
    }
}	
local wheelright= fe.add_wheel( retro2,back_master1)
wheelright.zorder=5
//wheelfront.alpha=0
///////////////////right side of far loop////////////



/////////////Above code is hidden because it is used as a reference for the reflection modulde/////////////



local bg=fe.add_image("assets/stars2.jpg",0,0,1920,1180)



local jupiterB=fe.add_image("assets/jupiterB.png",1600,550,1248,1248)
jupiterB.anchor=Anchor.Centre

local jupiter=fe.add_image("assets/jupiter2.mp4",1600,550,1250,1250)
jupiter.blend_mode=BlendMode.Screen
jupiter.anchor=Anchor.Centre



/////////////curve for back loop/////////
local back_master = fe.add_surface(2000,600);
back_master.x=-40
back_master.y=200
back_master.zorder=1
back_master.rotation_origin_x=0.5
back_master.rotation_origin_y=0.5
back_master.rotation=26
back_master.shader = fe.add_shader(Shader.Fragment, "assets/curve.frag");
back_master.shader.set_param("strength", 1.0); // amount of curvature [0..1]
back_master.shader.set_param("dir", 0.); // alignment [0..1]
/////////////curve for back loop/////////



//Reflection shader uses top 3 wheels on back_master1 surface///////////////
local r = back_master.add_surface(2000, 900);
r.set_pos( 0, 0 )
r.y = 375;
r.shader = ::fe.add_shader(Shader.Fragment, "assets/reflection.frag");
r.shader.set_texture_param("source", back_master1); // <-- pass in the artwork surface
r.shader.set_param("blur", 0.0, 0.0); // from & to blur strength
r.alpha=255
r.zorder=25
//Reflection shader uses top 3 wheels on back_master1 surface///////////////




//////////////front part of loop/////////////
local front_master=fe.add_surface(2100,520)
front_master.x=990
front_master.y=450
front_master.rotation_origin_x=0.5
front_master.rotation_origin_y=0.5
front_master.rotation=27
front_master.anchor=Anchor.Centre


front_master.shader = ::fe.add_shader(Shader.Fragment, "assets/curve4.frag");
front_master.shader.set_param("distort", 0.4);
front_master.shader.set_param("curve1", -0.7);
front_master.shader.set_param("curve2", -0.7);
front_master.zorder=15
front_master.alpha=255
//////////////front part of loop/////////////


local sun=fe.add_image("assets/SS3.png",880,650,500,500)

sun.anchor=Anchor.Centre
sun.zorder=6
local sun=fe.add_image("assets/sun5.mp4",880,650,500,500)////maybe try sun5a.mp4 if it's a smaller file size////
sun.blend_mode=BlendMode.Add
sun.anchor=Anchor.Centre
sun.zorder=6
//sun.alpha=0







/////////////////front loop BG//////////////
local retroF =
{
    function init()
    {
    slots <- 9
    speed <- 0500
    artwork_label <- "H13" //////////change to Hframe10 if you dont won't animated frame////////
    //video_flags <- Vid.ImagesOnly
    x <- 420
    y <- 50
    layout.y <- [ 250, 250, 250, 250, 250, 250, 250, 250, 250 ]
    layout.x <- [ -800, -450, -100, 250, 600, 950, 1300, 1650, 2000 ] 
    layout.width <- [ 350, 350, 350, 350, 350, 350, 350, 350, 350 ]
    layout.height <- [ 300, 300, 300, 300, 300, 300, 300, 300, 300 ]
    layout.alpha <- [ 255, 255, 255, 255, 255, 255, 255, 255, 255]
    zorder <- 2
    anchor <- Wheel.Anchor.Centre
    }
}	
local wheelframe = fe.add_wheel( retroF,front_master)
/////////////////front loop BG//////////////


/////////////////front loop logos//////////////
local retro =
{
    function init()
    {
    slots <- 9
    speed <- 0500
    artwork_label <- "wheel" 
    video_flags <- Vid.ImagesOnly
    x <- 420
    y <- 50
    layout.y <- [ 250, 250, 250, 250, 250, 250, 250, 250, 250 ]
    layout.x <- [ -800, -450, -100, 250, 600, 950, 1300, 1650, 2100 ] 
    layout.width <- [ 300, 300, 300, 300, 300, 300, 300, 300, 300 ]
    layout.height <- [ 300, 300, 300, 300, 300, 300, 300, 300, 200 ]
    layout.alpha <- [ 255, 255, 255, 255, 255, 255, 255, 255, 255]
    zorder <- 2
    anchor <- Wheel.Anchor.Centre
    }
}	
local wheelFront = fe.add_wheel( retro,front_master)
 wheelFront .preserve_aspect_ratio=true

/////////////////front loop logos//////////////





local ship=fe.add_image("assets/ship.png",-120,820,300,150)
ship.anchor=Anchor.Centre
ship.zorder=5
//ship.alpha=128

local MCheif=fe.add_image("assets/mastercheif.png",1650,400,375,750)
MCheif.anchor=Anchor.Centre
MCheif.zorder=5


///mask and surface for Helmet and visor//////////////////////
local surfmask = fe.add_surface(700, 700);
surfmask.visible = false
surfmask.repeat = true;
surfmask.zorder=25

local maskr = surfmask.add_image("assets/helmet_mask.png", 0, 0, 700, 700);

local helmetSurf = Mask(fe.add_surface(700,700));
helmetSurf.x=0
helmetSurf.y=370
helmetSurf.mask = surfmask ;
helmetSurf.zorder=25


local snapsurf=helmetSurf.add_surface(460,500)
snapsurf.x=115
snapsurf.y=210
//snapsurf.anchor=Anchor.Centre
snapsurf.shader = ::fe.add_shader(Shader.Fragment, "assets/curve4.frag");
snapsurf.shader.set_param("distort", 0.4);
snapsurf.shader.set_param("curve1", 0.5);
snapsurf.shader.set_param("curve2", 0.2);
snapsurf.zorder=24
//snapsurf.alpha=128
local snap=snapsurf.add_artwork("snap",0,0,460,250)
snap.video_flags = Vid.NoAudio

local HelmetV=helmetSurf.add_image("assets/helmet_visor.png",0,0,700,700)
HelmetV.zorder=26
local Helmet=helmetSurf.add_image("assets/helmet_shadow.png",0,0,700,700)
Helmet.zorder=26
local Helmet=helmetSurf.add_image("assets/helmet2.png",0,0,700,700)
Helmet.zorder=26

///mask and surface for Helmet and visor//////////////////////



///////////////////info surface and stuff/////////
local surfacepopupB=fe.add_surface(1920,1080)     
surfacepopupB.x=0
surfacepopupB.y=0               
surfacepopupB.zorder=30
surfacepopupB.visible = false;

local framepop=fe.add_image("assets/popup2.png",0,0,1920,1080)
framepop.zorder=29
framepop.visible = false;
local framepop2=fe.add_image("assets/popup.mp4",0,0,1920,1080)
framepop2.blend_mode=BlendMode.Screen
framepop2.zorder=29
framepop2.visible = false;



///////spinning disc///////////
local discpop=surfacepopupB.add_artwork("disc",960,570,500,500)
discpop.anchor=Anchor.Centre
discpop.rotation_origin_x=0.5
discpop.rotation_origin_y=0.5

local rotation_speed = 360 / 360; // Degrees per tick, assuming 60 ticks per second

// Register the "on_tick" function to be called on every tick
fe.add_ticks_callback("on_tick");

function on_tick(ttime){
    // Increment the rotation angle
    discpop.rotation = (discpop.rotation + rotation_speed) % 360;
}

///////spinning disc///////////x



local box=surfacepopupB.add_artwork("boxes",400,570,450,660)
box.anchor=Anchor.Centre
box.preserve_aspect_ratio=true
local logo=surfacepopupB.add_artwork("wheel",960,200,300,300)
logo.anchor=Anchor.Centre
logo.preserve_aspect_ratio=true

local Text = surfacepopupB.add_text( "[Overview]", 1350, 150, 400, 1000);
Text.charsize = 20;
Text.word_wrap = true;
Text.align = Align.TopCentre;


local Textexit = surfacepopupB.add_text( "BACK", 910, 880, 100, 100);
Textexit .charsize = 20;
local arrow=surfacepopupB.add_image("assets/button_B.png",960,980,60,60)
arrow.anchor=Anchor.Centre
///////////////////info surface and stuff/////////



local Textinfo = fe.add_text( "INFO", 910, 940, 100, 100);
Textinfo.charsize = 20;
local arrowU=fe.add_image("assets/button_X.png",960,1040,60,60)
arrowU.anchor=Anchor.Centre

//MARK: Inertias etc
HelmetV= Inertia(HelmetV, 1000,"y" );
snap= Inertia( snap,100,"y","alpha");
discpop=Inertia(discpop 30000,"x" );
ship= Inertia(ship, 3000"x","y","height","width"  );

     function Bcog( ttype, var, ttime )
     {
         
		  if( ttype==Transition.StartLayout)
         {
        ship.tween_all= Tween.HalfSine ;
        ship.x=1060
        ship.to_x=-180
        ship.y=-300
        ship.to_y=860
        ship.width=50
        ship.height=25
        ship.to_width=300
        ship.to_height=150
        //music.video_flags=Vid.Default
      
        HelmetV.delay_y=335000
        HelmetV.y=0
        HelmetV.to_y=-250
        snap.video_flags = Vid.NoAudio
        snap.loop_alpha = false;
        snap.alpha = 0;
        snap.to_alpha = 255;
        snap.delay_y=335000
        snap.y=0
        snap.to_y=1
           
         }
		  if( ttype==Transition.EndNavigation)
         {
            
        ship.tween_all= Tween.HalfSine ;
        ship.x=1060
        ship.to_x=-180
        ship.y=-300
        ship.to_y=860
        ship.width=50
        ship.height=25
        ship.to_width=300
        ship.to_height=150
        HelmetV.delay_y=1500
        HelmetV.y=0
        HelmetV.to_y=-250
        music.video_flags=Vid.NoAudio
        snap.video_flags = Vid.NoAudio
        snap.loop_alpha = false;
        snap.delay_alpha=1500
        snap.alpha = 0;
        snap.to_alpha = 255;
        snap.delay_y=500
        snap.y=0
        snap.to_y=0
        discpop.delay_x=500
        discpop.x=460
        discpop.to_x=960

         }
		  
        
    }

fe.add_transition_callback( "Bcog" );


fe.add_ticks_callback( "ticks_img" )
function ticks_img( tick_time )
{

    if (snap.running == false)
    {
        snap.video_flags = Vid.Default

    }
}


fe.add_signal_handler("interationControls");
    function interationControls(sig)
    {
        switch (sig)
        {


            case "custom1": ///////i have it set to X//////////////
            framepop.visible = true;
            framepop2.visible = true;
            Textinfo.alpha=0
            arrowU.alpha=0
            surfacepopupB.visible = true;
            discpop.tween_all= Tween.Linear
            discpop.time_x=1000
            discpop.x=460
            discpop.to_x=960
            discpop.rotation=0   
            discpop.to_rotation=3600
            return true
        case "custom2": ///////i have it set to B//////////////

          {
             framepop.visible = false;
            framepop2.visible = false;
            surfacepopupB.visible = false;
            Textinfo.alpha=255
            arrowU.alpha=255
            return true;  
                        
          }
                  
        }
                  
        }














