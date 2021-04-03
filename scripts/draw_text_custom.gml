///draw_text_center(x,y,text,font,color,h_center,v_center,shadow,scalex,scaley,angle)

draw_set_font(argument3)
draw_set_halign(argument5)
draw_set_valign(argument6)


if argument7 {
    draw_set_color(c_black)
    draw_text_transformed(argument0-2*argument8,argument1-2*argument9,argument2,argument8,argument9,argument10)
    }
draw_set_color(argument4)
draw_text_transformed(argument0,argument1,argument2,argument8,argument9,argument10)

//Reset alignments
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_set_font(fnt_default)
