#include <iostream>
#include <fstream>
#include "MapManager.h"

#include "Macro.h"

using namespace std;
using namespace Macro;

void MapManager::PrintMap(ConsoleWindowManager& c)
{
	for (int i = 0; i < width; i++)
	{
		for (int j = 0; j < height; j++)
		{
			char next_char = new_map[i * height + j];
			switch (next_char)
			{
			case '-':
			case '|': c.SetConsoleWindowColor(ConsoleWindowManager::LIGHT_BLUE, ConsoleWindowManager::BLACK);
				cout << '\xB1';
				break;
			case '#': c.SetConsoleWindowColor(ConsoleWindowManager::DARK_BLUE, ConsoleWindowManager::BLACK);
				cout << '\xB2';
				break;
			case '.': c.SetConsoleWindowColor(ConsoleWindowManager::BLACK, ConsoleWindowManager::MAGENTA);
				cout << ' ';
				break;
			case '*': c.SetConsoleWindowColor(ConsoleWindowManager::LIGHT_BLUE, ConsoleWindowManager::BLACK);
				cout << '\xFA';
				break;
			case '=': c.SetConsoleWindowColor(ConsoleWindowManager::LIGHT_BLUE, ConsoleWindowManager::MAGENTA);
				cout << '\xB0';
				break;
			case '1': c.SetConsoleWindowColor(ConsoleWindowManager::BLUE, ConsoleWindowManager::BLACK);
				cout << '\xDB';
				break;
			case ' ': c.SetConsoleWindowColor(ConsoleWindowManager::CYAN, ConsoleWindowManager::MAGENTA);
				cout << new_map[i * height + j];
				break;
			case '[': c.SetConsoleWindowColor(ConsoleWindowManager::YELLOW, ConsoleWindowManager::BLACK);
				cout << '\xAF';
				break;
			case 'N': c.SetConsoleWindowColor(ConsoleWindowManager::GREEN, ConsoleWindowManager::BLACK);
				generic_friendlies.emplace_back(GenericFriendly(i * height + j));
				cout << '\xBE';
				break;
			case 'E': c.SetConsoleWindowColor(ConsoleWindowManager::RED, ConsoleWindowManager::BLACK);
				enemies.emplace_back(Enemy(i * height + j, i * height + j));
				cout << '\xF5';
				break;
			default: c.SetConsoleWindowColor(ConsoleWindowManager::LIGHT_BLUE, ConsoleWindowManager::BLACK);
				cout << new_map[i * height + j];
				break;
			}
		}
	}
	c.SetConsoleWindowColor(ConsoleWindowManager::LIGHT_BLUE, ConsoleWindowManager::BLACK);
}

void MapManager::LoadMap(string input)
{
	for (int i = 0; i < width; i++)
	{
		for (int j = 0; j < height; j++)
		{
			new_map[i * height + j] = input.at(i * height + j);
		}
	}
}

void MapManager::LoadNextMap(MapManager& m, ConsoleWindowManager& c, Player& p, InventoryManager& i)
{
	if (level_index != 7)
	{
		level_index++;

		loading_next_map = true;
		while (loading_next_map)
		{
			c.BlankScreen();

			p.player_position_x_new = 20;
			p.player_position_y_new = 10;

			p.RenderPlayer(m, c, i);
			has_rendered_map = false;
			RenderMap(c);
			loading_next_map = false;
		}
	}
	else
	{
		while (true)
		{
			p.in_combat = true;
			GoToScreenPosition(45, m.height + 3);
			cout << "CONGRATULATIONS, YOU WON :)";
		}
	}
}

bool MapManager::IsEmpty(int x, int y)
{
	if (new_map[y * width + x] == '.')
	{
		return true;
	}
	return false;
}

void MapManager::ReadMap()
{
	string file_line_string;
	bool width_retrieved = false;
	ifstream file(file_name_start + to_string(level_index) + file_name_end);

	width = 0;
	height = 0;
	file_contents_read_in = "";

	while (getline(file, file_line_string))
	{
		file_contents_read_in += file_line_string;
		file_contents_read_in.push_back('\n');
		char current_char = file_contents_read_in.at(file_contents_read_in.length() - 1);
		if (current_char == '\n')
		{
			if (width_retrieved == false)
			{
				width = file_contents_read_in.length();
				width_retrieved = true;
			}
			height++;
		}
	}

	new_map = new char[width * height];
}

void MapManager::RenderMap(ConsoleWindowManager& c)
{
	if (has_rendered_map)
	{
		PrintMap(c);
	}
	else
	{
		c.BlankScreen();
		ReadMap();
		LoadMap(file_contents_read_in);
		PrintMap(c);
		has_rendered_map = true;
	}
}

void MapManager::RefreshMap(ConsoleWindowManager& c)
{
	GoToScreenPosition(0, 0);
	PrintMap(c);
}

int MapManager::FindEnemy(Player& p)
{
	int player_pos = p.player_position_y_new * width + p.player_position_x_new;

	int enemy_pos;
	// LOOP THOUGH VECTOR AND MATCH

	bool matching;

	for (int i = 0; i < enemies.size() - 1; i++)
	{
		enemy_pos = enemies.at(i).GetX();
		matching = enemy_pos == player_pos;
		if (matching)
		{
			return i;
		}
	}
}

int MapManager::FindFriendly(Player& p)
{
	int player_pos = p.player_position_y_new * width + p.player_position_x_new;

	int friendly_pos;
	// LOOP THOUGH VECTOR AND MATCH

	bool matching;

	for (int i = 0; i < generic_friendlies.size() - 1; i++)
	{
		friendly_pos = generic_friendlies.at(i).GetX();
		matching = friendly_pos == player_pos;
		if (matching)
		{
			return i;
		}
	}
}
