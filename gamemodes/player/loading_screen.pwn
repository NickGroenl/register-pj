#include <YSI_Coding\y_hooks>

new PlayerText:loading_PTD[MAX_PLAYERS][4];
// ================= CALLBACKS ==============

hook OnPlayerConnect(playerid)
{
	loading_PTD[playerid][0] = CreatePlayerTextDraw(playerid, 290.000000, 190.000000, "Confirmando");
	PlayerTextDrawLetterSize(playerid, loading_PTD[playerid][0], 0.241332, 1.487998);
	PlayerTextDrawTextSize(playerid, loading_PTD[playerid][0], 405.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, loading_PTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, loading_PTD[playerid][0], -1);
	PlayerTextDrawUseBox(playerid, loading_PTD[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, loading_PTD[playerid][0], 505290420);
	PlayerTextDrawSetShadow(playerid, loading_PTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, loading_PTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, loading_PTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, loading_PTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, loading_PTD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, loading_PTD[playerid][0], 0);

	loading_PTD[playerid][1] = CreatePlayerTextDraw(playerid, 383.333282, 201.199996, "box");
	PlayerTextDrawLetterSize(playerid, loading_PTD[playerid][1], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, loading_PTD[playerid][1], 386.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, loading_PTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, loading_PTD[playerid][1], -1);
	PlayerTextDrawUseBox(playerid, loading_PTD[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, loading_PTD[playerid][1], 1852731060);
	PlayerTextDrawSetShadow(playerid, loading_PTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, loading_PTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, loading_PTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, loading_PTD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, loading_PTD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, loading_PTD[playerid][1], 0);

	loading_PTD[playerid][2] = CreatePlayerTextDraw(playerid, 389.666534, 201.199981, "box");
	PlayerTextDrawLetterSize(playerid, loading_PTD[playerid][2], 0.000000, 0.033332);
	PlayerTextDrawTextSize(playerid, loading_PTD[playerid][2], 393.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, loading_PTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, loading_PTD[playerid][2], -1);
	PlayerTextDrawUseBox(playerid, loading_PTD[playerid][2], 1);
	PlayerTextDrawBoxColor(playerid, loading_PTD[playerid][2], 1852731060);
	PlayerTextDrawSetShadow(playerid, loading_PTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, loading_PTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, loading_PTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, loading_PTD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, loading_PTD[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, loading_PTD[playerid][2], 0);

	loading_PTD[playerid][3] = CreatePlayerTextDraw(playerid, 396.999847, 201.199981, "box");
	PlayerTextDrawLetterSize(playerid, loading_PTD[playerid][3], 0.000000, 0.033332);
	PlayerTextDrawTextSize(playerid, loading_PTD[playerid][3], 400.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, loading_PTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, loading_PTD[playerid][3], -1);
	PlayerTextDrawUseBox(playerid, loading_PTD[playerid][3], 1);
	PlayerTextDrawBoxColor(playerid, loading_PTD[playerid][3], 1852731060);
	PlayerTextDrawSetShadow(playerid, loading_PTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, loading_PTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, loading_PTD[playerid][3], 255);
	PlayerTextDrawFont(playerid, loading_PTD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, loading_PTD[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, loading_PTD[playerid][3], 0);
}


showLoadingScreen(id, const text[], time)
{
	if(id != INVALID_PLAYER_ID)
	{
		PlayerTextDrawSetString(id, loading_PTD[id][0], text);
		PlayerTextDrawShow(id, loading_PTD[id][0]);


		if(!IsValidTimer(playerMovementTD[id][loading_screen_timer])) playerMovementTD[id][loading_screen_timer] = SetTimerEx("loadingScreenTimer", 400, true, "d", id);
		playerMovementTD[id][loading_screen_max_time] = time;
		playerMovementTD[id][loading_screen_act_time] = 0;
	}
}
stopLoadingScreen(id)
{
	if(IsValidTimer(playerMovementTD[id][loading_screen_timer])) 
	{	
		KillTimer(playerMovementTD[id][loading_screen_timer]);
	}
	for(new i;i<4;i++) PlayerTextDrawHide(id, loading_PTD[id][i]);
	playerMovementTD[id][loading_screen_max_time] = 0;
	playerMovementTD[id][loading_screen_act_time] = 0;
	playerMovementTD[id][loading_screen_count] = 0;
	PlayerTextDrawHide(id, loading_PTD[id][0]);


	CallLocalFunction("OnQuitLoadingScreen", "d", id);
}

forward loadingScreenTimer(id);
public loadingScreenTimer(id)
{
	if(id != INVALID_PLAYER_ID && IsValidTimer(playerMovementTD[id][loading_screen_timer]))
	{
		if(!IsPlayerConnected(id)) KillTimer(playerMovementTD[id][loading_screen_timer]);

		if(playerMovementTD[id][loading_screen_count] == 4)
		{
			PlayerTextDrawHide(id, loading_PTD[id][1]);
			PlayerTextDrawHide(id, loading_PTD[id][2]);
			PlayerTextDrawHide(id, loading_PTD[id][3]);
			playerMovementTD[id][loading_screen_count] = 0;
		}

		playerMovementTD[id][loading_screen_act_time] += 300;
		playerMovementTD[id][loading_screen_count]++;
		if(playerMovementTD[id][loading_screen_count] >= 1 && playerMovementTD[id][loading_screen_count] <= 3) PlayerTextDrawBoxColor(id, loading_PTD[id][playerMovementTD[id][loading_screen_count]], 2021160990);
		
		if(playerMovementTD[id][loading_screen_max_time] < playerMovementTD[id][loading_screen_act_time])
		{
			stopLoadingScreen(id);
		}
		if(playerMovementTD[id][loading_screen_count] >= 1 && playerMovementTD[id][loading_screen_count] <= 3 && playerMovementTD[id][loading_screen_count] != 0) 
		{
			 PlayerTextDrawShow(id, loading_PTD[id][playerMovementTD[id][loading_screen_count]]);
			 SetTimerEx("opacityTotalBox", 300, false, "dd", id, playerMovementTD[id][loading_screen_count]);
		}

	} else KillTimer(playerMovementTD[id][loading_screen_timer]);

}
forward opacityTotalBox(id, textdraw_memory);
public opacityTotalBox(id, textdraw_memory)
{
	PlayerTextDrawBoxColor(id, loading_PTD[id][textdraw_memory], 1852731060);
	PlayerTextDrawShow(id, loading_PTD[id][textdraw_memory]);
}

forward OnQuitLoadingScreen(id, dialogid);