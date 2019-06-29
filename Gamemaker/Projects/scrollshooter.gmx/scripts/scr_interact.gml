//scr_interact("text",textspeed);
//variable
padding=20;
    maxlength=view_wview[0];
    spd =argument1;
    text=argument0;
    font = font_interact;
    text_length=string_length(text);
    font_size=font_get_size(font);
    draw_set_font(font);
    text_width=string_width_ext(text,font_size+(font_size/2),maxlength);
    text_height=string_height_ext(text,font_size+(font_size/2),maxlength);
    boxwidth=text_width+(padding*2);
    boxheight=text_height+(padding*2);
txt = instance_create(view_xview[0]+(view_wview[0]/2)-(boxwidth/2),view_yview[0]+(view_hview[0]/2)-(boxheight/2),oj_interact);

with(txt){
    padding=20;
    maxlength=view_wview[0];
    spd =argument1;
    text=argument0;
    font = font_interact;
    text_length=string_length(text);
    font_size=font_get_size(font);
    draw_set_font(font);
    text_width=string_width_ext(text,font_size+(font_size/2),maxlength);
    text_height=string_height_ext(text,font_size+(font_size/2),maxlength);
    boxwidth=text_width+(padding*2);
    boxheight=text_height+(padding*2);
    
}

