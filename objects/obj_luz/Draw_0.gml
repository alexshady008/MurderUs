/// @description Dibuja la luz
// Puede escribir su código en este editor
#region Propiedades de la camara
	var cam_x = camera_get_view_x(view_camera[0]) 
	var cam_y = camera_get_view_y(view_camera[0]) 
	var cam_ancho = camera_get_view_width(view_camera[0])
	var cam_alto = camera_get_view_height(view_camera[0])
#endregion


if( !surface_exists(surf) ){
    //surf = surface_create(room_width,room_height);
	surf = surface_create(global.anchoPantalla,global.altoPantalla);
}


if (instance_exists(obj_personaje))
{
	var lx = obj_personaje.x;      
	var ly = obj_personaje.y;
} else {
	var lx = 0      
	var ly = 0
}
//var rad = 96            // the radius of the light
var rad = 100  //600          // the radius of the light
//var rad = 1000            // the radius of the light
var tile_size = 64;     // size of a tile
var tilemap = layer_tilemap_get_id("Techo_tile");


var startx = floor((lx-rad)/tile_size);
var endx = floor((lx+rad)/tile_size);
var starty = floor((ly-rad)/tile_size);
var endy = floor((ly+rad)/tile_size);

draw_set_color(c_yellow);
//draw_rectangle(startx*tile_size,starty*tile_size, endx*tile_size,endy*tile_size,true); 


surface_set_target(surf);
draw_clear_alpha(0,0);


vertex_begin(VBuffer, VertexFormat);
for(var yy=starty;yy<=endy;yy++)
{
    for(var xx=startx;xx<=endx;xx++)
    {
        var tile = tilemap_get(tilemap,xx,yy);
        if( tile!=0 )
        {
            // get corners of the 
            var px1 = xx*tile_size;     // top left
            var py1 = yy*tile_size;
            var px2 = px1+tile_size;    // bottom right
            var py2 = py1+tile_size;

			
			if( !SignTest( px1,py1, px2,py1, lx,ly) ){
		        ProjectShadow(VBuffer,  px1,py1, px2,py1, lx,ly );
		    }
		    if( !SignTest( px2,py1, px2,py2, lx,ly) ){
		        ProjectShadow(VBuffer,  px2,py1, px2,py2, lx,ly );
		    }
		    if( !SignTest( px2,py2, px1,py2, lx,ly) ){
		        ProjectShadow(VBuffer,  px2,py2, px1,py2, lx,ly );
		    }
		    if( !SignTest( px1,py2, px1,py1, lx,ly) ){
		        ProjectShadow(VBuffer,  px1,py2, px1,py1, lx,ly );                      
		    }
	
        }
    }
}
vertex_end(VBuffer);    
vertex_submit(VBuffer,pr_trianglelist,-1);


surface_reset_target();


shader_set(shader0);
shader_set_uniform_f( LightPosRadius, lx,ly,rad,0.0 );
draw_surface(surf,cam_x,cam_y);
//draw_surface_ext(surf,cam_x,cam_y,1,1,0,image_blend,1);
shader_reset();

