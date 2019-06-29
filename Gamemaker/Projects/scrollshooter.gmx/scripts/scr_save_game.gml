///scr_save_game()
for (i=0;i<array_length_1d(global.space_station);i++) {
    if room==global.space_station[i] {found=true} else {found=false;}
}
if !instance_exists(oj_maybay)||(spwn6x6stirge.spawnerstate='shopping'|| 
found)
  {exit;}

//create information to save
var save_data=ds_map_create();
var previous_room=room;

with(spwn6x6stirge){
if spawnerstate='wait' {previous_room=room_next(room);
save_data[? "spawnerstate"]='shopping';
}
else {save_data[? "spawnerstate"]='transition'}
if spawnerstate='spawn'||spawnerstate='monitor' {save_data[? "wave"]=wave-1}
else {save_data[? "wave"]=wave;}
save_data[? "room"]=previous_room;
}
with(cont_main){
save_data[? "hp"]=global.planehp
save_data[? "maxhp"]=global.maxplanehp;
save_data[? "cash"]=global.cash;
save_data[? "lives"]=lives;
save_data[? "score"]=score;
save_data[? "damage"]=global.damage;
save_data[? "multiplier"]=global.multiplier;
}
var save_string=json_encode(save_data);
ds_map_destroy(save_data);
//save_string=base64_encode(save_string);
var file=file_text_open_write(working_directory +"save.txt");
file_text_write_string(file,save_string);
file_text_close(file);
show_message("Saved");

