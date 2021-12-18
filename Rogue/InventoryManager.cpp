#include "InventoryManager.h"
#include "ConsoleRendering.h"
#include "MapManager.h"
#include <iostream>

void InventoryManager::InventoryStart()
{
	for (int i = 0; i < 3; i++)
	{
		//inventory.push_back(i);
	}
}

void InventoryManager::InventoryControl(char action, ConsoleRendering& r, InventoryManager& i, ConsoleWindowManager& c, MapManager& m, UserInterfaceManager& ui)
{
	cout << endl;
	int inventory_temp = inventory_index;
	switch (action)
	{
	case 'o': inventory_open = true;
		break;

	case 'c': inventory_open = false;
		break;

	case 'n': inventory_temp++;
		if (inventory_temp > 3)
		{
			inventory_index = 1;
		}
		else
		{
			inventory_index = inventory_index + 1;
		}

		break;

	case 'b': inventory_temp--;
		if (inventory_temp < 1)
		{
			inventory_index = 3;
		}
		else
		{
			inventory_index--;
		}
		r.Render_Inventory(c, m, i, ui);
		break;
	}
}

void InventoryManager::UsePotionSelected(int potion, Player& p, ConsoleWindowManager& c, MapManager& m, InventoryManager& i, ConsoleRendering& r, UserInterfaceManager& ui)
{
	potion = inventory_index;
	switch (potion)
	{
	case 1: if (p.health_potions != 0 && p.health != p.max_stats)
		{
			p.health++;
			p.health_potions--;
			i.RemoveFromInventoryManager(POTION, c_health_potion, p, ui);
		}
		break;
	case 2: if (p.shield_potions != 0 && p.shield != p.max_stats)
		{
			p.shield++;
			p.shield_potions--;
			i.RemoveFromInventoryManager(POTION, c_shield_potion, p, ui);
		}
		break;
	case 3: if (p.magic_potions != 0 && p.magic != p.max_stats)
		{
			p.magic++;
			p.magic_potions--;
			i.RemoveFromInventoryManager(POTION, c_magic_potion, p, ui);
		}
		break;
	}
	c.BlankScreen();

	UpdateInventory(i, ui);
	r.Render_Inventory(c, m, i, ui);
}

void InventoryManager::DropItemSelected(int type, Player& p, ConsoleWindowManager& c, MapManager& m, InventoryManager& i, ConsoleRendering& r, UserInterfaceManager& ui)
{
	int x = p.player_position_x + 1;
	int y = p.player_position_y;
	type = inventory_index;
	switch (type)
	{
	case 1: if (p.health_potions > 0)
		{
			if (m.IsEmpty(x, y))
			{
				m.new_map[y * m.width + x] = c_health_potion;
			}
			else
			{
				m.new_map[y * m.width + x] = c_health_potion;
			}
			p.health_potions--;
			i.RemoveFromInventoryManager(POTION, c_health_potion, p, ui);
		}
		break;
	case 2: if (p.shield_potions > 0)
		{
			if (m.IsEmpty(x, y))
			{
				m.new_map[y * m.width + x] = c_shield_potion;
			}
			else
			{
				m.new_map[y * m.width + x] = c_shield_potion;
			}
			p.shield_potions--;
			i.RemoveFromInventoryManager(POTION, c_shield_potion, p, ui);
		}
		break;
	case 3: if (p.magic_potions > 0)
		{
			if (m.IsEmpty(x, y))
			{
				m.new_map[y * m.width + x] = c_magic_potion;
			}
			else
			{
				m.new_map[y * m.width + x] = c_magic_potion;
			}
			p.magic_potions--;
			i.RemoveFromInventoryManager(POTION, c_magic_potion, p, ui);
		}
		break;
	default: break;
	}
	c.BlankScreen();
	UpdateInventory(i, ui);
	r.Render_Inventory(c, m, i, ui);
}

void InventoryManager::InventoryInput(ConsoleWindowManager& c, MapManager& m, InventoryManager& i, ConsoleRendering& r, UserInterfaceManager& ui)
{
	if (GetKeyState('T') & 0x8000)
	{
		if (inventory_open == false)
		{
			inventory_open = true;
			r.Render_Inventory(c, m, i, ui);
			Sleep(60);
		}
		else
		{
			inventory_open = false;
			r.Render_Inventory(c, m, i, ui);
			Sleep(60);
		}
	}
}

InventoryManager::ITEM_TYPE InventoryManager::WhatIsItem(char letter)
{
	for (size_t i = 0; i < sizeof(potion_chars); i++)
	{
		if (letter == weapon_chars[i])
		{
			return WEAPON;
		}
	}
	for (size_t i = 0; i < sizeof(potion_chars); i++)
	{
		if (letter == potion_chars[i])
		{
			return POTION;
		}
	}
	return BLANK;
}

int InventoryManager::GetInventoryHeadingLocation(string s, UserInterfaceManager& ui)
{
	for (size_t i = 0; i < ui.inventory.size(); i++)
	{
		string s = ui.inventory.at(i);
		if ((strstr(s.c_str(), s.c_str())))
		{
			return i;
		}
	}
}

string InventoryManager::AddSpaceAndEnding(string input, UserInterfaceManager& ui)
{
	int inventory_length = ui.inventory.at(1).length();
	int input_length = input.length();
	int length_to_add = inventory_length - input_length;

	for (int i = 0; i < length_to_add; i++)
	{
		input.push_back(' ');
	}
	char x = '\xBA';
	input.at(inventory_length - 1) = x;
	return input;
}

bool InventoryManager::InsertIntoInventoryManager(ITEM_TYPE item, char nextMove, Player& p, UserInterfaceManager& ui)
{
	switch (item)
	{
	case WEAPON: break;
	case POTION: if (nextMove == c_health_potion)
		{
			if (potion_inventory.size() != 0)
			{
				for (size_t i = 0; i < potion_inventory.size(); i++)
				{
					string s = potion_inventory.at(i);
					if (strstr(s.c_str(), "HEALTH"))
					{
						for (size_t i = 0; i < ui.inventory.size(); i++)
						{
							string s = ui.inventory.at(i);
							if (strstr(s.c_str(), "HEALTH"))
							{
								ui.inventory.at(i) = "| HEALTH " + to_string(p.health_potions);
								ui.inventory.at(i) = AddSpaceAndEnding(ui.inventory.at(i), ui);
								return true;
							}
						}
					}
				}
			}
			potion_inventory.push_back("|  HEALTH 1");
			return false;
		}
		if (nextMove == c_shield_potion)
		{
			if (potion_inventory.size() != 0)
			{
				for (size_t i = 0; i < potion_inventory.size(); i++)
				{
					string s = potion_inventory.at(i);
					if (strstr(s.c_str(), "SHIELD"))
					{
						for (size_t i = 0; i < ui.inventory.size(); i++)
						{
							string s = ui.inventory.at(i);
							if (strstr(s.c_str(), "SHIELD"))
							{
								ui.inventory.at(i) = "| SHIELD " + to_string(p.shield_potions);
								ui.inventory.at(i) = AddSpaceAndEnding(ui.inventory.at(i), ui);

								return true;
							}
						}
					}
				}
			}
			potion_inventory.push_back("|  SHIELD 1");
			return false;
		}
		if (nextMove == c_magic_potion)
		{
			if (potion_inventory.size() != 0)
			{
				for (size_t i = 0; i < potion_inventory.size(); i++)
				{
					string s = potion_inventory.at(i);
					if (strstr(s.c_str(), "MAGIC"))
					{
						for (size_t i = 0; i < ui.inventory.size(); i++)
						{
							string s = ui.inventory.at(i);
							if (strstr(s.c_str(), "MAGIC"))
							{
								ui.inventory.at(i) = "| MAGIC " + to_string(p.magic_potions);
								ui.inventory.at(i) = AddSpaceAndEnding(ui.inventory.at(i), ui);

								return true;
							}
						}
					}
				}
			}
			potion_inventory.push_back("|  MAGIC 1");
			return false;
		}
		break;
	case BLANK: break;
	}
}

void InventoryManager::RemoveFromInventoryManager(ITEM_TYPE item, char nextMove, Player& p, UserInterfaceManager& ui)
{
	switch (item)
	{
	case WEAPON: break;
	case POTION: if (nextMove == c_health_potion)
		{
			if (potion_inventory.size() != 0)
			{
				for (size_t i = 0; i < potion_inventory.size(); i++)
				{
					string s = potion_inventory.at(i);
					if (strstr(s.c_str(), "HEALTH"))
					{
						for (size_t i = 0; i < ui.inventory.size(); i++)
						{
							string s = ui.inventory.at(i);
							if (strstr(s.c_str(), "HEALTH"))
							{
								ui.inventory.at(i) = "| HEALTH " + to_string(p.health_potions);
								ui.inventory.at(i) = AddSpaceAndEnding(ui.inventory.at(i), ui);
							}
						}
					}
				}
			}
			potion_inventory.push_back("|  HEALTH 1");
		}
		if (nextMove == c_shield_potion)
		{
			if (potion_inventory.size() != 0)
			{
				for (size_t i = 0; i < potion_inventory.size(); i++)
				{
					string s = potion_inventory.at(i);
					if (strstr(s.c_str(), "SHIELD"))
					{
						for (size_t i = 0; i < ui.inventory.size(); i++)
						{
							string s = ui.inventory.at(i);
							if (strstr(s.c_str(), "SHIELD"))
							{
								ui.inventory.at(i) = "| SHIELD " + to_string(p.shield_potions);
								ui.inventory.at(i) = AddSpaceAndEnding(ui.inventory.at(i), ui);
							}
						}
					}
				}
			}
			potion_inventory.push_back("|  SHIELD 1");
		}
		if (nextMove == c_magic_potion)
		{
			if (potion_inventory.size() != 0)
			{
				for (size_t i = 0; i < potion_inventory.size(); i++)
				{
					string s = potion_inventory.at(i);
					if (strstr(s.c_str(), "MAGIC"))
					{
						for (size_t i = 0; i < ui.inventory.size(); i++)
						{
							string s = ui.inventory.at(i);
							if (strstr(s.c_str(), "MAGIC"))
							{
								ui.inventory.at(i) = "| MAGIC " + to_string(p.shield_potions);
								ui.inventory.at(i) = AddSpaceAndEnding(ui.inventory.at(i), ui);
							}
						}
					}
				}
			}
			potion_inventory.push_back("|  MAGIC 1");
		}
		break;
	case BLANK: break;
	}
}

void InventoryManager::UpdateInventory(InventoryManager& i, UserInterfaceManager& ui)
{
	string selection = i.CurrentInventoryIndex(i);
	string selection_print = "|  " + selection;
	selection_print = AddSpaceAndEnding(selection_print, ui);
	ui.inventory.at(ui.inventory.size() - 2) = selection_print;
}

string InventoryManager::CurrentInventoryIndex(InventoryManager& i)
{
	// RETURNS THE CURRENTLY SELECTED INVENTORY INDEX
	string output;
	switch (i.inventory_index)
	{
	case 1: output = "CURRENT SELECTION IS THE HEALTH POTION";
		break;
	case 2: output = "CURRENT SELECTION IS THE SHIELD POTION";
		break;
	case 3: output = "CURRENT SELECTION IS THE MAGIC POTION";
		break;
	}
	return output;
}
