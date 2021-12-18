#pragma once
#include <string>

using namespace std;

class Potion
{
public:
	string POTION_NAME_CHOICES[3][6]{
		{
			"Potion of Minor Healing",
			"Potion of Small Healing",
			"Potion of Plentiful Healing",
			"Potion of Vigorous Healing",
			"Potion of Extreme Healing",
			"Potion of Ultimate Healing"
		},
		{
			"Potion of Minor Magicka",
			"Potion of Small Magicka",
			"Potion of Plentiful Magicka",
			"Potion of Vigorous Magicka",
			"Potion of Extreme Magicka",
			"Potion of Ultimate Magicka"
		},
		{
			"Potion of Minor Magicka",
			"Potion of Small Magicka",
			"Potion of Plentiful Magicka",
			"Potion of Vigorous Magicka",
			"Potion of Extreme Magicka",
			"Potion of Ultimate Magicka"
		}
	};
	string name;
	int strength, weight;

	enum POTION_TYPE
	{
		HEALTH,
		MAGIC,
		SHIELD
	};

	POTION_TYPE POTION_TYPE_SELECTED = HEALTH;

	Potion();
	~Potion();

	unsigned int GenerateRandomNumber(int max);
	POTION_TYPE SetPotionType(int potion_choice);
	string SetPotionName(int potion_name_index, POTION_TYPE POTION_TYPE_SELECTED);
	int SetStrength(string name);
	void CreateNewPotion();

private:
	const char SYMBOL = 'P';
};
