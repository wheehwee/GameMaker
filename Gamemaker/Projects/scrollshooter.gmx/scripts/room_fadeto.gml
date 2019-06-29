///room_fadeto(numb,fadespeed,fadecolour)

//neu 0 co fade thi thuc hien tao fade
if !instance_exists(oj_screen_fade){
    oFade=instance_create(view_xview[0],view_yview[0],oj_screen_fade);
} else {exit;}
with (oFade) {
    //cac bien so
    a=0;
    fadetype=1;
    //di den phong nao
    roomgoto=argument0;
    //toc do fade
    if argument1!=-1{
        fadespeed=argument1;
    }
    //mau cua nen fade
    if argument2!=-1{
        fadecolour=argument2;
    }
}

