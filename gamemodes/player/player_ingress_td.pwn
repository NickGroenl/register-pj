#include <YSI_Coding\y_hooks>

DEFINE_HOOK_REPLACEMENT(OnPlayer, OP_);


forward scrollApTimer(id);
forward scrollUpTimer(id);


// ====== VARS =====
new Text:ingress_GTD;
new PlayerText:ingress_PTD[MAX_PLAYERS][6];

// ========================= CALLBACKS ========================

hook OnGameModeInit()
{
	ingress_GTD = TextDrawCreate(394.000030, 213.644424, ">");
	TextDrawLetterSize(ingress_GTD, 0.393664, 1.599997);
	TextDrawTextSize(ingress_GTD, 404.000000, 10.000000);
	TextDrawAlignment(ingress_GTD, 1);
	TextDrawColor(ingress_GTD, -2139062017);
	TextDrawUseBox(ingress_GTD, 1);
	TextDrawBoxColor(ingress_GTD, 673720520);
	TextDrawSetShadow(ingress_GTD, 0);
	TextDrawSetOutline(ingress_GTD, 0);
	TextDrawBackgroundColor(ingress_GTD, 255);
	TextDrawFont(ingress_GTD, 1);
	TextDrawSetProportional(ingress_GTD, 1);
	TextDrawSetShadow(ingress_GTD, 0);
	TextDrawSetSelectable(ingress_GTD, true);


}
hook OnPlayerConnect(playerid)
{
	ingress_PTD[playerid][0] = CreatePlayerTextDraw(playerid, 244.999954, 162.622177, "box");
	PlayerTextDrawLetterSize(playerid, ingress_PTD[playerid][0], 0.000000, 7.500000);
	PlayerTextDrawTextSize(playerid, ingress_PTD[playerid][0], 405.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, ingress_PTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, ingress_PTD[playerid][0], -1523963137);
	PlayerTextDrawUseBox(playerid, ingress_PTD[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, ingress_PTD[playerid][0], 336860390);
	PlayerTextDrawSetShadow(playerid, ingress_PTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, ingress_PTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, ingress_PTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, ingress_PTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, ingress_PTD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, ingress_PTD[playerid][0], 0);

	ingress_PTD[playerid][1] = CreatePlayerTextDraw(playerid, 324.666595, 153.496307, "Xylo_Arabe");
	PlayerTextDrawLetterSize(playerid, ingress_PTD[playerid][1], 0.270666, 1.048297);
	PlayerTextDrawTextSize(playerid, ingress_PTD[playerid][1], 0.000000, 179.000000);
	PlayerTextDrawAlignment(playerid, ingress_PTD[playerid][1], 2);
	PlayerTextDrawColor(playerid, ingress_PTD[playerid][1], -1);
	PlayerTextDrawUseBox(playerid, ingress_PTD[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, ingress_PTD[playerid][1], 505290495);
	PlayerTextDrawSetShadow(playerid, ingress_PTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, ingress_PTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, ingress_PTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, ingress_PTD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, ingress_PTD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, ingress_PTD[playerid][1], 0);

	ingress_PTD[playerid][2] = CreatePlayerTextDraw(playerid, 248.533447, 172.080017, "Ingresa tu clave");
	PlayerTextDrawLetterSize(playerid, ingress_PTD[playerid][2], 0.201666, 0.894814);
	PlayerTextDrawAlignment(playerid, ingress_PTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, ingress_PTD[playerid][2], -2139062017);
	PlayerTextDrawSetShadow(playerid, ingress_PTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, ingress_PTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, ingress_PTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, ingress_PTD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, ingress_PTD[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, ingress_PTD[playerid][2], 0);

	ingress_PTD[playerid][3] = CreatePlayerTextDraw(playerid, 249.333160, 188.755523, "click");
	PlayerTextDrawLetterSize(playerid, ingress_PTD[playerid][3], 0.302666, 0.840888);
	PlayerTextDrawTextSize(playerid, ingress_PTD[playerid][3], 400.000000, 10.000000);
	PlayerTextDrawAlignment(playerid, ingress_PTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, ingress_PTD[playerid][3], 255);
	PlayerTextDrawUseBox(playerid, ingress_PTD[playerid][3], 1);
	PlayerTextDrawBoxColor(playerid, ingress_PTD[playerid][3], -1061109505);
	PlayerTextDrawSetShadow(playerid, ingress_PTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, ingress_PTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, ingress_PTD[playerid][3], 255);
	PlayerTextDrawFont(playerid, ingress_PTD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, ingress_PTD[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, ingress_PTD[playerid][3], 0);
	PlayerTextDrawSetSelectable(playerid, ingress_PTD[playerid][3], true);

	ingress_PTD[playerid][4] = CreatePlayerTextDraw(playerid, 292.332885, 198.047393, "Clave incorrecta");
	PlayerTextDrawLetterSize(playerid, ingress_PTD[playerid][4], 0.201666, 0.894814);
	PlayerTextDrawAlignment(playerid, ingress_PTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, ingress_PTD[playerid][4], -1523963137);
	PlayerTextDrawSetShadow(playerid, ingress_PTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, ingress_PTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, ingress_PTD[playerid][4], 255);
	PlayerTextDrawFont(playerid, ingress_PTD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, ingress_PTD[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, ingress_PTD[playerid][4], 0);

	
	ingress_PTD[playerid][5] = CreatePlayerTextDraw(playerid, 387.000030, 153.496276, "Ocultar");
	PlayerTextDrawLetterSize(playerid, ingress_PTD[playerid][5], 0.134000, 0.919703);
	PlayerTextDrawTextSize(playerid, ingress_PTD[playerid][5], 412.000000, 10.000000);
	PlayerTextDrawAlignment(playerid, ingress_PTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, ingress_PTD[playerid][5], 255);
	PlayerTextDrawUseBox(playerid, ingress_PTD[playerid][5], 1);
	PlayerTextDrawBoxColor(playerid, ingress_PTD[playerid][5], 673720575);
	PlayerTextDrawSetShadow(playerid, ingress_PTD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, ingress_PTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, ingress_PTD[playerid][5], 255);
	PlayerTextDrawFont(playerid, ingress_PTD[playerid][5], 2);
	PlayerTextDrawSetProportional(playerid, ingress_PTD[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, ingress_PTD[playerid][5], 0);
	PlayerTextDrawSetSelectable(playerid, ingress_PTD[playerid][5], true);

	
} 
hook OnPlayerRequestClass(playerid, classid)
{
	if(playerid != INVALID_PLAYER_ID)
	{
		if(SQL::RowExistsEx("accounts", "player_name", getName(playerid)))
		{
			playerMovementTD[playerid][ingress_type] = INGRESS_TYPE_LOGIN;
			getDataBasePassword(playerid);
		} else playerMovementTD[playerid][ingress_type] = INGRESS_TYPE_REGISTER;
		
		//showIngress_TD(playerid);
		//showInventory(playerid);
		TogglePlayerSpectating(playerid, 0);
		SetSpawnInfo(playerid, 0, 270, -1983.3171,641.0823,137.9322, 30.0, 0,0,0,0,0,0);
		SpawnPlayer(playerid);
		clearChat(playerid, 100);
		//SetPlayerCamera(playerid, -1849.0415,867.3620,88.6095, -1845.6572,863.2912,87.6095, false);
	}
}
hook OnPlayerClickTextDraw(playerid, Text:clickedid)
{
	if(clickedid == ingress_GTD)
	{
		if(playerMovementTD[playerid][ingress_type] == INGRESS_TYPE_LOGIN)
		{
			if(playerMovementTD[playerid][ingress_step] == 1)
			{
				if(playerMovementTD[playerid][ingress_next] == true) 
				{
					bcrypt_check(playerDate[playerid][player_input_password], playerDate[playerid][player_password], "OnPasswordChecked", "d", playerid);
				} else send_ingress_TD_Error(playerid, "Completa el formulario");
			}
		}
		else if(playerMovementTD[playerid][ingress_type] == INGRESS_TYPE_REGISTER)
		{
			if(playerMovementTD[playerid][ingress_step] == 1)
			{
				if(playerMovementTD[playerid][ingress_next] == true) 
				{
					for(new i;i<6;i++) PlayerTextDrawHide(playerid, ingress_PTD[playerid][i]);
					TextDrawHideForPlayer(playerid, ingress_GTD);


					showLoadingScreen(playerid, "Verificando...", 6000);

				}
				else send_ingress_TD_Error(playerid, "Completa el formulario");
			}
			if(playerMovementTD[playerid][ingress_step] == 2)
			{
				if(playerMovementTD[playerid][ingress_next] == true)
				{
					showLoadingScreen(playerid, "Un poco mas...", 10000);
					for(new i;i<6;i++) PlayerTextDrawHide(playerid, ingress_PTD[playerid][i]);
					TextDrawHideForPlayer(playerid, ingress_GTD);
					CancelSelectTextDraw(playerid);
					showConfigBox(playerid);
					scrollApConfigBox(playerid);
					scrollUpConfigBox(playerid);

				}else send_ingress_TD_Error(playerid, "Completa el formulario");
			}
		}
	}
}
hook OP_ClickPlayerTextDraw(playerid, PlayerText:clickedid)
{
	if(clickedid == ingress_PTD[playerid][3])
	{
		if(playerMovementTD[playerid][ingress_step] == 1 || playerMovementTD[playerid][ingress_step] == 0)
		{
			ShowPlayerDialog(playerid, dialog_password, DIALOG_STYLE_PASSWORD, ""messageBG" Cuadro de texto", ""C_GREY" Ingresa una contraseña", ""C_GREEN" Continuar", "");
		}
		else if(playerMovementTD[playerid][ingress_step] == 2)
		{
			ShowPlayerDialog(playerid, dialog_alias, DIALOG_STYLE_INPUT, ""messageBG" Cuadro de texto", ""C_GREY" Ingresa un alias(no el nombre de tu personaje), sera una forma\npara poder llamarte", ""C_GREEN" Continuar", "");
		}
	}
	if(clickedid == ingress_PTD[playerid][5])
	{
		if(playerMovementTD[playerid][ingress_scroll_X] >= 7.5)
		{
			scrollUpBox(playerid);
		} else scrollApBox(playerid);
	}

}
hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	switch(dialogid)
	{
		case dialog_password:
		{
			if(response)
			{
				if(strlen(inputtext) > 5 && strlen(inputtext) < 13)
				{
					bcrypt_hash(inputtext, 12, "OnPasswordHashed", "d", playerid);
					format(playerDate[playerid][player_input_password], 13, "%s", inputtext);
					new string[13];
					for(new i;i<strlen(inputtext);i++) strcat(string, ".");
					PlayerTextDrawSetString(playerid, ingress_PTD[playerid][3], string);

					playerMovementTD[playerid][ingress_step] = 1;
					playerMovementTD[playerid][ingress_next] = true;
				} else send_ingress_TD_Error(playerid, "entre 5-12 caracteres");
			}
		}
		case dialog_alias:
		{
			if(response)
			{
				if(strlen(inputtext) > 5 && strlen(inputtext) < 40)
				{
						format(playerDate[playerid][player_alias], 40, "%s", inputtext);
						PlayerTextDrawSetString(playerid, ingress_PTD[playerid][3], inputtext);
						playerMovementTD[playerid][ingress_step] = 2;
						playerMovementTD[playerid][ingress_next] = true;
				}else send_ingress_TD_Error(playerid, "entre 5-40 caracteres");
			}
		}
	}
}
hook OnQuitLoadingScreen(id)
{
	if(playerMovementTD[id][ingress_step] == 1)
	{
		showIngress_TD(id);
		changeStep2Ingress(id);
		//scrollApBox(id);
		PlayerTextDrawShow(id, ingress_PTD[id][2]);
		PlayerTextDrawShow(id, ingress_PTD[id][3]);		 
		TextDrawShowForPlayer(id, ingress_GTD);


	}
	else if(playerMovementTD[id][ingress_step] == 2)
	{
		SelectTextDraw(id, 0x87868286);	
	}
	else if(playerMovementTD[id][ingress_step] == 3)
	{
		loadPlayer(id);
	}
}





















// ==================================== FUNCTIONS ==============================
//ingresa: 1.8, box_pass: 4.0, error: 4.9
showIngress_TD(id)
{	
	SelectTextDraw(id, 0x87868286);	

	playerMovementTD[id][ingress_scroll_X] = 7.5;
	PlayerTextDrawShow(id, ingress_PTD[id][5]);
	PlayerTextDrawShow(id, ingress_PTD[id][1]);
	PlayerTextDrawShow(id, ingress_PTD[id][0]);

	PlayerTextDrawSetString(id, ingress_PTD[id][1], getName(id));

	if(playerMovementTD[id][ingress_type] == INGRESS_TYPE_LOGIN)
	{
		PlayerTextDrawSetString(id, ingress_PTD[id][2], "Ingresa tu clave");
	}
	else if(playerMovementTD[id][ingress_type] == INGRESS_TYPE_REGISTER)
	{
		PlayerTextDrawSetString(id, ingress_PTD[id][2], "Ingresa una clave");
	}

	scrollApBox(id);
}

changeStep2Ingress(id)
{
	PlayerTextDrawSetString(id, ingress_PTD[id][2], "Ingresa un Alias");
	PlayerTextDrawSetString(id, ingress_PTD[id][3], "click");
	PlayerTextDrawHide(id, ingress_PTD[id][4]);

	playerMovementTD[id][ingress_step] = 2;
	playerMovementTD[id][ingress_next] = false;

}

send_ingress_TD_Error(id, const text[])
{
	PlayerTextDrawSetString(id, ingress_PTD[id][4], text);
	PlayerTextDrawShow(id, ingress_PTD[id][4]);
}
scrollApBox(id)
{
	if(!IsValidTimer(playerMovementTD[id][ingress_scroll_timer]))
	{
		playerMovementTD[id][ingress_scroll_timer] = SetTimerEx("scrollApTimer", 10, true, "d", id);
		PlayerTextDrawSetString(id, ingress_PTD[id][5], "Ocultar");
	}
}



public scrollApTimer(id)
{
	playerMovementTD[id][ingress_scroll_X] += 0.5;
	if(playerMovementTD[id][ingress_scroll_X] == 8.5)
	{
		playerMovementTD[id][ingress_scroll_X] -= 0.5;
		PlayerTextDrawLetterSize(id, ingress_PTD[id][0], 0.000000, playerMovementTD[id][ingress_scroll_X]);
		KillTimer(playerMovementTD[id][ingress_scroll_timer]);

	}else 
	{
		if(playerMovementTD[id][ingress_scroll_X] == 7.5)
		{
			playerMovementTD[id][ingress_scroll_X] += 0.5;
		}
		PlayerTextDrawHide(id, ingress_PTD[id][0]); 
		PlayerTextDrawLetterSize(id, ingress_PTD[id][0], 0.000000, playerMovementTD[id][ingress_scroll_X]);
		PlayerTextDrawShow(id, ingress_PTD[id][0]);

		if(playerMovementTD[id][ingress_scroll_X] >= 1.8) PlayerTextDrawShow(id, ingress_PTD[id][2]);
		if(playerMovementTD[id][ingress_scroll_X] >= 4.0) PlayerTextDrawShow(id, ingress_PTD[id][3]);
		//if(playerMovementTD[id][ingress_scroll_X] >= 4.2) PlayerTextDrawShow(id, ingress_PTD[id][4]);  
		if(playerMovementTD[id][ingress_scroll_X] >= 6.3) TextDrawShowForPlayer(id, ingress_GTD);	
	}
}

scrollUpBox(id)
{
	if(!IsValidTimer(playerMovementTD[id][ingress_scroll_timer]))
	{
		playerMovementTD[id][ingress_scroll_timer] = SetTimerEx("scrollUpTimer", 10, true, "d", id);
		PlayerTextDrawSetString(id, ingress_PTD[id][5], "Mostrar");
	}
}



public scrollUpTimer(id)
{
	playerMovementTD[id][ingress_scroll_X] -= 0.5;
	if(playerMovementTD[id][ingress_scroll_X] <= 0.2)
	{
		KillTimer(playerMovementTD[id][ingress_scroll_timer]);
	}else 
	{
		PlayerTextDrawHide(id, ingress_PTD[id][0]); 
		PlayerTextDrawLetterSize(id, ingress_PTD[id][0], 0.000000, playerMovementTD[id][ingress_scroll_X]);
		PlayerTextDrawShow(id, ingress_PTD[id][0]); 


		if(playerMovementTD[id][ingress_scroll_X] <= 1.5) PlayerTextDrawHide(id, ingress_PTD[id][2]);
		if(playerMovementTD[id][ingress_scroll_X] <= 3.7) PlayerTextDrawHide(id, ingress_PTD[id][3]);
		if(playerMovementTD[id][ingress_scroll_X] <= 3.9) PlayerTextDrawHide(id, ingress_PTD[id][4]);
		if(playerMovementTD[id][ingress_scroll_X] <= 6.4) TextDrawHideForPlayer(id, ingress_GTD);	}
}

forward OnPasswordChecked(id);
public OnPasswordChecked(id)
{
	playerMovementTD[id][ingress_next] = bcrypt_is_equal();
	if(playerMovementTD[id][ingress_next])
	{
		playerMovementTD[id][ingress_step] = 3;
		showLoadingScreen(id, "Cargando tus datos", 6000);
		for(new i;i<6;i++) PlayerTextDrawHide(id, ingress_PTD[id][i]);
		TextDrawHideForPlayer(id, ingress_GTD);
	} else send_ingress_TD_Error(id, "Password incorrecta");
}
