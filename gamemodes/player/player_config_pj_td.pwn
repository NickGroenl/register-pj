#include <YSI_Coding\y_hooks>
new Text:config_GTD[2];
new PlayerText:config_PTD[MAX_PLAYERS][10];
new Text:selectSkin_GTD[2];











// ============================ CALLBACKS ==========================
hook OnGameModeInit()
{
	config_GTD[0] = TextDrawCreate(328.333618, 48.548110, "Configura_tu_personaje");
	TextDrawLetterSize(config_GTD[0], 0.206666, 0.911407);
	TextDrawAlignment(config_GTD[0], 1);
	TextDrawColor(config_GTD[0], -1061109505);
	TextDrawSetShadow(config_GTD[0], 0);
	TextDrawSetOutline(config_GTD[0], 0);
	TextDrawBackgroundColor(config_GTD[0], 255);
	TextDrawFont(config_GTD[0], 1);
	TextDrawSetProportional(config_GTD[0], 1);
	TextDrawSetShadow(config_GTD[0], 0);

	config_GTD[1] = TextDrawCreate(528.666564, 52.503711, ">");
	TextDrawLetterSize(config_GTD[1], 0.260999, 1.678814);
	TextDrawTextSize(config_GTD[1], 10.000000, 9.000000);
	TextDrawAlignment(config_GTD[1], 2);
	TextDrawColor(config_GTD[1], -1);
	TextDrawUseBox(config_GTD[1], 1);
	TextDrawBoxColor(config_GTD[1], 505290495);
	TextDrawSetShadow(config_GTD[1], 0);
	TextDrawSetOutline(config_GTD[1], 0);
	TextDrawBackgroundColor(config_GTD[1], 255);
	TextDrawFont(config_GTD[1], 1);
	TextDrawSetProportional(config_GTD[1], 1);
	TextDrawSetShadow(config_GTD[1], 0);
	TextDrawSetSelectable(config_GTD[1], true);


	selectSkin_GTD[0] = TextDrawCreate(253.999984, 229.822235, "<");
	TextDrawLetterSize(selectSkin_GTD[0], 0.400000, 1.600000);
	TextDrawTextSize(selectSkin_GTD[0], 266.000000, 10.000000);
	TextDrawAlignment(selectSkin_GTD[0], 1);
	TextDrawColor(selectSkin_GTD[0], -2139062017);
	TextDrawUseBox(selectSkin_GTD[0], 1);
	TextDrawBoxColor(selectSkin_GTD[0], 505290495);
	TextDrawSetShadow(selectSkin_GTD[0], 0);
	TextDrawSetOutline(selectSkin_GTD[0], 0);
	TextDrawBackgroundColor(selectSkin_GTD[0], 255);
	TextDrawFont(selectSkin_GTD[0], 1);
	TextDrawSetProportional(selectSkin_GTD[0], 1);
	TextDrawSetShadow(selectSkin_GTD[0], 0);
	TextDrawSetSelectable(selectSkin_GTD[0], true);

	selectSkin_GTD[1] = TextDrawCreate(368.333251, 229.407424, ">");
	TextDrawLetterSize(selectSkin_GTD[1], 0.400000, 1.600000);
	TextDrawTextSize(selectSkin_GTD[1], 380.000000, 10.000000);
	TextDrawAlignment(selectSkin_GTD[1], 1);
	TextDrawColor(selectSkin_GTD[1], -2139062017);
	TextDrawUseBox(selectSkin_GTD[1], 1);
	TextDrawBoxColor(selectSkin_GTD[1], 505290495);
	TextDrawSetShadow(selectSkin_GTD[1], 0);
	TextDrawSetOutline(selectSkin_GTD[1], 0);
	TextDrawBackgroundColor(selectSkin_GTD[1], 255);
	TextDrawFont(selectSkin_GTD[1], 1);
	TextDrawSetProportional(selectSkin_GTD[1], 1);
	TextDrawSetShadow(selectSkin_GTD[1], 0);
	TextDrawSetSelectable(selectSkin_GTD[1], true);
}
hook OnPlayerConnect(playerid)
{
	config_PTD[playerid][0] = CreatePlayerTextDraw(playerid, 251.000030, -2.059265, "box");
	PlayerTextDrawLetterSize(playerid, config_PTD[playerid][0], 0.000000, 8.566679);
	PlayerTextDrawTextSize(playerid, config_PTD[playerid][0], 570.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, config_PTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, config_PTD[playerid][0], -1);
	PlayerTextDrawUseBox(playerid, config_PTD[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, config_PTD[playerid][0], 673720530);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, config_PTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, config_PTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, config_PTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, config_PTD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][0], 0);

	config_PTD[playerid][1] = CreatePlayerTextDraw(playerid, 408.666748, 75.926010, "Ocultar");
	PlayerTextDrawLetterSize(playerid, config_PTD[playerid][1], 0.219333, 1.069036);
	PlayerTextDrawTextSize(playerid, config_PTD[playerid][1], 10.000000, 363.000000);
	PlayerTextDrawAlignment(playerid, config_PTD[playerid][1], 2);
	PlayerTextDrawColor(playerid, config_PTD[playerid][1], -1);
	PlayerTextDrawUseBox(playerid, config_PTD[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, config_PTD[playerid][1], 505290495);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, config_PTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, config_PTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, config_PTD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, config_PTD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][1], 0);
	PlayerTextDrawSetSelectable(playerid, config_PTD[playerid][1], true);

	config_PTD[playerid][2] = CreatePlayerTextDraw(playerid, 356.000213, 12.791126, "Edad");// LISTO
	PlayerTextDrawLetterSize(playerid, config_PTD[playerid][2], 0.280666, 1.413333);
	PlayerTextDrawTextSize(playerid, config_PTD[playerid][2], 10.000000, 53.000000);
	PlayerTextDrawAlignment(playerid, config_PTD[playerid][2], 2);
	PlayerTextDrawColor(playerid, config_PTD[playerid][2], -2139062017);
	PlayerTextDrawUseBox(playerid, config_PTD[playerid][2], 1);
	PlayerTextDrawBoxColor(playerid, config_PTD[playerid][2], 336860415);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, config_PTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, config_PTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, config_PTD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, config_PTD[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][2], 0);
	PlayerTextDrawSetSelectable(playerid, config_PTD[playerid][2], true);

	config_PTD[playerid][3] = CreatePlayerTextDraw(playerid, 356.000213, 29.798540, "Nacionalidad"); // LISTO
	PlayerTextDrawLetterSize(playerid, config_PTD[playerid][3], 0.254666, 1.483851);
	PlayerTextDrawTextSize(playerid, config_PTD[playerid][3], 10.000000, 53.000000);
	PlayerTextDrawAlignment(playerid, config_PTD[playerid][3], 2);
	PlayerTextDrawColor(playerid, config_PTD[playerid][3], -2139062017);
	PlayerTextDrawUseBox(playerid, config_PTD[playerid][3], 1);
	PlayerTextDrawBoxColor(playerid, config_PTD[playerid][3], 336860415);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, config_PTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, config_PTD[playerid][3], 255);
	PlayerTextDrawFont(playerid, config_PTD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, config_PTD[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][3], 0);
	PlayerTextDrawSetSelectable(playerid, config_PTD[playerid][3], true);

	config_PTD[playerid][4] = CreatePlayerTextDraw(playerid, 412.333557, 12.791126, "Sexo"); // LISTO
	PlayerTextDrawLetterSize(playerid, config_PTD[playerid][4], 0.229666, 1.400888);
	PlayerTextDrawTextSize(playerid, config_PTD[playerid][4], 10.000000, 53.000000);
	PlayerTextDrawAlignment(playerid, config_PTD[playerid][4], 2);
	PlayerTextDrawColor(playerid, config_PTD[playerid][4], -2139062017);
	PlayerTextDrawUseBox(playerid, config_PTD[playerid][4], 1);
	PlayerTextDrawBoxColor(playerid, config_PTD[playerid][4], 336860415);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, config_PTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, config_PTD[playerid][4], 255);
	PlayerTextDrawFont(playerid, config_PTD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, config_PTD[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][4], 0);
	PlayerTextDrawSetSelectable(playerid, config_PTD[playerid][4], true);

	config_PTD[playerid][5] = CreatePlayerTextDraw(playerid, 412.666900, 29.798540, "Rasgo");
	PlayerTextDrawLetterSize(playerid, config_PTD[playerid][5], 0.229666, 1.400888);
	PlayerTextDrawTextSize(playerid, config_PTD[playerid][5], 10.000000, 53.000000);
	PlayerTextDrawAlignment(playerid, config_PTD[playerid][5], 2);
	PlayerTextDrawColor(playerid, config_PTD[playerid][5], -2139062017);
	PlayerTextDrawUseBox(playerid, config_PTD[playerid][5], 1);
	PlayerTextDrawBoxColor(playerid, config_PTD[playerid][5], 336860415);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, config_PTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, config_PTD[playerid][5], 255);
	PlayerTextDrawFont(playerid, config_PTD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, config_PTD[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][5], 0);
	PlayerTextDrawSetSelectable(playerid, config_PTD[playerid][5], true);

	config_PTD[playerid][6] = CreatePlayerTextDraw(playerid, 468.666870, 12.791126, "Altura");
	PlayerTextDrawLetterSize(playerid, config_PTD[playerid][6], 0.229666, 1.400888);
	PlayerTextDrawTextSize(playerid, config_PTD[playerid][6], 10.000000, 53.000000);
	PlayerTextDrawAlignment(playerid, config_PTD[playerid][6], 2);
	PlayerTextDrawColor(playerid, config_PTD[playerid][6], -2139062017);
	PlayerTextDrawUseBox(playerid, config_PTD[playerid][6], 1);
	PlayerTextDrawBoxColor(playerid, config_PTD[playerid][6], 336860415);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, config_PTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, config_PTD[playerid][6], 255);
	PlayerTextDrawFont(playerid, config_PTD[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, config_PTD[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][6], 0);
	PlayerTextDrawSetSelectable(playerid, config_PTD[playerid][6], true);

	config_PTD[playerid][7] = CreatePlayerTextDraw(playerid, 468.666870, 29.798540, "Skin");
	PlayerTextDrawLetterSize(playerid, config_PTD[playerid][7], 0.229666, 1.400888);
	PlayerTextDrawTextSize(playerid, config_PTD[playerid][7], 10.000000, 53.000000);
	PlayerTextDrawAlignment(playerid, config_PTD[playerid][7], 2);
	PlayerTextDrawColor(playerid, config_PTD[playerid][7], -2139062017);
	PlayerTextDrawUseBox(playerid, config_PTD[playerid][7], 1);
	PlayerTextDrawBoxColor(playerid, config_PTD[playerid][7], 336860415);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, config_PTD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, config_PTD[playerid][7], 255);
	PlayerTextDrawFont(playerid, config_PTD[playerid][7], 1);
	PlayerTextDrawSetProportional(playerid, config_PTD[playerid][7], 1);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][7], 0);
	PlayerTextDrawSetSelectable(playerid, config_PTD[playerid][7], true);

	config_PTD[playerid][8] = CreatePlayerTextDraw(playerid, 265.000000, 4.007399, "");
	PlayerTextDrawLetterSize(playerid, config_PTD[playerid][8], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, config_PTD[playerid][8], 49.000000, 64.000000);
	PlayerTextDrawAlignment(playerid, config_PTD[playerid][8], 1);
	PlayerTextDrawColor(playerid, config_PTD[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, config_PTD[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, config_PTD[playerid][8], 336860370);
	PlayerTextDrawFont(playerid, config_PTD[playerid][8], 5);
	PlayerTextDrawSetProportional(playerid, config_PTD[playerid][8], 0);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][8], 0);
	PlayerTextDrawSetSelectable(playerid, config_PTD[playerid][8], true);
	PlayerTextDrawSetPreviewModel(playerid, config_PTD[playerid][8], 0);
	PlayerTextDrawSetPreviewRot(playerid, config_PTD[playerid][8], 0.000000, 0.000000, 0.000000, 1.000000);

	config_PTD[playerid][9] = CreatePlayerTextDraw(playerid, 427.333435, 49.792568, "Completa_el_formulario");
	PlayerTextDrawLetterSize(playerid, config_PTD[playerid][9], 0.239000, 0.811851);
	PlayerTextDrawAlignment(playerid, config_PTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, config_PTD[playerid][9], -1523963137);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, config_PTD[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, config_PTD[playerid][9], 255);
	PlayerTextDrawFont(playerid, config_PTD[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, config_PTD[playerid][9], 1);
	PlayerTextDrawSetShadow(playerid, config_PTD[playerid][9], 0);





}
hook OnPlayerClickTextDraw(id, Text:clickedid)
{
	if(clickedid == config_GTD[1])
	{
		new bool; for(new i;i<6;i++)
		{
		  if(playerMovementTD[id][config_step][i] != true) bool = false;
		  else bool = true;
		}
		if(bool)
		{
			insertCharacter(id, playerDate[id][player_input_password_hash], getName(id), playerDate[id][player_alias],  playerDate[id][player_age], playerDate[id][player_state], playerDate[id][player_gender], playerDate[id][player_faces][0], playerDate[id][player_height], playerDate[id][player_skin], 0.0, 0.0, 0.0, 0.0);
			ShowTDN_IC(id, "Registramos tu personaje");
			for(new i;i<8;i++) PlayerTextDrawHide(id, config_PTD[id][i]);
			for(new d;d<2;d++) 
			{
				TextDrawHideForPlayer(id, config_GTD[d]);
				TextDrawHideForPlayer(id, selectSkin_GTD[d]);
			}

			TogglePlayerSpectating(id, 0);
			loadPlayer(id);

		}else showWarningBoxMessage(id, "Termina el formulario");

	}
	else if(clickedid == selectSkin_GTD[0])
	{
		playerMovementTD[id][config_skin_count]--;
		if(playerMovementTD[id][config_skin_count] < 0)
		{
			playerMovementTD[id][config_skin_count] = 7;
		}
		playerDate[id][player_skin] = reloadSkinChange(id, playerMovementTD[id][config_skin_count]);
		playerMovementTD[id][config_step][5] = true;
	}
	else if(clickedid == selectSkin_GTD[1])
	{
		playerMovementTD[id][config_skin_count]++;
		if(playerMovementTD[id][config_skin_count] > 7)
		{
			playerMovementTD[id][config_skin_count] = 0;
		}
		playerDate[id][player_skin] = reloadSkinChange(id, playerMovementTD[id][config_skin_count]);
		playerMovementTD[id][config_step][5] = true;
	}
}
hook OP_ClickPlayerTextDraw(id, PlayerText:click)
{
	if(click == config_PTD[id][1])
	{
		if(playerMovementTD[id][ingress_scroll_X] >= 1.0)
		{
			scrollUpConfigBox(id);
		} else scrollApConfigBox(id);
	}
	else if(click == config_PTD[id][2])
	{
		ShowPlayerDialog(id, dialog_age, DIALOG_STYLE_INPUT, ""messageBG" Ingresa un dato", ""C_GREY" Edad(18-65)", ""C_GREEN" Continuar", "");
	}
	else if(click == config_PTD[id][3])
	{
		ShowPlayerDialog(id, dialog_state, DIALOG_STYLE_LIST, ""messageBG" Elige tu ciudadania", "EEUU\nEspaña\nItalia\nFrancia\nArgentina\nInglaterra\nRusia\nChile\nUruguay\nAlemania", ""C_GREEN" Continuar", "");
	}
	else if(click == config_PTD[id][4])
	{
		if(playerDate[id][player_gender] == GENDER_MALE || playerDate[id][player_gender] == 0)
		{
			playerDate[id][player_gender] = GENDER_FEMALE;
			PlayerTextDrawSetString(id,config_PTD[id][4], "Mujer");
		}
		else
		{
			playerDate[id][player_gender] = GENDER_MALE;
			PlayerTextDrawSetString(id,config_PTD[id][4], "Hombre");
		}
		playerMovementTD[id][config_step][2] = true;
	}
	else if(click == config_PTD[id][5])
	{
		ShowPlayerDialog(id, dialog_faces, DIALOG_STYLE_LIST, ""messageBG" Elige tu rasgo "C_GREY"(podras tener mas)", "Trabajador\nEnergetico\nInteligencia\nAtleta\nCultural", ""C_GREEN" Continuar", "");
	}
	else if(click == config_PTD[id][6])
	{
		ShowPlayerDialog(id, dialog_height, DIALOG_STYLE_INPUT, ""messageBG"Ingresa un dato", ""C_GREY"Ingresa tu altura en centimetros 1.(max 110, min 20)", ""C_GREEN" Continuar", "");
	}
	else if(click == config_PTD[id][7])
	{
		if(playerMovementTD[id][config_step][2] == true)
		{
			if(!IsValidActor(playerMovementTD[id][config_aactor]))
			{ 
				new int;
				if(playerDate[id][player_gender] == GENDER_FEMALE)
				{
					int = 31;
				} else int = 14;
				playerMovementTD[id][config_aactor] = CreateActor(int, -1842.5522,866.6876,87.6095, 61.3337);
				SetActorVirtualWorld(playerMovementTD[id][config_aactor], id+1);
				SetPlayerVirtualWorld(id, id+1);

				SetPlayerCamera(id, -1845.6345,867.8477,87.6095, -1842.5522,866.6876,87.6095, true);
				for(new i;i<2;i++) TextDrawShowForPlayer(id, selectSkin_GTD[i]);

				playerMovementTD[id][config_skin_count] = 0;
			}
			else
			{
				DestroyActor(playerMovementTD[id][config_aactor]);
				SetPlayerCamera(id, -1849.0415,867.3620,88.6095, -1845.6572,863.2912,87.6095, true);
				for(new i;i<2;i++) TextDrawHideForPlayer(id, selectSkin_GTD[i]);
			}
		} else showWarningBoxMessage(id, "Elige tu sexo antes");

	}
}


hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case dialog_age:
		{
			if(response)
			{
				if(IsNumeric(inputtext))
				{
					new int = strval(inputtext);

					if(int > 17 && int < 66)
					{
						playerDate[playerid][player_age] = int;
						playerMovementTD[playerid][config_step][0] = true;
						new string[20]; format(string, sizeof(string), "Edad: %i", int);
						PlayerTextDrawSetString(playerid, config_PTD[playerid][2], string);


					}else showWarningBoxMessage(playerid, "Entre 18-65 caracteres");
				}else showWarningBoxMessage(playerid, "Datos numericos");
			}
		}
		case dialog_state:
		{
			if(response)
			{
				playerDate[playerid][player_state] = listitem + 1;
				PlayerTextDrawSetString(playerid, config_PTD[playerid][3], getStateString(listitem + 1));
				playerMovementTD[playerid][config_step][1] = true;
			}
		}
		case dialog_height:
		{
			if(response)
			{
				if(IsNumeric(inputtext))
				{
					new int = strval(inputtext);
					if(int > 0 && int < 111)
					{
						playerDate[playerid][player_height] = int;
						new string[25]; format(string, sizeof(string), "Altura: 1.%i", int);
						PlayerTextDrawSetString(playerid, config_PTD[playerid][6], string);
						playerMovementTD[playerid][config_step][3] = true;
					} else showWarningBoxMessage(playerid, "Entre 0-110 caracteres");
				} else showWarningBoxMessage(playerid, "Solo numeros");
			}
		}
		case dialog_faces:
		{
			if(response)
			{
				playerDate[playerid][player_faces][0] = listitem + 1;
				PlayerTextDrawSetString(playerid, config_PTD[playerid][5], getFacesString(listitem + 1));
				playerMovementTD[playerid][config_step][4] = true;
			}
		}

	}
}




















showWarningBoxMessage(id, const text[])
{
	PlayerTextDrawSetString(id, config_PTD[id][9], text);
	PlayerTextDrawShow(id, config_PTD[id][9]);
}

showConfigBox(id)
{
	for(new i;i<8;i++) PlayerTextDrawShow(id, config_PTD[id][i]);
	for(new d;d<2;d++) TextDrawShowForPlayer(id, config_GTD[d]);
	//SelectTextDraw(id, 0x87868286);	

	playerMovementTD[id][ingress_scroll_X] = 8.5;
	playerMovementTD[id][ingress_scroll_text] = 75.0;

}
reloadSkinChange(id, count)
{
	new int;
	if(playerDate[id][player_gender] == GENDER_FEMALE)
	{
		int = skin_type_women[count];
	}else int = skin_type_men[count];

	if(IsValidActor(playerMovementTD[id][config_aactor]))
	{
		DestroyActor(playerMovementTD[id][config_aactor]);

		playerMovementTD[id][config_aactor] = CreateActor(int, -1842.5522,866.6876,87.6095, 61.3337);
		SetActorVirtualWorld(playerMovementTD[id][config_aactor], id+1);
	}
	return int;
}
// ======================== UP BOX======================
scrollUpConfigBox(id)
{
	if(!IsValidTimer(playerMovementTD[id][ingress_scroll_timer] && playerMovementTD[id][ingress_scroll_timer] != -1))
	{
		playerMovementTD[id][ingress_scroll_timer] = SetTimerEx("movement_config_TD_1", 40, true, "d", id);
	}
}

forward movement_config_TD_1(id);
public movement_config_TD_1(id)
{
	playerMovementTD[id][ingress_scroll_X] += 0.5;
	playerMovementTD[id][ingress_scroll_text] +=  5.0;

	PlayerTextDrawHide(id, config_PTD[id][0]);
	PlayerTextDrawLetterSize(id, config_PTD[id][0], 0.000000, playerMovementTD[id][ingress_scroll_X]);
	PlayerTextDrawShow(id, config_PTD[id][0]);

	if(playerMovementTD[id][ingress_scroll_X] >= 11.0)
	{
		if(IsValidTimer(playerMovementTD[id][ingress_scroll_timer]))
		{
			KillTimer(playerMovementTD[id][ingress_scroll_timer]);
			playerMovementTD[id][ingress_scroll_timer] = -1;
			playerMovementTD[id][ingress_scroll_timer] = SetTimerEx("movement_config_TD_2", 40, true, "d", id);
		}
	}
	else
	{
		PlayerTextDrawDestroy(id, config_PTD[id][1]);
		config_PTD[id][1] = CreatePlayerTextDraw(id, 408.666748, playerMovementTD[id][ingress_scroll_text], "Ocultar");
		PlayerTextDrawLetterSize(id, config_PTD[id][1], 0.219333, 1.069036);
		PlayerTextDrawTextSize(id, config_PTD[id][1], 10.000000, 363.000000);
		PlayerTextDrawAlignment(id, config_PTD[id][1], 2);
		PlayerTextDrawColor(id, config_PTD[id][1], -1);
		PlayerTextDrawUseBox(id, config_PTD[id][1], 1);
		PlayerTextDrawBoxColor(id, config_PTD[id][1], 505290495);
		PlayerTextDrawBackgroundColor(id, config_PTD[id][1], 255);
		PlayerTextDrawFont(id, config_PTD[id][1], 1);
		PlayerTextDrawSetProportional(id, config_PTD[id][1], 1);
		PlayerTextDrawSetSelectable(id, config_PTD[id][1], true);
		PlayerTextDrawShow(id, config_PTD[id][1]);
	}
}

forward movement_config_TD_2(id);
public movement_config_TD_2(id)
{
	playerMovementTD[id][ingress_scroll_X] -= 1.0;
	playerMovementTD[id][ingress_scroll_text] -=  10.0;

	PlayerTextDrawHide(id, config_PTD[id][0]);
	PlayerTextDrawLetterSize(id, config_PTD[id][0], 0.000000, playerMovementTD[id][ingress_scroll_X]);
	PlayerTextDrawShow(id, config_PTD[id][0]);
	
	// sumar 10 a todo

	if(playerMovementTD[id][ingress_scroll_text] <= 15.0) 
	{
		PlayerTextDrawHide(id, config_PTD[id][2]);
		PlayerTextDrawHide(id, config_PTD[id][4]);
		PlayerTextDrawHide(id, config_PTD[id][6]);
	}
	if(playerMovementTD[id][ingress_scroll_text] <= 34.0) 
	{
		PlayerTextDrawHide(id, config_PTD[id][3]);
		PlayerTextDrawHide(id, config_PTD[id][5]);
		PlayerTextDrawHide(id, config_PTD[id][7]);
	}
	if(playerMovementTD[id][ingress_scroll_text] <= 64.0) PlayerTextDrawHide(id, config_PTD[id][8]);
	if(playerMovementTD[id][ingress_scroll_text] <= 50.0) PlayerTextDrawHide(id, config_PTD[id][9]);
	if(playerMovementTD[id][ingress_scroll_text] <= 48.0) TextDrawHideForPlayer(id, config_GTD[0]);
	if(playerMovementTD[id][ingress_scroll_text] <= 53.0) TextDrawHideForPlayer(id, config_GTD[1]);


	PlayerTextDrawSetSelectable(id, config_PTD[id][1], true);
	if(playerMovementTD[id][ingress_scroll_X] <= 0.0)
	{
		if(IsValidTimer(playerMovementTD[id][ingress_scroll_timer]))
		{
			KillTimer(playerMovementTD[id][ingress_scroll_timer]);

			PlayerTextDrawDestroy(id, config_PTD[id][1]);
			config_PTD[id][1] = CreatePlayerTextDraw(id, 408.666748, 0.5, "Mostrar");
			PlayerTextDrawLetterSize(id, config_PTD[id][1], 0.219333, 1.069036);
			PlayerTextDrawTextSize(id, config_PTD[id][1], 10.000000, 357.000000);
			PlayerTextDrawAlignment(id, config_PTD[id][1], 2);
			PlayerTextDrawColor(id, config_PTD[id][1], -1);
			PlayerTextDrawUseBox(id, config_PTD[id][1], 1);
			PlayerTextDrawBoxColor(id, config_PTD[id][1], 505290495);
			PlayerTextDrawBackgroundColor(id, config_PTD[id][1], 255);
			PlayerTextDrawFont(id, config_PTD[id][1], 1);
			PlayerTextDrawSetProportional(id, config_PTD[id][1], 1);
			PlayerTextDrawSetSelectable(id, config_PTD[id][1], true);

			PlayerTextDrawShow(id, config_PTD[id][1]);
		}
	}
	else
	{
		PlayerTextDrawDestroy(id, config_PTD[id][1]);

		config_PTD[id][1] = CreatePlayerTextDraw(id, 408.666748, playerMovementTD[id][ingress_scroll_text], "Ocultar");
		PlayerTextDrawLetterSize(id, config_PTD[id][1], 0.219333, 1.069036);
		PlayerTextDrawTextSize(id, config_PTD[id][1], 10.000000, 363.000000);
		PlayerTextDrawAlignment(id, config_PTD[id][1], 2);
		PlayerTextDrawColor(id, config_PTD[id][1], -1);
		PlayerTextDrawUseBox(id, config_PTD[id][1], 1);
		PlayerTextDrawBoxColor(id, config_PTD[id][1], 505290495);
		PlayerTextDrawBackgroundColor(id, config_PTD[id][1], 255);
		PlayerTextDrawFont(id, config_PTD[id][1], 1);
		PlayerTextDrawSetProportional(id, config_PTD[id][1], 1);

		PlayerTextDrawShow(id, config_PTD[id][1]);
	}
}



// =============== AP BOX ===================

scrollApConfigBox(id)
{
	if(!IsValidTimer(playerMovementTD[id][ingress_scroll_timer] && playerMovementTD[id][ingress_scroll_timer] != -1))
	{
		playerMovementTD[id][ingress_scroll_timer] = SetTimerEx("movement_config_TD_3", 20, true, "d", id);
	}
}

forward movement_config_TD_3(id);
public movement_config_TD_3(id)
{
	playerMovementTD[id][ingress_scroll_X] += 0.5;
	playerMovementTD[id][ingress_scroll_text] +=  5.0;

	PlayerTextDrawHide(id, config_PTD[id][0]);
	PlayerTextDrawLetterSize(id, config_PTD[id][0], 0.000000, playerMovementTD[id][ingress_scroll_X]);
	PlayerTextDrawShow(id, config_PTD[id][0]);

	if(playerMovementTD[id][ingress_scroll_text] >= 17.0) 
	{
		PlayerTextDrawShow(id, config_PTD[id][2]);
		PlayerTextDrawShow(id, config_PTD[id][4]);
		PlayerTextDrawShow(id, config_PTD[id][6]);
	}
	if(playerMovementTD[id][ingress_scroll_text] >= 36.0) 
	{
		PlayerTextDrawShow(id, config_PTD[id][3]);
		PlayerTextDrawShow(id, config_PTD[id][5]);
		PlayerTextDrawShow(id, config_PTD[id][7]);
	}
	//if(playerMovementTD[id][ingress_scroll_text] >= 66.0) PlayerTextDrawShow(id, config_PTD[id][8]);
	//if(playerMovementTD[id][ingress_scroll_text] >= 54.0) PlayerTextDrawShow(id, config_PTD[id][9]);
	if(playerMovementTD[id][ingress_scroll_text] >= 51.0) TextDrawShowForPlayer(id, config_GTD[0]);
	if(playerMovementTD[id][ingress_scroll_text] >= 58.0) TextDrawShowForPlayer(id, config_GTD[1]);

	if(playerMovementTD[id][ingress_scroll_X] >= 11.0)
	{
		if(IsValidTimer(playerMovementTD[id][ingress_scroll_timer]))
		{
			KillTimer(playerMovementTD[id][ingress_scroll_timer]);
			playerMovementTD[id][ingress_scroll_timer] = -1;
			playerMovementTD[id][ingress_scroll_timer] = SetTimerEx("movement_config_TD_4", 40, true, "d", id);
		}
	} else
	{
		PlayerTextDrawDestroy(id, config_PTD[id][1]);
		config_PTD[id][1] = CreatePlayerTextDraw(id, 408.666748, playerMovementTD[id][ingress_scroll_text], "Ocultar");
		PlayerTextDrawLetterSize(id, config_PTD[id][1], 0.219333, 1.069036);
		PlayerTextDrawTextSize(id, config_PTD[id][1], 10.000000, 363.000000);
		PlayerTextDrawAlignment(id, config_PTD[id][1], 2);
		PlayerTextDrawColor(id, config_PTD[id][1], -1);
		PlayerTextDrawUseBox(id, config_PTD[id][1], 1);
		PlayerTextDrawBoxColor(id, config_PTD[id][1], 505290495);
		PlayerTextDrawBackgroundColor(id, config_PTD[id][1], 255);
		PlayerTextDrawFont(id, config_PTD[id][1], 1);
		PlayerTextDrawSetProportional(id, config_PTD[id][1], 1);
		PlayerTextDrawSetSelectable(id, config_PTD[id][1], true);
		PlayerTextDrawShow(id, config_PTD[id][1]);
	}
}

forward movement_config_TD_4(id);
public movement_config_TD_4(id)
{
	playerMovementTD[id][ingress_scroll_X] -= 1.0;
	playerMovementTD[id][ingress_scroll_text] -=  10.0;

	PlayerTextDrawHide(id, config_PTD[id][0]);
	PlayerTextDrawLetterSize(id, config_PTD[id][0], 0.000000, playerMovementTD[id][ingress_scroll_X]);
	PlayerTextDrawShow(id, config_PTD[id][0]);

	if(playerMovementTD[id][ingress_scroll_X] <= 8.5)
	{
		if(IsValidTimer(playerMovementTD[id][ingress_scroll_timer]))
		{
			KillTimer(playerMovementTD[id][ingress_scroll_timer]);

			PlayerTextDrawDestroy(id, config_PTD[id][1]);

			config_PTD[id][1] = CreatePlayerTextDraw(id, 408.666748, 70.5, "Ocultar");
			PlayerTextDrawLetterSize(id, config_PTD[id][1], 0.219333, 1.069036);
			PlayerTextDrawTextSize(id, config_PTD[id][1], 10.000000, 363.000000);
			PlayerTextDrawAlignment(id, config_PTD[id][1], 2);
			PlayerTextDrawColor(id, config_PTD[id][1], -1);
			PlayerTextDrawUseBox(id, config_PTD[id][1], 1);
			PlayerTextDrawBoxColor(id, config_PTD[id][1], 505290495);
			PlayerTextDrawBackgroundColor(id, config_PTD[id][1], 255);
			PlayerTextDrawFont(id, config_PTD[id][1], 1);
			PlayerTextDrawSetProportional(id, config_PTD[id][1], 1);
			PlayerTextDrawSetSelectable(id, config_PTD[id][1], true);

			PlayerTextDrawShow(id, config_PTD[id][1]);
		}
	}
	else
	{
		PlayerTextDrawDestroy(id, config_PTD[id][1]);
		config_PTD[id][1] = CreatePlayerTextDraw(id, 408.666748, playerMovementTD[id][ingress_scroll_text], "Ocultar");
		PlayerTextDrawLetterSize(id, config_PTD[id][1], 0.219333, 1.069036);
		PlayerTextDrawTextSize(id, config_PTD[id][1], 10.000000, 363.000000);
		PlayerTextDrawAlignment(id, config_PTD[id][1], 2);
		PlayerTextDrawColor(id, config_PTD[id][1], -1);
		PlayerTextDrawUseBox(id, config_PTD[id][1], 1);
		PlayerTextDrawBoxColor(id, config_PTD[id][1], 505290495);
		PlayerTextDrawBackgroundColor(id, config_PTD[id][1], 255);
		PlayerTextDrawFont(id, config_PTD[id][1], 1);
		PlayerTextDrawSetProportional(id, config_PTD[id][1], 1);
		PlayerTextDrawShow(id, config_PTD[id][1]);
	}
}