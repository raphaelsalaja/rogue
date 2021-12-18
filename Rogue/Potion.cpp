
#include <string>
#include <ctime>
#include <cstdlib>
#include "Potion.h"
using namespace std;

Potion::Potion()
{
	CreateNewPotion();
}

Potion::~Potion()
{
}

unsigned int Potion::GenerateRandomNumber(int max) {
	srand(time(0));
	return rand() % max;
}

Potion::POTION_TYPE Potion::SetPotionType(int potion_choice)
{
	switch (potion_choice)
	{
	case 0:
		return Potion::POTION_TYPE::HEALTH;
	
	case 1:
		return Potion::POTION_TYPE::MAGIC;
	
	case 2:
		return Potion::POTION_TYPE::SHIELD;
		
	default:
		return Potion::POTION_TYPE::HEALTH;
	
	}
}

string Potion::SetPotionName(int potion_name_index, POTION_TYPE POTION_TYPE_SELECTED)
{
	string name;
	switch (POTION_TYPE_SELECTED)
	{
	case Potion::POTION_TYPE::HEALTH:
		name = POTION_NAME_CHOICES[0][potion_name_index];
		break;
	case Potion::POTION_TYPE::SHIELD:
		name = POTION_NAME_CHOICES[1][potion_name_index];
		break;
	case Potion::POTION_TYPE::MAGIC:
		name = POTION_NAME_CHOICES[2][potion_name_index];
		break;
	}
	return name;
}

int Potion::SetStrength(string name) {
	if ((strstr(name.c_str(), "Minor")))
	{
		return 1;
	}
	if ((strstr(name.c_str(), "Small")))
	{
		return 2;
	}
	if ((strstr(name.c_str(), "Plentiful")))
	{
		return 3;
	}
	if ((strstr(name.c_str(), "Vigorous")))
	{
		return 4;
	}
	if ((strstr(name.c_str(), "Extreme")))
	{
		return 5;
	}
	if ((strstr(name.c_str(), "Ultimate")))
	{
		return 6;
	}
	return 0;
}

void Potion::CreateNewPotion()
{
	int potion_choice = GenerateRandomNumber(2);
	int potion_name_index = GenerateRandomNumber(5);

	POTION_TYPE_SELECTED = SetPotionType(potion_choice);
	name = SetPotionName(potion_name_index, POTION_TYPE_SELECTED);
	strength = SetStrength(name);
	weight = SetStrength(name);
}