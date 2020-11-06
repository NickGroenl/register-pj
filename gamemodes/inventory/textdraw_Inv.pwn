#include <YSI_Coding\y_hooks>

new Text:inventory_GTD[19];
new PlayerText:inventory_PTD[MAX_PLAYERS][19];
hook OnGameModeInit()
{
	inventory_GTD[0] = TextDrawCreate(281.333282, 144.370330, "box");
	TextDrawLetterSize(inventory_GTD[0], 0.000000, 16.633350);
	TextDrawTextSize(inventory_GTD[0], 359.000000, 0.000000);
	TextDrawAlignment(inventory_GTD[0], 1);
	TextDrawColor(inventory_GTD[0], -1);
	TextDrawUseBox(inventory_GTD[0], 1);
	TextDrawBoxColor(inventory_GTD[0], 673720500);
	TextDrawSetShadow(inventory_GTD[0], 0);
	TextDrawSetOutline(inventory_GTD[0], 0);
	TextDrawBackgroundColor(inventory_GTD[0], 255);
	TextDrawFont(inventory_GTD[0], 1);
	TextDrawSetProportional(inventory_GTD[0], 1);
	TextDrawSetShadow(inventory_GTD[0], 0);

	inventory_GTD[1] = TextDrawCreate(318.333343, 142.711059, "Personaje");
	TextDrawLetterSize(inventory_GTD[1], 0.124999, 1.210073);
	TextDrawTextSize(inventory_GTD[1], 0.000000, 105.000000);
	TextDrawAlignment(inventory_GTD[1], 2);
	TextDrawColor(inventory_GTD[1], -1);
	TextDrawUseBox(inventory_GTD[1], 1);
	TextDrawBoxColor(inventory_GTD[1], -1268561921);
	TextDrawSetShadow(inventory_GTD[1], 0);
	TextDrawSetOutline(inventory_GTD[1], 0);
	TextDrawBackgroundColor(inventory_GTD[1], 255);
	TextDrawFont(inventory_GTD[1], 2);
	TextDrawSetProportional(inventory_GTD[1], 1);
	TextDrawSetShadow(inventory_GTD[1], 0);

	inventory_GTD[2] = TextDrawCreate(404.999847, 139.392562, "box");
	TextDrawLetterSize(inventory_GTD[2], 0.000000, 12.399994);
	TextDrawTextSize(inventory_GTD[2], 577.000000, 0.000000);
	TextDrawAlignment(inventory_GTD[2], 1);
	TextDrawColor(inventory_GTD[2], -1);
	TextDrawUseBox(inventory_GTD[2], 1);
	TextDrawBoxColor(inventory_GTD[2], 673720500);
	TextDrawSetShadow(inventory_GTD[2], 0);
	TextDrawSetOutline(inventory_GTD[2], 0);
	TextDrawBackgroundColor(inventory_GTD[2], 255);
	TextDrawFont(inventory_GTD[2], 1);
	TextDrawSetProportional(inventory_GTD[2], 1);
	TextDrawSetShadow(inventory_GTD[2], 0);

	inventory_GTD[3] = TextDrawCreate(491.000030, 129.437011, "Inventario");
	TextDrawLetterSize(inventory_GTD[3], 0.140665, 1.139554);
	TextDrawTextSize(inventory_GTD[3], 0.000000, 182.000000);
	TextDrawAlignment(inventory_GTD[3], 2);
	TextDrawColor(inventory_GTD[3], -1);
	TextDrawUseBox(inventory_GTD[3], 1);
	TextDrawBoxColor(inventory_GTD[3], -1268561921);
	TextDrawSetShadow(inventory_GTD[3], 0);
	TextDrawSetOutline(inventory_GTD[3], 0);
	TextDrawBackgroundColor(inventory_GTD[3], 255);
	TextDrawFont(inventory_GTD[3], 2);
	TextDrawSetProportional(inventory_GTD[3], 1);
	TextDrawSetShadow(inventory_GTD[3], 0);

	inventory_GTD[4] = TextDrawCreate(491.000030, 241.022201, "<");
	TextDrawLetterSize(inventory_GTD[4], 0.322333, 0.961184);
	TextDrawTextSize(inventory_GTD[4], 500.000000, 10.000000);
	TextDrawAlignment(inventory_GTD[4], 1);
	TextDrawColor(inventory_GTD[4], -1);
	TextDrawUseBox(inventory_GTD[4], 1);
	TextDrawBoxColor(inventory_GTD[4], 1197310463);
	TextDrawSetShadow(inventory_GTD[4], 0);
	TextDrawSetOutline(inventory_GTD[4], 0);
	TextDrawBackgroundColor(inventory_GTD[4], 255);
	TextDrawFont(inventory_GTD[4], 1);
	TextDrawSetProportional(inventory_GTD[4], 1);
	TextDrawSetShadow(inventory_GTD[4], 0);
	TextDrawSetSelectable(inventory_GTD[4], true);

	inventory_GTD[5] = TextDrawCreate(518.333435, 241.022186, ">");
	TextDrawLetterSize(inventory_GTD[5], 0.322333, 0.961184);
	TextDrawTextSize(inventory_GTD[5], 528.000000, 10.000000);
	TextDrawAlignment(inventory_GTD[5], 1);
	TextDrawColor(inventory_GTD[5], -1);
	TextDrawUseBox(inventory_GTD[5], 1);
	TextDrawBoxColor(inventory_GTD[5], 1197310463);
	TextDrawSetShadow(inventory_GTD[5], 0);
	TextDrawSetOutline(inventory_GTD[5], 0);
	TextDrawBackgroundColor(inventory_GTD[5], 255);
	TextDrawFont(inventory_GTD[5], 1);
	TextDrawSetProportional(inventory_GTD[5], 1);
	TextDrawSetShadow(inventory_GTD[5], 0);
	TextDrawSetSelectable(inventory_GTD[5], true);

	inventory_GTD[6] = TextDrawCreate(404.666564, 282.503662, "box");
	TextDrawLetterSize(inventory_GTD[6], 0.000000, 8.540017);
	TextDrawTextSize(inventory_GTD[6], 579.000000, 0.000000);
	TextDrawAlignment(inventory_GTD[6], 1);
	TextDrawColor(inventory_GTD[6], -1);
	TextDrawUseBox(inventory_GTD[6], 1);
	TextDrawBoxColor(inventory_GTD[6], 673720500);
	TextDrawSetShadow(inventory_GTD[6], 0);
	TextDrawSetOutline(inventory_GTD[6], 0);
	TextDrawBackgroundColor(inventory_GTD[6], 255);
	TextDrawFont(inventory_GTD[6], 1);
	TextDrawSetProportional(inventory_GTD[6], 1);
	TextDrawSetShadow(inventory_GTD[6], 0);

	inventory_GTD[7] = TextDrawCreate(492.666809, 273.377777, "Necesidades");
	TextDrawLetterSize(inventory_GTD[7], 0.124999, 1.210073);
	TextDrawTextSize(inventory_GTD[7], 0.000000, 186.000000);
	TextDrawAlignment(inventory_GTD[7], 2);
	TextDrawColor(inventory_GTD[7], -1);
	TextDrawUseBox(inventory_GTD[7], 1);
	TextDrawBoxColor(inventory_GTD[7], -1268561921);
	TextDrawSetShadow(inventory_GTD[7], 0);
	TextDrawSetOutline(inventory_GTD[7], 0);
	TextDrawBackgroundColor(inventory_GTD[7], 255);
	TextDrawFont(inventory_GTD[7], 2);
	TextDrawSetProportional(inventory_GTD[7], 1);
	TextDrawSetShadow(inventory_GTD[7], 0);

	inventory_GTD[8] = TextDrawCreate(408.666625, 291.629638, "box");
	TextDrawLetterSize(inventory_GTD[8], 0.000000, 1.200001);
	TextDrawTextSize(inventory_GTD[8], 576.000000, 0.000000);
	TextDrawAlignment(inventory_GTD[8], 1);
	TextDrawColor(inventory_GTD[8], -1);
	TextDrawUseBox(inventory_GTD[8], 1);
	TextDrawBoxColor(inventory_GTD[8], 505290470 /*1232217855*/);
	TextDrawSetShadow(inventory_GTD[8], 0);
	TextDrawSetOutline(inventory_GTD[8], 0);
	TextDrawBackgroundColor(inventory_GTD[8], 255);
	TextDrawFont(inventory_GTD[8], 1);
	TextDrawSetProportional(inventory_GTD[8], 1);
	TextDrawSetShadow(inventory_GTD[8], 0);

	inventory_GTD[9] = TextDrawCreate(408.666625, 308.222259, "box");
	TextDrawLetterSize(inventory_GTD[9], 0.000000, 1.200001);
	TextDrawTextSize(inventory_GTD[9], 576.000000, 0.000000);
	TextDrawAlignment(inventory_GTD[9], 1);
	TextDrawColor(inventory_GTD[9], -1);
	TextDrawUseBox(inventory_GTD[9], 1);
	TextDrawBoxColor(inventory_GTD[9],505290470 /*1215496191*/);
	TextDrawSetShadow(inventory_GTD[9], 0);
	TextDrawSetOutline(inventory_GTD[9], 0);
	TextDrawBackgroundColor(inventory_GTD[9], 255);
	TextDrawFont(inventory_GTD[9], 1);
	TextDrawSetProportional(inventory_GTD[9], 1);
	TextDrawSetShadow(inventory_GTD[9], 0);

	inventory_GTD[10] = TextDrawCreate(408.666656, 324.814880, "box");
	TextDrawLetterSize(inventory_GTD[10], 0.000000, 1.200001);
	TextDrawTextSize(inventory_GTD[10], 576.000000, 0.000000);
	TextDrawAlignment(inventory_GTD[10], 1);
	TextDrawColor(inventory_GTD[10], -1);
	TextDrawUseBox(inventory_GTD[10], 1);
	TextDrawBoxColor(inventory_GTD[10], 505290470 /*-2139094785*/);
	TextDrawSetShadow(inventory_GTD[10], 0);
	TextDrawSetOutline(inventory_GTD[10], 0);
	TextDrawBackgroundColor(inventory_GTD[10], 255);
	TextDrawFont(inventory_GTD[10], 1);
	TextDrawSetProportional(inventory_GTD[10], 1);
	TextDrawSetShadow(inventory_GTD[10], 0);

	inventory_GTD[11] = TextDrawCreate(408.666687, 341.407440, "box");
	TextDrawLetterSize(inventory_GTD[11], 0.000000, 1.200001);
	TextDrawTextSize(inventory_GTD[11], 576.000000, 0.000000);
	TextDrawAlignment(inventory_GTD[11], 1);
	TextDrawColor(inventory_GTD[11], -1);
	TextDrawUseBox(inventory_GTD[11], 1);
	TextDrawBoxColor(inventory_GTD[11], 505290470 /*1009669119*/);
	TextDrawSetShadow(inventory_GTD[11], 0);
	TextDrawSetOutline(inventory_GTD[11], 0);
	TextDrawBackgroundColor(inventory_GTD[11], 255);
	TextDrawFont(inventory_GTD[11], 1);
	TextDrawSetProportional(inventory_GTD[11], 1);
	TextDrawSetShadow(inventory_GTD[11], 0);




	inventory_GTD[12] = TextDrawCreate(232.333343, 245.170410, "Mano_izq");
	TextDrawLetterSize(inventory_GTD[12], 0.124665, 1.006814);
	TextDrawAlignment(inventory_GTD[12], 1);
	TextDrawColor(inventory_GTD[12], -1);
	TextDrawSetShadow(inventory_GTD[12], 0);
	TextDrawSetOutline(inventory_GTD[12], 0);
	TextDrawBackgroundColor(inventory_GTD[12], 255);
	TextDrawFont(inventory_GTD[12], 1);
	TextDrawSetProportional(inventory_GTD[12], 1);
	TextDrawSetShadow(inventory_GTD[12], 0);

	inventory_GTD[13] = TextDrawCreate(231.000015, 195.807434, "Mano_der");
	TextDrawLetterSize(inventory_GTD[13], 0.124665, 1.006814);
	TextDrawAlignment(inventory_GTD[13], 1);
	TextDrawColor(inventory_GTD[13], -1);
	TextDrawSetShadow(inventory_GTD[13], 0);
	TextDrawSetOutline(inventory_GTD[13], 0);
	TextDrawBackgroundColor(inventory_GTD[13], 255);
	TextDrawFont(inventory_GTD[13], 1);
	TextDrawSetProportional(inventory_GTD[13], 1);
	TextDrawSetShadow(inventory_GTD[13], 0);

	inventory_GTD[14] = TextDrawCreate(222.000030, 199.125793, "(");
	TextDrawLetterSize(inventory_GTD[14], 0.485998, 1.840592);
	TextDrawTextSize(inventory_GTD[14], 228.000000, 10.000000);
	TextDrawAlignment(inventory_GTD[14], 1);
	TextDrawColor(inventory_GTD[14], -1);
	TextDrawUseBox(inventory_GTD[14], 1);
	TextDrawBoxColor(inventory_GTD[14], 1197310463);
	TextDrawSetShadow(inventory_GTD[14], 0);
	TextDrawSetOutline(inventory_GTD[14], 0);
	TextDrawBackgroundColor(inventory_GTD[14], 255);
	TextDrawFont(inventory_GTD[14], 1);
	TextDrawSetProportional(inventory_GTD[14], 1);
	TextDrawSetShadow(inventory_GTD[14], 0);
	TextDrawSetSelectable(inventory_GTD[14], true);

	inventory_GTD[15] = TextDrawCreate(583.333312, 144.785095, "box");
	TextDrawLetterSize(inventory_GTD[15], 0.000000, 7.500017);
	TextDrawTextSize(inventory_GTD[15], 635.000000, 0.000000);
	TextDrawAlignment(inventory_GTD[15], 1);
	TextDrawColor(inventory_GTD[15], -1);
	TextDrawUseBox(inventory_GTD[15], 1);
	TextDrawBoxColor(inventory_GTD[15], 673720500);
	TextDrawSetShadow(inventory_GTD[15], 0);
	TextDrawSetOutline(inventory_GTD[15], 0);
	TextDrawBackgroundColor(inventory_GTD[15], 255);
	TextDrawFont(inventory_GTD[15], 1);
	TextDrawSetProportional(inventory_GTD[15], 1);
	TextDrawSetShadow(inventory_GTD[15], 0);

	inventory_GTD[16] = TextDrawCreate(584.666687, 149.348144, "Guardar");
	TextDrawLetterSize(inventory_GTD[16], 0.128999, 1.114667);
	TextDrawTextSize(inventory_GTD[16], 634.000000, 10.000000);
	TextDrawAlignment(inventory_GTD[16], 1);
	TextDrawColor(inventory_GTD[16], -1);
	TextDrawUseBox(inventory_GTD[16], 1);
	TextDrawBoxColor(inventory_GTD[16], 505290495);
	TextDrawSetShadow(inventory_GTD[16], 0);
	TextDrawSetOutline(inventory_GTD[16], 0);
	TextDrawBackgroundColor(inventory_GTD[16], 255);
	TextDrawFont(inventory_GTD[16], 2);
	TextDrawSetProportional(inventory_GTD[16], 1);
	TextDrawSetShadow(inventory_GTD[16], 0);
	TextDrawSetSelectable(inventory_GTD[16], true);

	inventory_GTD[17] = TextDrawCreate(584.666809, 163.037063, "Tirar");
	TextDrawLetterSize(inventory_GTD[17], 0.128999, 1.114667);
	TextDrawTextSize(inventory_GTD[17], 634.000000, 10.000000);
	TextDrawAlignment(inventory_GTD[17], 1);
	TextDrawColor(inventory_GTD[17], -1);
	TextDrawUseBox(inventory_GTD[17], 1);
	TextDrawBoxColor(inventory_GTD[17], 505290495);
	TextDrawSetShadow(inventory_GTD[17], 0);
	TextDrawSetOutline(inventory_GTD[17], 0);
	TextDrawBackgroundColor(inventory_GTD[17], 255);
	TextDrawFont(inventory_GTD[17], 2);
	TextDrawSetProportional(inventory_GTD[17], 1);
	TextDrawSetShadow(inventory_GTD[17], 0);
	TextDrawSetSelectable(inventory_GTD[17], true);

	inventory_GTD[18] = TextDrawCreate(584.666870, 176.726013, "Usar");
	TextDrawLetterSize(inventory_GTD[18], 0.128999, 1.114667);
	TextDrawTextSize(inventory_GTD[18], 634.000000, 10.000000);
	TextDrawAlignment(inventory_GTD[18], 1);
	TextDrawColor(inventory_GTD[18], -1);
	TextDrawUseBox(inventory_GTD[18], 1);
	TextDrawBoxColor(inventory_GTD[18], 505290495);
	TextDrawSetShadow(inventory_GTD[18], 0);
	TextDrawSetOutline(inventory_GTD[18], 0);
	TextDrawBackgroundColor(inventory_GTD[18], 255);
	TextDrawFont(inventory_GTD[18], 2);
	TextDrawSetProportional(inventory_GTD[18], 1);
	TextDrawSetShadow(inventory_GTD[18], 0);
	TextDrawSetSelectable(inventory_GTD[18], true);
}

hook OnPlayerConnect(playerid)
{
	inventory_PTD[playerid][0] = CreatePlayerTextDraw(playerid, 286.333404, 154.170410, "");
	PlayerTextDrawLetterSize(playerid, inventory_PTD[playerid][0], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, inventory_PTD[playerid][0], 67.000000, 129.000000);
	PlayerTextDrawAlignment(playerid, inventory_PTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, inventory_PTD[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, inventory_PTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, inventory_PTD[playerid][0], 336860415);
	PlayerTextDrawFont(playerid, inventory_PTD[playerid][0], 5);
	PlayerTextDrawSetProportional(playerid, inventory_PTD[playerid][0], 0);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][0], 0);
	PlayerTextDrawSetPreviewModel(playerid, inventory_PTD[playerid][0], 0);
	PlayerTextDrawSetPreviewRot(playerid, inventory_PTD[playerid][0], 0.000000, 0.000000, 30.000000, 1.000000);

	inventory_PTD[playerid][1] = CreatePlayerTextDraw(playerid, 319.333374, 283.333343, "Thomasssss_Shelby");
	PlayerTextDrawLetterSize(playerid, inventory_PTD[playerid][1], 0.206665, 1.093925);
	PlayerTextDrawTextSize(playerid, inventory_PTD[playerid][1], 0.000000, 81.000000);
	PlayerTextDrawAlignment(playerid, inventory_PTD[playerid][1], 2);
	PlayerTextDrawColor(playerid, inventory_PTD[playerid][1], -1);
	PlayerTextDrawUseBox(playerid, inventory_PTD[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, inventory_PTD[playerid][1], -2007137818);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, inventory_PTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, inventory_PTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, inventory_PTD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, inventory_PTD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][1], 0);

	inventory_PTD[playerid][2] = CreatePlayerTextDraw(playerid, 409.000061, 142.140731, "");
	PlayerTextDrawLetterSize(playerid, inventory_PTD[playerid][2], 0.000000, 10.000000);
	PlayerTextDrawTextSize(playerid, inventory_PTD[playerid][2], 42.000000, 49.000000);
	PlayerTextDrawAlignment(playerid, inventory_PTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, inventory_PTD[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, inventory_PTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, inventory_PTD[playerid][2], 505290470);
	PlayerTextDrawFont(playerid, inventory_PTD[playerid][2], 5);
	PlayerTextDrawSetProportional(playerid, inventory_PTD[playerid][2], 0);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][2], 0);
	PlayerTextDrawSetSelectable(playerid, inventory_PTD[playerid][2], true);
	PlayerTextDrawSetPreviewModel(playerid, inventory_PTD[playerid][2], 0);
	PlayerTextDrawSetPreviewRot(playerid, inventory_PTD[playerid][2], 0.000000, 0.000000, 0.000000, 1.000000);

	inventory_PTD[playerid][3] = CreatePlayerTextDraw(playerid, 449.666748, 142.140747, "");
	PlayerTextDrawLetterSize(playerid, inventory_PTD[playerid][3], 0.000000, 10.000000);
	PlayerTextDrawTextSize(playerid, inventory_PTD[playerid][3], 42.000000, 49.000000);
	PlayerTextDrawAlignment(playerid, inventory_PTD[playerid][3], 1);
	PlayerTextDrawColor(playerid, inventory_PTD[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, inventory_PTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, inventory_PTD[playerid][3], 505290470);
	PlayerTextDrawFont(playerid, inventory_PTD[playerid][3], 5);
	PlayerTextDrawSetProportional(playerid, inventory_PTD[playerid][3], 0);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][3], 0);
	PlayerTextDrawSetSelectable(playerid, inventory_PTD[playerid][3], true);
	PlayerTextDrawSetPreviewModel(playerid, inventory_PTD[playerid][3], 0);
	PlayerTextDrawSetPreviewRot(playerid, inventory_PTD[playerid][3], 0.000000, 0.000000, 0.000000, 1.000000);

	inventory_PTD[playerid][4] = CreatePlayerTextDraw(playerid, 490.333343, 142.140747, "");
	PlayerTextDrawLetterSize(playerid, inventory_PTD[playerid][4], 0.000000, 10.000000);
	PlayerTextDrawTextSize(playerid, inventory_PTD[playerid][4], 42.000000, 49.000000);
	PlayerTextDrawAlignment(playerid, inventory_PTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, inventory_PTD[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, inventory_PTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, inventory_PTD[playerid][4], 505290470);
	PlayerTextDrawFont(playerid, inventory_PTD[playerid][4], 5);
	PlayerTextDrawSetProportional(playerid, inventory_PTD[playerid][4], 0);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][4], 0);
	PlayerTextDrawSetSelectable(playerid, inventory_PTD[playerid][4], true);
	PlayerTextDrawSetPreviewModel(playerid, inventory_PTD[playerid][4], 0);
	PlayerTextDrawSetPreviewRot(playerid, inventory_PTD[playerid][4], 0.000000, 0.000000, 0.000000, 1.000000);

	inventory_PTD[playerid][5] = CreatePlayerTextDraw(playerid, 531.333312, 142.140747, "");
	PlayerTextDrawLetterSize(playerid, inventory_PTD[playerid][5], 0.000000, 10.000000);
	PlayerTextDrawTextSize(playerid, inventory_PTD[playerid][5], 42.000000, 49.000000);
	PlayerTextDrawAlignment(playerid, inventory_PTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, inventory_PTD[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, inventory_PTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, inventory_PTD[playerid][5], 505290470);
	PlayerTextDrawFont(playerid, inventory_PTD[playerid][5], 5);
	PlayerTextDrawSetProportional(playerid, inventory_PTD[playerid][5], 0);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][5], 0);
	PlayerTextDrawSetSelectable(playerid, inventory_PTD[playerid][5], true);
	PlayerTextDrawSetPreviewModel(playerid, inventory_PTD[playerid][5], 0);
	PlayerTextDrawSetPreviewRot(playerid, inventory_PTD[playerid][5], 0.000000, 0.000000, 0.000000, 1.000000);

	inventory_PTD[playerid][6] = CreatePlayerTextDraw(playerid, 408.999877, 189.844512, "");
	PlayerTextDrawLetterSize(playerid, inventory_PTD[playerid][6], 0.000000, 10.000000);
	PlayerTextDrawTextSize(playerid, inventory_PTD[playerid][6], 42.000000, 49.000000);
	PlayerTextDrawAlignment(playerid, inventory_PTD[playerid][6], 1);
	PlayerTextDrawColor(playerid, inventory_PTD[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, inventory_PTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, inventory_PTD[playerid][6], 505290470);
	PlayerTextDrawFont(playerid, inventory_PTD[playerid][6], 5);
	PlayerTextDrawSetProportional(playerid, inventory_PTD[playerid][6], 0);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][6], 0);
	PlayerTextDrawSetSelectable(playerid, inventory_PTD[playerid][6], true);
	PlayerTextDrawSetPreviewModel(playerid, inventory_PTD[playerid][6], 0);
	PlayerTextDrawSetPreviewRot(playerid, inventory_PTD[playerid][6], 0.000000, 0.000000, 0.000000, 1.000000);

	inventory_PTD[playerid][7] = CreatePlayerTextDraw(playerid, 449.666473, 189.844482, "");
	PlayerTextDrawLetterSize(playerid, inventory_PTD[playerid][7], 0.000000, 10.000000);
	PlayerTextDrawTextSize(playerid, inventory_PTD[playerid][7], 42.000000, 49.000000);
	PlayerTextDrawAlignment(playerid, inventory_PTD[playerid][7], 1);
	PlayerTextDrawColor(playerid, inventory_PTD[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, inventory_PTD[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, inventory_PTD[playerid][7], 505290470);
	PlayerTextDrawFont(playerid, inventory_PTD[playerid][7], 5);
	PlayerTextDrawSetProportional(playerid, inventory_PTD[playerid][7], 0);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][7], 0);
	PlayerTextDrawSetSelectable(playerid, inventory_PTD[playerid][7], true);
	PlayerTextDrawSetPreviewModel(playerid, inventory_PTD[playerid][7], 0);
	PlayerTextDrawSetPreviewRot(playerid, inventory_PTD[playerid][7], 0.000000, 0.000000, 0.000000, 1.000000);

	inventory_PTD[playerid][8] = CreatePlayerTextDraw(playerid, 489.999755, 189.844451, "");
	PlayerTextDrawLetterSize(playerid, inventory_PTD[playerid][8], 0.000000, 10.000000);
	PlayerTextDrawTextSize(playerid, inventory_PTD[playerid][8], 42.000000, 49.000000);
	PlayerTextDrawAlignment(playerid, inventory_PTD[playerid][8], 1);
	PlayerTextDrawColor(playerid, inventory_PTD[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, inventory_PTD[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, inventory_PTD[playerid][8], 505290470);
	PlayerTextDrawFont(playerid, inventory_PTD[playerid][8], 5);
	PlayerTextDrawSetProportional(playerid, inventory_PTD[playerid][8], 0);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][8], 0);
	PlayerTextDrawSetSelectable(playerid, inventory_PTD[playerid][8], true);
	PlayerTextDrawSetPreviewModel(playerid, inventory_PTD[playerid][8], 0);
	PlayerTextDrawSetPreviewRot(playerid, inventory_PTD[playerid][8], 0.000000, 0.000000, 0.000000, 1.000000);

	inventory_PTD[playerid][9] = CreatePlayerTextDraw(playerid, 530.933166, 189.512649, "");
	PlayerTextDrawLetterSize(playerid, inventory_PTD[playerid][9], 0.000000, 10.000000);
	PlayerTextDrawTextSize(playerid, inventory_PTD[playerid][9], 42.000000, 49.000000);
	PlayerTextDrawAlignment(playerid, inventory_PTD[playerid][9], 1);
	PlayerTextDrawColor(playerid, inventory_PTD[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, inventory_PTD[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, inventory_PTD[playerid][9], 505290470);
	PlayerTextDrawFont(playerid, inventory_PTD[playerid][9], 5);
	PlayerTextDrawSetProportional(playerid, inventory_PTD[playerid][9], 0);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][9], 0);
	PlayerTextDrawSetSelectable(playerid, inventory_PTD[playerid][9], true);
	PlayerTextDrawSetPreviewModel(playerid, inventory_PTD[playerid][9], 0);
	PlayerTextDrawSetPreviewRot(playerid, inventory_PTD[playerid][9], 0.000000, 0.000000, 0.000000, 1.000000);

	inventory_PTD[playerid][10] = CreatePlayerTextDraw(playerid, 409.333343, 240.192733, "Peso_total:_0.0/10.5_KG");
	PlayerTextDrawLetterSize(playerid, inventory_PTD[playerid][10], 0.165333, 1.052443);
	PlayerTextDrawAlignment(playerid, inventory_PTD[playerid][10], 1);
	PlayerTextDrawColor(playerid, inventory_PTD[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, inventory_PTD[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, inventory_PTD[playerid][10], 255);
	PlayerTextDrawFont(playerid, inventory_PTD[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, inventory_PTD[playerid][10], 1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][10], 0);

	inventory_PTD[playerid][11] = CreatePlayerTextDraw(playerid, 504.000030, 238.118499, "1/4");
	PlayerTextDrawLetterSize(playerid, inventory_PTD[playerid][11], 0.159333, 1.492148);
	PlayerTextDrawAlignment(playerid, inventory_PTD[playerid][11], 1);
	PlayerTextDrawColor(playerid, inventory_PTD[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, inventory_PTD[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, inventory_PTD[playerid][11], 255);
	PlayerTextDrawFont(playerid, inventory_PTD[playerid][11], 2);
	PlayerTextDrawSetProportional(playerid, inventory_PTD[playerid][11], 1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][11], 0);

	inventory_PTD[playerid][12] = CreatePlayerTextDraw(playerid, 464.333374, 291.629760, "Hambre:_75%");
	PlayerTextDrawLetterSize(playerid, inventory_PTD[playerid][12], 0.237999, 1.023406);
	PlayerTextDrawAlignment(playerid, inventory_PTD[playerid][12], 1);
	PlayerTextDrawColor(playerid, inventory_PTD[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, inventory_PTD[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, inventory_PTD[playerid][12], 255);
	PlayerTextDrawFont(playerid, inventory_PTD[playerid][12], 1);
	PlayerTextDrawSetProportional(playerid, inventory_PTD[playerid][12], 1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][12], 0);

	inventory_PTD[playerid][13] = CreatePlayerTextDraw(playerid, 473.333404, 309.881622, "Sed:_75%");
	PlayerTextDrawLetterSize(playerid, inventory_PTD[playerid][13], 0.237999, 1.023406);
	PlayerTextDrawAlignment(playerid, inventory_PTD[playerid][13], 1);
	PlayerTextDrawColor(playerid, inventory_PTD[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, inventory_PTD[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, inventory_PTD[playerid][13], 255);
	PlayerTextDrawFont(playerid, inventory_PTD[playerid][13], 1);
	PlayerTextDrawSetProportional(playerid, inventory_PTD[playerid][13], 1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][13], 0);

	inventory_PTD[playerid][14] = CreatePlayerTextDraw(playerid, 468.000091, 326.474273, "Vejiga:_75%");
	PlayerTextDrawLetterSize(playerid, inventory_PTD[playerid][14], 0.237999, 1.023406);
	PlayerTextDrawAlignment(playerid, inventory_PTD[playerid][14], 1);
	PlayerTextDrawColor(playerid, inventory_PTD[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, inventory_PTD[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, inventory_PTD[playerid][14], 255);
	PlayerTextDrawFont(playerid, inventory_PTD[playerid][14], 1);
	PlayerTextDrawSetProportional(playerid, inventory_PTD[playerid][14], 1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][14], 0);

	inventory_PTD[playerid][15] = CreatePlayerTextDraw(playerid, 463.000030, 342.652038, "Cansancio:_75%");
	PlayerTextDrawLetterSize(playerid, inventory_PTD[playerid][15], 0.237999, 1.023406);
	PlayerTextDrawAlignment(playerid, inventory_PTD[playerid][15], 1);
	PlayerTextDrawColor(playerid, inventory_PTD[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, inventory_PTD[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, inventory_PTD[playerid][15], 255);
	PlayerTextDrawFont(playerid, inventory_PTD[playerid][15], 1);
	PlayerTextDrawSetProportional(playerid, inventory_PTD[playerid][15], 1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][15], 0);

	inventory_PTD[playerid][16] = CreatePlayerTextDraw(playerid, 230.999725, 156.244476, "");
	PlayerTextDrawLetterSize(playerid, inventory_PTD[playerid][16], 0.000000, 10.000000);
	PlayerTextDrawTextSize(playerid, inventory_PTD[playerid][16], 47.000000, 49.000000);
	PlayerTextDrawAlignment(playerid, inventory_PTD[playerid][16], 1);
	PlayerTextDrawColor(playerid, inventory_PTD[playerid][16], -1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, inventory_PTD[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, inventory_PTD[playerid][16], 673720500);
	PlayerTextDrawFont(playerid, inventory_PTD[playerid][16], 5);
	PlayerTextDrawSetProportional(playerid, inventory_PTD[playerid][16], 0);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][16], 0);
	PlayerTextDrawSetSelectable(playerid, inventory_PTD[playerid][16], true);
	PlayerTextDrawSetPreviewModel(playerid, inventory_PTD[playerid][16], 0);
	PlayerTextDrawSetPreviewRot(playerid, inventory_PTD[playerid][16], 0.000000, 0.000000, 0.000000, 1.000000);

	inventory_PTD[playerid][17] = CreatePlayerTextDraw(playerid, 230.999786, 205.607482, "");
	PlayerTextDrawLetterSize(playerid, inventory_PTD[playerid][17], 0.000000, 10.000000);
	PlayerTextDrawTextSize(playerid, inventory_PTD[playerid][17], 47.000000, 49.000000);
	PlayerTextDrawAlignment(playerid, inventory_PTD[playerid][17], 1);
	PlayerTextDrawColor(playerid, inventory_PTD[playerid][17], -1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, inventory_PTD[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, inventory_PTD[playerid][17], 673720500);
	PlayerTextDrawFont(playerid, inventory_PTD[playerid][17], 5);
	PlayerTextDrawSetProportional(playerid, inventory_PTD[playerid][17], 0);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][17], 0);
	PlayerTextDrawSetSelectable(playerid, inventory_PTD[playerid][17], true);
	PlayerTextDrawSetPreviewModel(playerid, inventory_PTD[playerid][17], 0);
	PlayerTextDrawSetPreviewRot(playerid, inventory_PTD[playerid][17], 0.000000, 0.000000, 0.000000, 1.000000);

	inventory_PTD[playerid][18] = CreatePlayerTextDraw(playerid, 584.666564, 192.488861, "Celular   Peso:5.0KG");
	PlayerTextDrawLetterSize(playerid, inventory_PTD[playerid][18], 0.158666, 0.969481);
	PlayerTextDrawTextSize(playerid, inventory_PTD[playerid][18], 633.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, inventory_PTD[playerid][18], 1);
	PlayerTextDrawColor(playerid, inventory_PTD[playerid][18], -1);
	PlayerTextDrawUseBox(playerid, inventory_PTD[playerid][18], 1);
	PlayerTextDrawBoxColor(playerid, inventory_PTD[playerid][18], 1449420031);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, inventory_PTD[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, inventory_PTD[playerid][18], 255);
	PlayerTextDrawFont(playerid, inventory_PTD[playerid][18], 1);
	PlayerTextDrawSetProportional(playerid, inventory_PTD[playerid][18], 1);
	PlayerTextDrawSetShadow(playerid, inventory_PTD[playerid][18], 0);


	crearBarra(playerid, bar_hungry, 408.666625, 291.629638, 576.000000, 1.200001, 1232217855, 100, 0);
	crearBarra(playerid, bar_thirst, 408.666625, 308.222259, 576.000000, 1.200001, 1215496191, 100, 0);
	crearBarra(playerid, bar_blister, 408.666656, 324.814880, 576.000000, 1.200001, -2139094785, 100, 0);
	crearBarra(playerid, bar_tired, 408.666687, 341.407440, 576.000000, 1.200001, 1009669119, 100, 0);



}

#include "inventory/solution_textdraw.pwn"