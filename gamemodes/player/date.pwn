enum player@info
{
	player_id,
	player_name[MAX_PLAYER_NAME+1],
	player_password[120],
	player_input_password[13],
	player_input_password_hash[120],
	player_alias[30],
	player_skin,

	player_cash,
	player_bankcash,

	player_coins,
	player_vip,


	player_level,
	player_exp,


	Float:player_pos[4],
	Float:player_life,
	player_virtualworld,

	player_age,
	player_gender,
	player_state,
	player_height,
	player_faces[3],


	Float:player_hungry,
	Float:player_thirst,
	Float:player_blister,
	Float:player_tired
};
new playerDate[MAX_PLAYERS][player@info];








enum movement@info
{
	ingress_scroll_timer,
	Float:ingress_scroll_X,
	Float:ingress_scroll_text,



	loading_screen_timer,
	loading_screen_max_time,
	loading_screen_act_time,
	loading_screen_count,


	ingress_step,
	bool:ingress_next,
	ingress_type,


	bool:config_step[6],
	config_aactor,
	config_skin_count
};
new playerMovementTD[MAX_PLAYERS][movement@info];

#include <YSI_Coding\y_hooks>


hook OnGameModeInit()
{
	mysql_memory  = mysql_connect(mysql_HOST, mysql_USER, mysql_PASS, mysql_DB);
	if(mysql_errno(mysql_memory) != 0)
    {
        print("=== No se pudo conectar con la base de datos ===");
        SendRconCommand("exit");
    }
    else 
    {
        print("=== Se establecio la conexion con la base de datos ====");
    }

	mysql_query(mysql_memory, "CREATE TABLE IF NOT EXISTS `accounts` (`player_id` int(5) NOT NULL AUTO_INCREMENT PRIMARY KEY, `player_name` varchar(25) NOT NULL, `player_password` varchar(120) NOT NULL, \
	`player_alias` varchar(25) NOT NULL, `player_skin` int(3) NOT NULL, `player_cash` int(10) NOT NULL, `player_bankcash` int(10) NOT NULL, `player_coins` int(4) NOT NULL, `player_vip` int(2) NOT NULL, \
	`player_level` int(2) NOT NULL, `player_exp` int(2) NOT NULL,`player_life` float(5) NOT NULL, `player_virtualworld` int(3) NOT NULL, `player_posX` float(5) NOT NULL, `player_posY` float(5) NOT NULL, `player_posZ` float(5) NOT NULL, `player_rot` float(3) NOT NULL, \
	`player_age` int(3) NOT NULL, `player_gender` int(2) NOT NULL, `player_state` int(2) NOT NULL, `player_height` int(3) NOT NULL, `player_faces1` int(2) NOT NULL, `player_faces2` int(2) NOT NULL, \
	`player_faces3` int(2) NOT NULL, `player_hungry` float(3) NOT NULL, `player_thirst` float(3) NOT NULL, `player_blister` float(3) NOT NULL, `player_tired` float(3) NOT NULL)");
}



hook OnPlayerDisconnect(playerid, reason)
{
	setCloseProfile(playerid);
}










loadPlayer(id)
{
	if(id != INVALID_PLAYER_ID)
	{
		if(SQL::RowExists("accounts", "player_id", playerDate[id][player_id]))
		{
			new mysql =  SQL::Open(SQL::READ, "accounts", "player_id", playerDate[id][player_id]);
			SQL::ReadString(mysql, "player_name", playerDate[id][player_name]);
			SQL::ReadString(mysql, "player_password", playerDate[id][player_password]);
			SQL::ReadString(mysql, "player_alias", playerDate[id][player_alias]);

			SQL::ReadInt(mysql, "player_skin", playerDate[id][player_skin]);
			SQL::ReadInt(mysql, "player_cash", playerDate[id][player_cash]);
			SQL::ReadInt(mysql, "player_bankcash", playerDate[id][player_bankcash]);
			SQL::ReadInt(mysql, "player_coins", playerDate[id][player_coins]);
			SQL::ReadInt(mysql, "player_vip", playerDate[id][player_vip]);
			SQL::ReadInt(mysql, "player_level", playerDate[id][player_level]);
			SQL::ReadInt(mysql, "player_exp", playerDate[id][player_exp]);


			SQL::ReadFloat(mysql, "player_posX", playerDate[id][player_pos][0]);
			SQL::ReadFloat(mysql, "player_posY", playerDate[id][player_pos][1]);
			SQL::ReadFloat(mysql, "player_posZ", playerDate[id][player_pos][2]);
			SQL::ReadFloat(mysql, "player_rot", playerDate[id][player_pos][3]);

			SQL::ReadFloat(mysql, "player_life", playerDate[id][player_life]);
			SQL::ReadInt(mysql, "player_virtualworld", playerDate[id][player_virtualworld]);


			SQL::ReadInt(mysql, "player_age", playerDate[id][player_age]);
			SQL::ReadInt(mysql, "player_gender", playerDate[id][player_gender]);
			SQL::ReadInt(mysql, "player_state", playerDate[id][player_state]);
			SQL::ReadInt(mysql, "player_height", playerDate[id][player_height]);
			SQL::ReadInt(mysql, "player_faces1", playerDate[id][player_faces][0]);
			SQL::ReadInt(mysql, "player_faces2", playerDate[id][player_faces][1]);
			SQL::ReadInt(mysql, "player_faces3", playerDate[id][player_faces][2]);
			if(playerDate[id][player_life] <= 1.0) playerDate[id][player_life] = 30.0;

			spawnPlayerTre(id, playerDate[id][player_skin] ,playerDate[id][player_pos][0], playerDate[id][player_pos][1], playerDate[id][player_pos][2], playerDate[id][player_pos][3], playerDate[id][player_virtualworld], playerDate[id][player_cash], playerDate[id][player_life]);
		}
	}
}






// ================ PLAYER CONTROL ====================

insertCharacter(id, const pass[], const nombre[], const alias[], edad, nacionalidad, sexo, rasgo1, altura, skin, Float:posX, Float:posY, Float:posZ, Float:root)
{
    new string[700];
	mysql_format(mysql_memory, string, sizeof(string), "INSERT INTO accounts(player_name, player_password, player_alias, player_age, player_state, player_gender, player_faces1, player_height, player_skin, player_posX, player_posY, player_posZ, player_rot, player_hungry, player_thirst, player_blister, player_tired) VALUES ('%e', '%e', '%e', '%d', '%d', '%d', '%d', '%d', '%d',   '%f', '%f', '%f', '%f', 100.0, 100.0, 100.0, 100.0)"
	,  nombre, pass, alias, edad, nacionalidad, sexo, rasgo1, altura, skin, posX, posY, posZ, root);
    mysql_pquery(mysql_memory, string, "retornIDinsert", "d", id);
}
forward retornIDinsert(id);
public retornIDinsert(id)
{
	playerDate[id][player_id] = cache_insert_id();
}

spawnPlayerTre(id, skin ,Float:x, Float:y, Float:z, Float:rotacion, vw, dinero, Float:vida)
{
	SetSpawnInfo(id, 0, skin, x, y, z, rotacion, 0, 0, 0, 0, 0, 0);
	SetPlayerHealth(id, vida);
	quitMoney(id, 0);
	addMoney(id, dinero);
	SetPlayerVirtualWorld(id, vw);
	SpawnPlayer(id);
}

getDataBasePassword(id)
{
	new string[200];
	mysql_format(mysql_memory, string, sizeof(string), "SELECT player_password, player_id FROM accounts WHERE player_name = '%e' LIMIT 1",getName(id));
   	mysql_pquery(mysql_memory, string, "getPasswordDataBase", "d", id);
}
forward getPasswordDataBase(id);
public getPasswordDataBase(id)
{
	cache_get_value_name(0, "player_password", playerDate[id][player_password]);
	cache_get_value_name_int(0, "player_id", playerDate[id][player_id]);
}
forward OnPasswordHashed(id);
public OnPasswordHashed(id)
{
	bcrypt_get_hash(playerDate[id][player_input_password_hash]);
}


setCloseProfile(id)
{

	// Player Data
	playerDate[id][player_id] = -1;
	format(playerDate[id][player_name], MAX_PLAYER_NAME+1, " ");
	format(playerDate[id][player_password], 13, " ");
	format(playerDate[id][player_alias], 30, "123");

	playerDate[id][player_cash] = 0;
	playerDate[id][player_bankcash] = 0;
	playerDate[id][player_coins] = 0;
	playerDate[id][player_vip] = 0;
	playerDate[id][player_level] = 0;
	playerDate[id][player_exp] = 0;


	playerDate[id][player_pos][0] = 0.0;
	playerDate[id][player_pos][1] = 0.0;
	playerDate[id][player_pos][2] = 0.0;
	playerDate[id][player_pos][3] = 0.0 ;
	playerDate[id][player_life] = 0.0;


	playerDate[id][player_age] = 0;
	playerDate[id][player_gender] = 0;
	playerDate[id][player_state] = 0;
	playerDate[id][player_height] = 0;
	playerDate[id][player_faces][0] = 0;
	playerDate[id][player_faces][1] = 0;
	playerDate[id][player_faces][2] = 0;


	// Movement Data

	playerMovementTD[id][ingress_scroll_timer] = -1;
	playerMovementTD[id][ingress_scroll_X] = 0.0;
	playerMovementTD[id][loading_screen_timer] = -1;
	playerMovementTD[id][loading_screen_max_time] = 0;
	playerMovementTD[id][loading_screen_act_time] = 0;
	playerMovementTD[id][loading_screen_count] = 0;
	playerMovementTD[id][ingress_step] = 0;
	playerMovementTD[id][ingress_next] = false;
	playerMovementTD[id][ingress_type] = 0;

	playerMovementTD[id][config_step][0] = false;
	playerMovementTD[id][config_step][1] = false;
	playerMovementTD[id][config_step][2] = false;
	playerMovementTD[id][config_step][3] = false;
	playerMovementTD[id][config_step][4] = false;
	playerMovementTD[id][config_step][5] = false;
	playerMovementTD[id][config_aactor] = -1;
	playerMovementTD[id][config_skin_count] = 0;
}





addMoney(playerid, cant)
{
	if(playerid != INVALID_PLAYER_ID)
	{
		playerDate[playerid][player_cash] += cant;
		GivePlayerMoney(playerid, playerDate[playerid][player_cash]);
	}

}
quitMoney(playerid, cant)
{
	if(playerid != INVALID_PLAYER_ID)
	{
		playerDate[playerid][player_cash] -= cant;
		GivePlayerMoney(playerid, playerDate[playerid][player_cash]);
	}

}