#pragma once
#include "InventoryManager.h"
#include "ConsoleWindowManager.h"
#include "UserInterfaceManger.h"
#include "Enemy.h"
#include "GenericFriendly.h"
#include "CombatManager.h"

class CombatManager;
class UserInterfaceManager;
class ConsoleWindowManager;
class ConsoleRendering;
class MapManager;
class InventoryManager;
class Enemy;
class GenericFriendly;
class CombatManager;

class Player
{
public:
	// POSITION
	int player_position_x = 20;
	int player_position_y = 10;
	int player_position_x_new = player_position_x;
	int player_position_y_new = player_position_y;

	// STATS
	bool end_game;
	bool in_combat = false;

	int damage = 10;
	int shield = 5;
	int health = 50;
	int magic = 9;
	int max_stats = 10;
	int health_potions = 0, shield_potions = 0, magic_potions = 0;
	int max_potions = 10;

	int GetDamage();
	int GetHealth();
	void SetDesiredHealth(int value);
	void RenderPlayer(MapManager& m, ConsoleWindowManager& c, InventoryManager& i);
	void PlayerCollisions(MapManager& m, ConsoleWindowManager& c, Player& p, InventoryManager& i, UserInterfaceManager& ui);
	void PlayerInput(InventoryManager& i, ConsoleWindowManager& c, MapManager& m, Player& p, ConsoleRendering& r, UserInterfaceManager& ui, CombatManager& cm);

private:
	// PLAYER
	const char c_player = 'P';

	// COMBAT
	bool waiting_to_start_combat = false;
	bool waiting_for_choice = false;

	// PLAYER
	int PlayerCollisionsChecks(int item, int item_max, MapManager& m, Player& p);
	bool BlankPosition(MapManager& m, Player& p);

	void EnterCombatMode(MapManager& m, Enemy& e);
	void EnterMessageMode(MapManager& m, GenericFriendly& f);
};
