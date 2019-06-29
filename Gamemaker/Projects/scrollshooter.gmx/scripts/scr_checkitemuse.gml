///scr_checkitemuse(itemnumber) 
itemnumber=argument0;
switch (itemnumber){
    case 0:if global.planehp<=global.maxplanehp-15{global.planehp +=15;}
    else {global.planehp+=global.maxplanehp-global.planehp}
    break;
    case 1:if global.planehp<=global.maxplanehp-45{global.planehp +=45;}
    else {global.planehp+=global.maxplanehp-global.planehp}
    break;
    case 2:if global.planehp<=global.maxplanehp-90{global.planehp +=90;}
    else {global.planehp+=global.maxplanehp-global.planehp}
    break;
    case 3:global.damage +=2 ;break;
    case 4:global.multiplier +=0.1;
    break;
    case 5:global.maxplanehp +=0.1*global.maxplanehp;
    global.maxplanehp=round(global.maxplanehp)
    case 6:lives +=1;break;
    case 7:randomitem=irandom(6);
    varfound=false;
    
        for (var iyy=0;iyy<6&&!varfound;iyy++){
            for (var ixx=0;ixx<4&&!varfound;ixx++){
    if oj_inventory.invt[ixx,iyy]=-1 || oj_inventory.invt[ixx,iyy]=randomitem {
        oj_inventory.invt[ixx,iyy]=randomitem;
        oj_inventory.invt_num[ixx,iyy] ++;
        varfound=true;
        }
    }}   break;
    case 8:randomitem=irandom_range(2,6);
    varfound=false;
    
        for (var iyy=0;iyy<6&&!varfound;iyy++){
        for (var ixx=0;ixx<4&&!varfound;ixx++){
    if oj_inventory.invt[ixx,iyy]=-1 || oj_inventory.invt[ixx,iyy]=randomitem {
        oj_inventory.invt[ixx,iyy]=randomitem;
        oj_inventory.invt_num[ixx,iyy] ++;
        varfound=true;
        }
    }}   break;
    case 13:scr_save_game(); break;
}
