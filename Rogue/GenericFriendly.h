#pragma once
#include "NonPlayableCharacter.h"
#include <fstream>
#include "MapManager.h"

class MapManager;

class GenericFriendly : public NonPlayableCharacter
{
public:
	GenericFriendly(int postition);
	string messages_array[20]{};
	string message;
	void PrintMessage(MapManager& m);

	string GetMessage();
private:
	void SetNamesArray() override;
	void SetPassive() override;
	void SetMessages();
	void SetRandomMessage();
};
