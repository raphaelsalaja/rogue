#pragma once
#include "NonPlayableCharacter.h"
#include "MapManager.h"

class Enemy : public NonPlayableCharacter
{
public:
	Enemy(int x, int y);
	void PrintDetails(MapManager& m);
private:
	void SetNamesArray() override;
	void SetPassive() override;
};
