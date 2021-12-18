#pragma once
#include <string>

using namespace std;

class Weapon
{
public:
	string WEAPON_NAME_CHOICES[20]{
		"Might of Fallen Souls",
		"Hope of Carnage",
		"Soldier's Tunic of Cataclysms",
		"Silent Armor of the Wicked",
		"Stormguard Demon Greatplate",
		"Vindication Scaled Armor",
		"Ivory Chestpiece of Smoldering Fortunes",
		"Bronze Breastplate of Imminent Vengeance",
		"Batteplate of Hallowed Dreams",
		"Chestplate of Infernal Punishment",
		"Edge of Discipline",
		"Scales of the Breaking Storm",
		"Retribution Greatplate of the Wicked",
		"Battleworn Vest of the Daywalker",
		"Thunderguard Titanium Chestpiece",
		"Vengeance Golden Chestplate",
		"Obsidian Cuirass of Hallowed Freedom",
		"Iron Tunic of Blessed Kings",
		"Vest of Blessed Memories",
		"Chestguard of Fleeting Might"
	};

	string name;
	int strength, weight;

	enum WEAPON_TYPE
	{
		SWORD,
		SHIELD,
		ARMOUR
	};

	WEAPON_TYPE WEAPON_TYPE_SELECTED = SWORD;

	Weapon();
	~Weapon();

	unsigned int GenerateRandomNumber(int max);
	WEAPON_TYPE SetWeaponType(int weapon_choice);
	string SetWeaponName(int weapon_name_index, WEAPON_TYPE WEAPON_TYPE_SELECTED);
	int SetStrength(string name);
	void CreateNewWeapon();

private:
	const char SYMBOL = 'W';
};
