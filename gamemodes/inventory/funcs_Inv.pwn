#include <YSI_Coding\y_hooks>


#include "inventory/items.pwn"
#include "inventory/textdraw_Inv.pwn"


enum inventory@itemsConnect
{
	inventory_id,
	inventory_mkid,

	inventory_model[MAX_ITEMS_INV],
	inventory_model_cant[MAX_ITEMS_INV],

	Float:inventory_max_weight,

	inventory_sel_model,
	inventory_act_page
};

new inventoryDate[MAX_PLAYERS][inventory@itemsConnect];

hook OnPlayerConnect(id)
{
	inventoryDate[id][inventory_model][3] = 1;
	inventoryDate[id][inventory_model][17] = 1;
	inventoryDate[id][inventory_model][25] = 1;
	playerDate[id][player_skin] =  270;
	playerDate[id][player_hungry] = 80.0;
	playerDate[id][player_thirst] = 10.0;
	playerDate[id][player_blister] = 97.0;
	playerDate[id][player_tired] = 39.0;

}
hook OnPlayerDisconnect(playerid, reason)
{
	clearAllBars(playerid);
}
hook OnPlayerKeyStateChange(id, newkeys, oldkeys)
{
	if(newkeys == KEY_YES)
	{
		showInventory(id);
	}
}
hook OnPlayerClickTextDraw(id, Text:clickedid)
{
	if(clickedid == inventory_GTD[4])
	{
		if(inventoryDate[id][inventory_act_page] >= 2)
		{
			inventoryDate[id][inventory_act_page]--;
			changePage(id, inventoryDate[id][inventory_act_page]);
		}
	}
	else if(clickedid == inventory_GTD[5])
	{
		if(inventoryDate[id][inventory_act_page] <= MAX_PAGES_INV-1)
		{
			inventoryDate[id][inventory_act_page]++;
			changePage(id, inventoryDate[id][inventory_act_page]);
		}
	}
	else if(clickedid == inventory_GTD[14])
	{
		changeHand(id);
		reloadInventory(id);
	}
	else if(clickedid == inventory_GTD[16])
	{
		new selmodel = calculateSelModel(id);
		if(inventoryDate[id][inventory_model][ITEM_HAND_DER_INDEX] != 0)
		{
			if(inventoryDate[id][inventory_model][selmodel] == 0)
			{
				addItemInventory(id, selmodel, inventoryDate[id][inventory_model][selmodel], inventoryDate[id][inventory_model_cant][selmodel]);
				delateItemInventory(id, ITEM_HAND_DER_INDEX);
				reloadInventory(id);

			}else ShowTDN_IC(id, "Esta ranura de tu inventario esta ocupada");
		} else ShowTDN_IC(id, "No tienes ningun item en tu mano derecha");
	}
	else if(clickedid == inventory_GTD[18])
	{
		new selmodel = calculateSelModel(id);
		if(inventoryDate[id][inventory_model][selmodel] != 0)
		{
			if(inventoryDate[id][inventory_model][ITEM_HAND_DER_INDEX] == 0)
			{
				addItemInventory(id, ITEM_HAND_DER_INDEX, inventoryDate[id][inventory_model][selmodel], inventoryDate[id][inventory_model_cant][selmodel]);
				delateItemInventory(id, selmodel);
				reloadInventory(id);

			}else ShowTDN_IC(id, "Ya tienes un item en tu mano derecha");
		}else ShowTDN_IC(id, "Esta ranura de tu inventario esta vacia");

	}
}
hook OP_ClickPlayerTextDraw(id, PlayerText:playertextid)
{
	for(new i=2;i<10;i++)
	{
		if(playertextid == inventory_PTD[id][i])
		{
			if(inventoryDate[id][inventory_sel_model] == 0) inventoryDate[id][inventory_sel_model] = 2;
			new old = inventoryDate[id][inventory_sel_model];
			inventoryDate[id][inventory_sel_model] = i;
			changeColorBoxSelection(id, inventoryDate[id][inventory_sel_model], old);
			showOnClickBox(id);
			break;
		}
	}
}
showInventory(id)
{
	if(id != INVALID_PLAYER_ID)
	{
		if(inventoryDate[id][inventory_max_weight] == 0.0) inventoryDate[id][inventory_max_weight] = 10.0; 

		new string[60];
		PlayerTextDrawSetString(id, inventory_PTD[id][1], getName(id));
		format(string, sizeof(string), "Peso_total:_%.1f/%.1f_KG", calculateTotalWeitght(id), inventoryDate[id][inventory_max_weight]);
		PlayerTextDrawSetString(id, inventory_PTD[id][10], string);
		format(string, sizeof(string), "1/%i", MAX_PAGES_INV);
		PlayerTextDrawSetString(id, inventory_PTD[id][11], string);


		format(string, sizeof(string), "Hambre:_%.1f %", playerDate[id][player_hungry]);
		PlayerTextDrawSetString(id, inventory_PTD[id][12], string);
		format(string, sizeof(string), "Sed:_%.1f %", playerDate[id][player_thirst]);
		PlayerTextDrawSetString(id, inventory_PTD[id][13], string);
		format(string, sizeof(string), "Vejiga:_%.1f %", playerDate[id][player_blister]);
		PlayerTextDrawSetString(id, inventory_PTD[id][14], string);
		format(string, sizeof(string), "Cansancio:_%.1f %", playerDate[id][player_tired]);
		PlayerTextDrawSetString(id, inventory_PTD[id][15], string);


		inventoryDate[id][inventory_act_page] = 1;

		for(new i=2;i<10;i++)
		{
			 PlayerTextDrawSetPreviewModel(id, inventory_PTD[id][i], itemsInventory[inventoryDate[id][inventory_model][i-2]][item_model]);
		}
		PlayerTextDrawSetPreviewModel(id, inventory_PTD[id][0], playerDate[id][player_skin]); // SKIN
		PlayerTextDrawSetPreviewModel(id, inventory_PTD[id][17], itemsInventory[inventoryDate[id][inventory_model][ITEM_HAND_IZQ_INDEX]][item_model]);
		PlayerTextDrawSetPreviewModel(id, inventory_PTD[id][16], itemsInventory[inventoryDate[id][inventory_model][ITEM_HAND_DER_INDEX]][item_model]);

		for(new control;control<19;control++)
		{
			if(control < 15)
			{
				TextDrawShowForPlayer(id, inventory_GTD[control]);
			}
			if(control < 18)
			{
				PlayerTextDrawShow(id, inventory_PTD[id][control]);
			}
		}

		mostrarBarra(id, bar_hungry);
		mostrarBarra(id, bar_thirst);
		mostrarBarra(id, bar_blister);
		mostrarBarra(id, bar_tired);
		actualizarBarra(id, bar_hungry, playerDate[id][player_hungry]);
		actualizarBarra(id, bar_thirst, playerDate[id][player_thirst]);
		actualizarBarra(id, bar_blister, playerDate[id][player_blister]);
		actualizarBarra(id, bar_tired, playerDate[id][player_tired]);

		SelectTextDraw(id, 0x87868286);	
	}
}

hideInventory(id)
{
	esconderBarra(id, bar_hungry);
	esconderBarra(id, bar_thirst);
	esconderBarra(id, bar_blister);
	esconderBarra(id, bar_tired);

	for(new control;control<19;control++)
	{
		TextDrawHideForPlayer(id, inventory_GTD[control]);
		PlayerTextDrawHide(id, inventory_PTD[id][control]);
	}
}
reloadInventory(id)
{
	hideInventory(id);
	showInventory(id);
}
addItemInventory(id, index, itemtype, itemcant)
{
	if(id != INVALID_PLAYER_ID)
	{
		if(index >= 0 && index <= MAX_ITEMS_INV-1)
		{
			new Float:totalweight = calculateTotalWeitght(id) + itemsInventory[itemtype][item_weight];
			printf("calcul, %.1f itemtypewithg %.1f, total %.1f, totalindex %i", calculateTotalWeitght(id), itemsInventory[itemtype][item_weight], totalweight, index);
			if(totalweight <= inventoryDate[id][inventory_max_weight])
			{
				inventoryDate[id][inventory_model][index] = itemtype;
				inventoryDate[id][inventory_model_cant][index] = itemcant;
				return true;
			}

			else if(index == ITEM_HAND_DER_INDEX || index == ITEM_HAND_IZQ_INDEX)
			{
				inventoryDate[id][inventory_model][index] = itemtype;
				inventoryDate[id][inventory_model_cant][index] = itemcant;
			}
		}
	}
	return false;
}
delateItemInventory(id, slot)
{
	if(id != INVALID_PLAYER_ID)
	{
		inventoryDate[id][inventory_model][slot] = 0;
		inventoryDate[id][inventory_model_cant][slot] = 0;
	}
}

calculateTotalWeitght(id)
{
	new Float:totalweight;
	for(new i;i < MAX_ITEMS_INV; i++)
	{
		if(i >= 0)
		{
			if(i != ITEM_HAND_DER_INDEX && i != ITEM_HAND_IZQ_INDEX)
			totalweight += itemsInventory[inventoryDate[id][inventory_model][i]][item_weight];
		}
	}
	return totalweight;
}
calculateSelModel(id)
{
	new selmodel;
	if(inventoryDate[id][inventory_act_page] > 1)
	{
	  selmodel = (inventoryDate[id][inventory_sel_model] - 2) + (8*inventoryDate[id][inventory_act_page]) - 8 + 1;
	} else selmodel = inventoryDate[id][inventory_sel_model] - 2;
	return selmodel;
}
inventoryGetFreeSlot(id)
{
	for(new i;i < MAX_ITEMS_INV; i++) if(inventoryDate[id][inventory_model][i] <= 0) return i;

	return -1;
}



showOnClickBox(id)
{
	for(new i=15;i<19;i++) TextDrawShowForPlayer(id, inventory_GTD[i]);
	new string[MAX_ITEM_NAME + 15]; new selmodel;
	selmodel = calculateSelModel(id);
	format(string, sizeof(string), "%s   Peso:%.0fKG", itemsInventory[inventoryDate[id][inventory_model][selmodel]][item_name], itemsInventory[inventoryDate[id][inventory_model][selmodel]][item_weight]);
	PlayerTextDrawSetString(id, inventory_PTD[id][18], string);
	PlayerTextDrawShow(id, inventory_PTD[id][18]);
}
changeColorBoxSelection(id, boxid, oldboxid)
{
	if(id != INVALID_PLAYER_ID)
	{
		PlayerTextDrawBackgroundColor(id, inventory_PTD[id][boxid], 1451190472);
		PlayerTextDrawBackgroundColor(id, inventory_PTD[id][oldboxid], 505290470);
		PlayerTextDrawShow(id, inventory_PTD[id][boxid]);
		PlayerTextDrawShow(id, inventory_PTD[id][oldboxid]);
	}
}

changeHand(id)
{
	if(id != INVALID_PLAYER_ID)
	{
		new control_one = inventoryDate[id][inventory_model][ITEM_HAND_IZQ_INDEX];
		new control_one_cant = inventoryDate[id][inventory_model_cant][ITEM_HAND_IZQ_INDEX];

		inventoryDate[id][inventory_model][ITEM_HAND_IZQ_INDEX] = inventoryDate[id][inventory_model][ITEM_HAND_DER_INDEX];
		inventoryDate[id][inventory_model_cant][ITEM_HAND_IZQ_INDEX] = inventoryDate[id][inventory_model_cant][ITEM_HAND_DER_INDEX];

		inventoryDate[id][inventory_model][ITEM_HAND_DER_INDEX] = control_one;
		inventoryDate[id][inventory_model_cant][ITEM_HAND_DER_INDEX] = control_one_cant;
		return true;
	}
	return false;
}
/*
Explicacion: 8 es la cantidad de cuadros, la cual multiplico y resto, -2 es lo que se adelanta en el numero de textdraws, easy count
*/
changePage(id, page)
{
	new count;
	new totalindex;
	for(new i=2;i<10;i++)
	{		
		if(page > 1)
		{
			count ++;
			totalindex = count + (8 * page) - 8;
		}else totalindex = i - 2;

		PlayerTextDrawSetPreviewModel(id, inventory_PTD[id][i], itemsInventory[  inventoryDate[id][inventory_model] [totalindex]  ] [item_model]);
		PlayerTextDrawShow(id, inventory_PTD[id][i]);

		if(page == MAX_PAGES_INV)
		{
			if(totalindex >= MAX_ITEMS_INV-2)
			{
				for(new d=i;d<10;d++)PlayerTextDrawHide(id,  inventory_PTD[id][d]);
				break;
			}
		}

	}

	new string[10];
	format(string, sizeof(string), "%i/%i", page, MAX_PAGES_INV);
	PlayerTextDrawSetString(id, inventory_PTD[id][11], string);
}

