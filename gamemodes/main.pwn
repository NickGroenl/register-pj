#include <a_samp>



#if defined MAX_PLAYERS
#undef MAX_PLAYERS
#define MAX_PLAYERS 10
#endif
// ========= HOOK REPLACAMENTS === 

	
// ==== NATIVE INCLUDES =======
#include <a_mysql>
#include <easy-mysql>
#include <Pawn.cmd>
#include <streamer>
#include <sscanf2>
#include <pCamera>
#include <timerFix>
#include <bg_bar>
#include <bcrypt>


	// DEFINES Notification ThePez
	#define MAX_TDN_IC 5
	#define TDN_POS_X_IC 4.666673
	#define TDN_POS_Y_IC 370.829650
	#define TDN_FONT_IC 1
	#define TDN_LETTER_SIZE_X_IC 0.250000
	#define TDN_LETTER_SIZE_Y_IC 1.000000
	#define TDN_SIZE_IC 134.333327
	#define TDN_COLOR_IC 0xFFFFFFFF
	#define TDN_COLOR_BOX_IC 0x1E1E1EFF
	#define TDN_PROPORTIONAL_IC 1
	#define TDN_DISTANCE_IC 5
	#define TDN_MODE_UP_IC
	#define TDN_TIME_IC 4000
	#define MAX_TDN_TEXT_IC 800
#include <notifications>



// ======= MODUL G ========
	// == Maps ==
	#include "maps/player_spawn.pwn"
	// == Global ==
	#include "global_def/var_control.pwn"
	#include "global_def/short_definitions.pwn"
	
	// == Player ==
	#include "player/date.pwn"
	#include "player/loading_screen.pwn"
	#include "player/player_ingress_td.pwn"
	#include "player/player_config_pj_td.pwn"
	// == Inventory ==
	#include "inventory/funcs_Inv.pwn"



main()
{
    
}


// ========================= CALLBACKS =========================
public OnGameModeInit()
{
	return 1;
}

public OnPlayerConnect(playerid)
{
	return 1;
}
public OnPlayerDisconnect(playerid, reason)
{
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	return 1;
}
public OnPlayerClickTextDraw(playerid, Text:clickedid)
{

}
public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
	return 1;
}
public OnPlayerText(playerid, text[])
{
	
	return 0;
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	return 1;
}

public OnQuitLoadingScreen(id)
{
	return 1;
}


public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	return 1;
}