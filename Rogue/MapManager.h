#pragma once
#include <string>

#include "Player.h"
#include "ConsoleWindowManager.h"
#include "GenericFriendly.h"

class InventoryManager;
class Enemy;
class Player;
class ConsoleWindowManager;
using namespace std;

class MapManager
{
public:
	unsigned int level_index = 1;
	unsigned int width = 0;
	unsigned int height = 0;

	vector<GenericFriendly> generic_friendlies;
	vector<Enemy> enemies;

	char* new_map = nullptr;
	bool has_rendered_map = false;
	bool loading_next_map = false;

	string file_name_start = "MAP_";
	string file_name_end = ".txt";
	string file_contents_read_in;

	void LoadNextMap(MapManager& m, ConsoleWindowManager& c, Player& p, InventoryManager& i);
	void RenderMap(ConsoleWindowManager& c);
	bool IsEmpty(int x, int y);
	void LoadMap(string input);

	int FindEnemy(Player& p);
	int FindFriendly(Player& p);

private:
	void ReadMap();
	void PrintMap(ConsoleWindowManager& c);
	void RefreshMap(ConsoleWindowManager& c);
};
