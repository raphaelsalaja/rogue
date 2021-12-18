#pragma once
#include <string>
#include <vector>

#include "Player.h"
#include "ConsoleWindowManager.h"
#include "UserInterfaceManger.h"

class UserInterfaceManager;
class ConsoleRendering;
class Player;
class MapManager;
class ConsoleWindowManager;

using namespace std;

class InventoryManager
{
public:
	enum ITEM_TYPE
	{
		BLANK = 0,
		WEAPON = 1,
		ARMOUR = 2,
		POTION = 3,
		TRINKET = 4
	};

	vector<string> potion_inventory{
		"HEALTH",
		"SHIELD",
		"MAGIC"
	};
	char c_health = 'h';
	char c_shield = 's';
	char c_health_potion = 'H';
	char c_shield_potion = 'S';
	char c_magic_potion = 'M';

	unsigned int inventory_index = 1;

	bool inventory_open = false;

	bool InsertIntoInventoryManager(ITEM_TYPE item, char nextMove, Player& p, UserInterfaceManager& ui);
	void RemoveFromInventoryManager(ITEM_TYPE item, char nextMove, Player& p, UserInterfaceManager& ui);
	void InventoryStart();
	void InventoryControl(char action, ConsoleRendering& r, InventoryManager& i, ConsoleWindowManager& c, MapManager& m, UserInterfaceManager& ui);
	void UsePotionSelected(int potion, Player& p, ConsoleWindowManager& c, MapManager& m, InventoryManager& i, ConsoleRendering& r, UserInterfaceManager& ui);
	void DropItemSelected(int type, Player& p, ConsoleWindowManager& c, MapManager& m, InventoryManager& i, ConsoleRendering& r, UserInterfaceManager& ui);
	void InventoryInput(ConsoleWindowManager& c, MapManager& m, InventoryManager& i, ConsoleRendering& r, UserInterfaceManager& ui);
	void UpdateInventory(InventoryManager& i, UserInterfaceManager& ui);

	int GetInventoryHeadingLocation(string s, UserInterfaceManager& ui);

	string CurrentInventoryIndex(InventoryManager& i);
	string AddSpaceAndEnding(string input, UserInterfaceManager& ui);

	ITEM_TYPE WhatIsItem(char letter);
private:
	string utilities[3][2] = {
		{
			"HEALTH",
			"POTION"
		},
		{
			"MAGIC",
			"POTION"
		},
		{
			"SHIELD",
			"POTION"
		}
	};
	string weaponsAndArmour[3][2] = {
		{
			"DULL SWORD",
			"ONE"
		},
		{
			"DULL BRACERS",
			"ONE"
		},
		{
			"DULL HELMET",
			"ONE"
		}
	};
	string trinkets[2][2] = {
		{
			"GLOWING PENCHANT"
		},
		{
			"ENCHANTED PENCHANT"
		}
	};

	char potion_chars[3] = {
		'H',
		'S',
		'M'
	};
	char weapon_chars[3] = {
		'/',
		'O',
		'Q'
	};

	bool highlight = false;
	bool on_title_screen = true;
	vector<string> weapon_inventory;
	vector<string> armour_inventory;
	vector<string> trinket_inventory;
	vector<string> utility_inventory;

	string item_picked_up;
};
