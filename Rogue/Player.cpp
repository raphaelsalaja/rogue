#include <iostream>
#include "Player.h"

#include "MapManager.h"
#include "ConsoleWindowManager.h"
#include "Macro.h"
using namespace Macro;
using namespace std;

void Player::RenderPlayer(MapManager& m, ConsoleWindowManager& c, InventoryManager& i)
{
	if (!i.inventory_open)
	{
		// BLANKS THE PLAYER'S OLD POSITION
		GoToScreenPosition(player_position_x, player_position_y);
		switch (m.new_map[player_position_y * m.width + player_position_x])
		{
		case '=': c.SetConsoleWindowColor(ConsoleWindowManager::LIGHT_BLUE, ConsoleWindowManager::MAGENTA);
			cout << '\xB0';

			break;

		default: c.SetConsoleWindowColor(ConsoleWindowManager::LIGHT_BLUE, ConsoleWindowManager::BLACK);
			cout << '\xFA';
		}

		// DRAWS THE PLAYER'S OLD POSITION
		GoToScreenPosition(player_position_x_new, player_position_y_new);
		std::cout << c_player;

		player_position_x = player_position_x_new;
		player_position_y = player_position_y_new;

		Sleep(60);

		c.SetConsoleWindowColor(ConsoleWindowManager::LIGHT_BLUE, ConsoleWindowManager::BLACK);
	}
}

int Player::PlayerCollisionsChecks(int item, int item_max, MapManager& m, Player& p)
{
	bool cleared = false;
	if (item != item_max)
	{
		cleared = BlankPosition(m, p);
		if (cleared)
		{
			item++;
		}
		cleared = false;
	}
	else
	{
		p.player_position_x_new = p.player_position_x;
		p.player_position_y_new = p.player_position_y;
	}
	return item;
}

void Player::PlayerCollisions(MapManager& m, ConsoleWindowManager& c, Player& p, InventoryManager& i, UserInterfaceManager& ui)
{
	const char c_wall = '#';
	const char c_wall_1 = '-';
	const char c_wall_2 = '|';
	const char c_wall_3 = '.';
	const char c_level_portal = '[';
	char health_c = i.c_health;
	char shield_c = i.c_shield;
	char health_p = i.c_health_potion;
	char shield_p = i.c_shield_potion;
	char magic_p = i.c_magic_potion;

	auto inventory_table_iterator = ui.inventory.begin();
	string inventory_headings[4]{
		"W E A P O N S",
		"P O T I O N S",
		"A R M O U R",
		"T R I N K E T S"
	};
	char nextMove = m.new_map[player_position_y_new * m.width + player_position_x_new];
	string f = m.file_contents_read_in;

	switch (nextMove)
	{
	case c_wall:
	case c_wall_1:
	case c_wall_2:
	case c_wall_3: p.player_position_x_new = p.player_position_x;
		p.player_position_y_new = p.player_position_y;
		break;
	case 'h': health = PlayerCollisionsChecks(health, max_stats, m, p);
		break;
	case 's': shield = PlayerCollisionsChecks(shield, max_stats, m, p);
		break;
	case 'H': health_potions = PlayerCollisionsChecks(health_potions, max_potions, m, p);
	case 'S': shield_potions = PlayerCollisionsChecks(shield_potions, max_potions, m, p);
		break;
	case 'M': magic_potions = PlayerCollisionsChecks(magic_potions, max_potions, m, p);
		break;
	case 'N': // PRINT MESSAGE
		EnterMessageMode(m, m.generic_friendlies.at(m.FindFriendly(p)));
		BlankPosition(m, p);
		break;
	case 'E': // ENTER COMBAT MODE
		EnterCombatMode(m, m.enemies.at(m.FindEnemy(p)));
		BlankPosition(m, p);
		break;
	case c_level_portal:
	{
		m.LoadNextMap(m, c, p, i);
	}
	break;
	}
	string item_picked_up;
	InventoryManager::ITEM_TYPE type = i.WhatIsItem(nextMove);
	switch (type)
	{
	case InventoryManager::WEAPON: ui.inventory.insert(inventory_table_iterator, "TEST");
		break;
	case InventoryManager::POTION: int index = i.GetInventoryHeadingLocation(inventory_headings[1], ui);
		advance(inventory_table_iterator, index + 1);
		if (i.InsertIntoInventoryManager(type, nextMove, p, ui))
		{
		}
		else
		{
			ui.inventory.insert(inventory_table_iterator, i.potion_inventory.at(i.potion_inventory.size() - 1));
		}
		break;
	}
}

void Player::EnterCombatMode(MapManager& m, Enemy& e)
{
	e.PrintDetails(m);
	GoToScreenPosition(45, m.height + 7);
	Sleep(2500);
	waiting_to_start_combat = true;
}

void Player::EnterMessageMode(MapManager& m, GenericFriendly& f)
{
	waiting_for_choice = true;
	while (waiting_for_choice)
	{
		f.PrintMessage(m);
		GoToScreenPosition(45, m.height + 7);
		if (GetKeyState('1') & 0x8000)
		{
			health++;
			waiting_for_choice = false;
			Sleep(60);
		}
		if (GetKeyState('2') & 0x8000)
		{
			shield++;
			waiting_for_choice = false;
			Sleep(60);
		}
		if (GetKeyState('3') & 0x8000)
		{
			magic++;
			waiting_for_choice = false;
			Sleep(60);
		}
	}
}

void Player::SetDesiredHealth(int value)
{
	health = value;
}

void Player::PlayerInput(InventoryManager& i, ConsoleWindowManager& c, MapManager& m, Player& p, ConsoleRendering& r, UserInterfaceManager& ui, CombatManager& cm)
{
	player_position_x_new = player_position_x;
	player_position_y_new = player_position_y;
	if (i.inventory_open)
	{
		if (GetKeyState(VK_RIGHT) & 0x8000)
		{
			i.InventoryControl('n', r, i, c, m, ui);
			Sleep(60);
		}
		if (GetKeyState(VK_LEFT) & 0x8000)
		{
			i.InventoryControl('b', r, i, c, m, ui);
			Sleep(60);
		}
		if (GetKeyState(VK_BACK) & 0x8000)
		{
			i.DropItemSelected(i.inventory_index, p, c, m, i, r, ui);
		}
		if (GetKeyState(VK_RETURN) & 0x8000)
		{
			i.UsePotionSelected(i.inventory_index, p, c, m, i, r, ui);
		}
	}
	else if (waiting_to_start_combat)
	{
		in_combat = true;
		waiting_to_start_combat = false;
	}
	else if (in_combat)
	{
		while (in_combat)
		{
			cm.Fight(p, m, m.enemies.at(m.FindEnemy(p)));
		}
	}
	else
	{
		if (GetKeyState(VK_UP) & 0x8000)
		{
			player_position_y_new = player_position_y - 1;
		}

		if (GetKeyState(VK_DOWN) & 0x8000)
		{
			player_position_y_new = player_position_y + 1;
		}

		if (GetKeyState(VK_RIGHT) & 0x8000)
		{
			player_position_x_new = player_position_x + 1;
		}

		if (GetKeyState(VK_LEFT) & 0x8000)
		{
			player_position_x_new = player_position_x - 1;
		}
	}
}

bool Player::BlankPosition(MapManager& m, Player& p)
{
	m.new_map[p.player_position_y_new * m.width + p.player_position_x_new] = '*';
	return true;
}

int Player::GetDamage()
{
	return damage;
}

int Player::GetHealth()
{
	return health;
}