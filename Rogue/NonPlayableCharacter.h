#pragma once
#include <string>
using namespace std;

class NonPlayableCharacter
{
public:
	NonPlayableCharacter();
	~NonPlayableCharacter() = default;

	virtual void SetNamesArray();
	virtual void SetPassive();

	void SetName();
	void SetStrength();
	void SetHealth();
	void SetSpeed();
	void SetSymbol();
	void SetPosition(int x, int y);

	void SetDesiredHealth(int value);

	string GetName();
	int GetHealth();
	int GetDamage();
	int GetX();
	int GetY();

	void CreateNonPlayableCharacter();

	bool passive;
	string name;
	string name_array[20];
	unsigned int strength;

private:
	enum NPC_TYPE
	{
		ENEMY = 'E',
		GENERIC_FRIENDLY = 'N'
	};

	char symbol;

	unsigned int health;
	unsigned int attack_speed;

	unsigned int npc_x;
	unsigned int npc_y;
};
