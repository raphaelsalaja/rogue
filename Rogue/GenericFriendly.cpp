#include "GenericFriendly.h"

#include <iostream>

#include "Macro.h"

string GenericFriendly::GetMessage()
{
	return message;
}

void GenericFriendly::SetNamesArray()
{
	int array_size = 20;
	int index = 0;
	string current_line;
	ifstream myfile("NPC_PassiveNames.txt");
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

void GenericFriendly::SetMessages()
{
	int array_size = 20;
	int index = 0;
	string current_line;
	ifstream myfile("NPC_Messages.txt");
	if (myfile.is_open())
	{
		while (!myfile.eof())
		{
			getline(myfile, current_line);
			messages_array[index] = current_line;
			index++;
		}
		myfile.close();
	}
}

void GenericFriendly::SetPassive()
{
	passive = true;
}

GenericFriendly::GenericFriendly(int position)
{
	GenericFriendly::SetPassive();
	GenericFriendly::SetNamesArray();

	SetPosition(position, position);

	SetMessages();
	SetRandomMessage();
}

void GenericFriendly::SetRandomMessage()
{
	message = messages_array[Macro::GenerateRandomNumber(messages_array->length() - 2)];
}

void GenericFriendly::PrintMessage(MapManager& m)
{
	Macro::GoToScreenPosition(45, m.height + 3);

	std::cout << message;
	Macro::GoToScreenPosition(45, m.height + 6);

	std::cout << "1:HEALTH 2:SHIELD 3:MAGIC";
}