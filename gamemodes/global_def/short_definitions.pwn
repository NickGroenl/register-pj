
getName(id)
{
	new string[MAX_PLAYER_NAME+1]; GetPlayerName(id, string, sizeof(string)); return string;
}
clearChat(id, lines)
{
	for(new i;i<lines;i++)
	{
		SendClientMessage(id, -1, "");
	}
}
IsNumeric(const string[])
{
    for (new i = 0, j = strlen(string); i < j; i++)
    {
        if (string[i] > '9' || string[i] < '0') return 0;
    }
    return 1;
}

getStateString(type)
{
	new string[15];
	switch(type)
	{
		case NACIONALITY_TYPE_USA: format(string, sizeof(string), "USA");
		case NACIONALITY_TYPE_ESPAÑA: format(string, sizeof(string), "ESP");
		case NACIONALITY_TYPE_ITALIA: format(string, sizeof(string), "ITA");
		case NACIONALITY_TYPE_FRANCIA: format(string, sizeof(string), "FRA");
		case NACIONALITY_TYPE_ARGENTINA: format(string, sizeof(string), "ARG");
		case NACIONALITY_TYPE_INGLATERRA: format(string, sizeof(string), "ENG");
		case NACIONALITY_TYPE_RUSIA: format(string, sizeof(string), "URS");
		case NACIONALITY_TYPE_CHILE: format(string, sizeof(string), "CHI");
		case NACIONALITY_TYPE_URUGUAY: format(string, sizeof(string), "URU");
		case NACIONALITY_TYPE_ALEMANIA: format(string, sizeof(string), "GER");
	}
	return string;
}
getFacesString(type)
{
	new string[15];
	switch(type)
	{
		case FACE_TYPE_TRABAJADOR: format(string, sizeof(string), "Trabajador");
 		case FACE_TYPE_ENERGETICO: format(string, sizeof(string), "Energetico");
 		case FACE_TYPE_INTELIGENCIA:  format(string, sizeof(string), "Inteligencia");
 		case FACE_TYPE_ATLETA: format(string, sizeof(string), "Atleta");
 		case FACE_TYPE_CULTURAL: format(string, sizeof(string), "Cultural");
	}
	return string;
}
