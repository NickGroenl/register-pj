#define MAX_ITEMS_INV 31
#define MAX_ITEM_NAME 25
#define MAX_PAGES_INV MAX_ITEMS_INV / 8 + 1

#define ITEM_HAND_IZQ_INDEX MAX_ITEMS_INV-1
#define ITEM_HAND_DER_INDEX MAX_ITEMS_INV-2

#define ITEM_TYPE_NONE -1
#define ITEM_TYPE_WEAPON 1
#define ITEM_TYPE_FOOD 2
#define ITEM_TYPE_UTIL 3

enum items@typeenum
{
	item_model,
	item_name[MAX_ITEM_NAME],

	item_type,
	Float:item_weight,

	Float:item_root[4]
};
new itemsInventory[][items@typeenum] = {
	{19382, "Espacio_vacio", ITEM_TYPE_NONE, 0.0, {0.0, 0.0, 0.0, 0.0}}, // 0
	{19942, "Radio_comunicador", ITEM_TYPE_UTIL, 1.0, {0.0, 0.0, 0.0, 0.0}} // 1
};