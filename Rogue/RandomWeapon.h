#pragma once
#include "RandomItemGenerator.h"

class RandomWeapon : public RandomItemGenerator
{
public:
	RandomWeapon();
	~RandomWeapon();

	void SetType(int choice) override;
	void SetItemNames(string file_name) override;
	void GenerateRandomWeapon();

	char symbol = 'W';

	string weapon_types[5]{
		"SWORD",
		"DUAL SWORD",
		"SPEAR",
		"GREAT SWORD",
		"KNIFE"
	};
};
