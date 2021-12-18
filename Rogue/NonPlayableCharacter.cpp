#include "NonPlayableCharacter.h"
#include "Macro.h"
#include <fstream>
#include <cmath>
using namespace std;

NonPlayableCharacter::NonPlayableCharacter()
{
	name = "";
	strength = 0;
	health = 0;
	attack_speed = 0;
	symbol = ' ';
	passive = false;
	npc_x = 0;
	npc_y = 0;
}

void NonPlayableCharacter::SetNamesArray()
{
}

void NonPlayableCharacter::CreateNonPlayableCharacter()
{
	SetNamesArray();
	SetName();
	SetPassive();
	SetSymbol();
	if (!passive)
	{
		SetHealth();
		SetSpeed();
		SetStrength();
	}
}

void NonPlayableCharacter::SetName()
{
	name = name_array[Macro::GenerateRandomNumber(name_array->length() - 2)];
}

void NonPlayableCharacter::SetStrength()
{
	strength = Macro::GenerateRandomNumberWithoutZero(10);
}

void NonPlayableCharacter::SetHealth()
{
	health = Macro::GenerateRandomNumberWithoutZero(10);
}

void NonPlayableCharacter::SetPassive()
{
}

void NonPlayableCharacter::SetSpeed()
{
	attack_speed = Macro::GenerateRandomNumberWithoutZero(5);
}

void NonPlayableCharacter::SetSymbol()
{
	switch (passive)
	{
	case true: symbol = GENERIC_FRIENDLY;
		break;
	case false: symbol = ENEMY;
		break;
	}
}

void NonPlayableCharacter::SetPosition(int x, int y)
{
	npc_x = x;
	npc_y = y;
}

void NonPlayableCharacter::SetDesiredHealth(int value)
{
	health = value;
}

string NonPlayableCharacter::GetName()
{
	return name;
}

int NonPlayableCharacter::GetHealth()
{
	return health;
}

int NonPlayableCharacter::GetDamage()
{
	return strength;
}

int NonPlayableCharacter::GetX()
{
	return npc_x;
}

int NonPlayableCharacter::GetY()
{
	return npc_y;
}