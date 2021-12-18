#include "Enemy.h"
#include <fstream>
#include <iostream>
#include "Macro.h"

void Enemy::PrintDetails(MapManager& m)
{
	string name = "ENGAGED WITH " + GetName();
	Macro::GoToScreenPosition(45, m.height + 3);
	std::cout << name;

	Macro::GoToScreenPosition(45, m.height + 5);
	string health = "THEY HAVE A HEALTH OF " + std::to_string(GetHealth());
	std::cout << health;

	Macro::GoToScreenPosition(45, m.height + 7);
	string damage = "THEY POSSES A STRENGTH OF " + std::to_string(GetDamage());
	std::cout << damage;
}

void Enemy::SetNamesArray()
{
	int array_size = 20;
	int index = 0;
	string current_line;
	ifstream myfile("NPC_EnemyNames.txt");
	if (myfile.is_open())
	{
		while (!myfile.eof())
		{
			getline(myfile, current_line);
			name_array[index] = current_line;
			index++;
		}
		myfile.close();
	}
}

void Enemy::SetPassive()
{
	passive = false;
}

Enemy::Enemy(int x, int y)
{
	Enemy::SetPassive();
	Enemy::SetNamesArray();
	SetPosition(x, y);
	SetHealth();
	SetSpeed();
	SetStrength();
	SetName();
}
